from logging import exception

from django.db import models
from config.models import My_Ora
import numpy as np
import pandas as pd
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.metrics.pairwise import cosine_similarity
from friends_recomm.petty_job import tokenizer, get_recommend


class Friend_Recomm(My_Ora):
    def get_recomm(self, member_id):
        conn = self.get_conn()
        res_df = pd.DataFrame()
        try:
            cv = pd.read_sql_query("""select animal_num,animal_img1,animal_name, member_id, animal_detail from (
                      select rownum a_num,a.animal_num,a.animal_img1,a.animal_name,a.member_id, a.animal_detail from (
                          select animal_num, animal_name, animal_img1, member_id, animal_detail from animal 
                            where member_id in(
                            select member_id from member where member_addr = (
                            select member_addr from member
                            where member_id=:member_id) 
                            and member_id not in (select friends_userid from friends where friends_status='승인' and friends_friendid=:member_id
                        union
                        select friends_friendid from friends where friends_status='승인' and friends_userid=:member_id))
                            and cate_species= (select cate_species from animal where member_id=:member_id)
                      ) a
                  )""", params={"member_id": member_id}, con=conn)
            print(cv)
            my_pets_num = cv[cv['MEMBER_ID'] == member_id].ANIMAL_NUM.to_list()[0]
            cv['ANIMAL_DETAIL'] = cv['ANIMAL_DETAIL'].astype(str)
            # 한글 외에 문자를 제거하기
            cv['ANIMAL_DETAIL_FITTABLE'] = cv['ANIMAL_DETAIL'].str.replace("[^가-힣 ]", "")
            cv.drop_duplicates(['ANIMAL_DETAIL'], inplace=True)
            cv.reset_index(drop=True,inplace=True)
            # tokenizer란 함수로 전처리 한 후, 토큰화 된 값을 가지고 TF-IDF로 벡터화 시킨다.
            tfidf = TfidfVectorizer(tokenizer=tokenizer)
            try:
                tfidf.fit(cv['ANIMAL_DETAIL_FITTABLE'])
                tfidf_matrix = tfidf.transform(cv['ANIMAL_DETAIL_FITTABLE'])
                cosine_sim = cosine_similarity(tfidf_matrix, tfidf_matrix)
                res_df = get_recommend(my_pets_num,cv,cosine_sim)
                res_df=res_df.drop(['COSINVAL','ANIMAL_DETAIL_FITTABLE'],axis=1)
                res_df.reset_index(drop=True, inplace=True)
            except ValueError as ve:
                #print(f"아나 => {ve.__class__}")
                res_df = cv[cv['MEMBER_ID'] != member_id]

        except IndexError as ie:
            print(ie)
        return res_df