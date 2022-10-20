from konlpy.tag import Okt
import pandas as pd
def tokenizer(raw,posv=['Noun','Verb']):
    okt = Okt()
    stopword = ['때문', '의', '가', '이', '은', '들', '는', '좀', '잘', '걍', '과', '도', '를', '으로', '자']
    listv =  [
        w for w , tag in okt.pos(raw,norm=True,stem=True)
        if len(w) > 1 and tag in posv and w not in stopword
    ]
    return listv

def get_recommend(animal_num,cv,consine_sim):
    indexdata = pd.Series(cv.index, index=cv['ANIMAL_NUM']).drop_duplicates()
    print(indexdata)
    print('animal_num',animal_num)
    idx = indexdata[animal_num]
    print('idx',idx)
    sim_scores = list(enumerate(consine_sim[idx]))# 나의 강아지 글과 비슷한 강아지 글을 비교하여 코사인 유사도를 리스트
    sim_scores = sorted(sim_scores, key=lambda x: x[1], reverse=True)
    sim_scores2 = []
    for i in sim_scores:
        #print(i)
        for k, j in enumerate(i):
            #print("k:",k,",j :",j) #
            if k == 0: # 0은 인덱스 번호, 1 은 코사인 유사도
                if j != idx: #인덱스 번호가 나의 인덱스 번호와 다를시에나 리스트에 인덱스 추가하여 준다.
                    #print(j,":",i)
                    sim_scores2.append(i)
    sim_scores2 = sim_scores2[:8] # 여덟개까지 추천
    animal_index = [i[0] for i in sim_scores2] #애니멀 인덱스
    #print(animal_index)
    cos_va = [j for (i, j) in sim_scores2] # 코사인 유사도
    #print(cos_va)
    # DataFrame 만들기
    res_df = cv.iloc[animal_index] # 비슷한 detail을 순서대로 한 animal_index리스트, 이것을 순서대로  dataframe을 정렬한다.
    res_df['COSINVAL'] = cos_va
    return res_df