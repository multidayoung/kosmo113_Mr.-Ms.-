import os

from django.http import HttpResponse, JsonResponse
from django.shortcuts import render
import surprise
import joblib
import pandas as pd
import json
from newSurprise.models import Reviews_ora


def test(request):
    reviews_ora = Reviews_ora()
    df = reviews_ora.reviews_select()
    df.columns = ['nickname', 'product', 'rating']
    nic = df['nickname'].value_counts()[df['nickname'].value_counts() > 1]
    mydf = df[df['nickname'].isin(nic.index.to_list())]
    # 정제한 파일을 저장
    mydf.to_csv('static/park/knn_cos.csv')
    mydf2 = pd.read_csv('static/park/knn_cos.csv')
    mydf3 = mydf2[['nickname', 'product', 'rating']]
    grouped = mydf3.groupby('nickname')
    df_to_dict = data_dict(mydf3)
    nickname_list = []
    product_set = set()
    for user_key in df_to_dict:
        # print('--------------', user_key)
        # print(user_key, ":", df_to_dict[user_key])
        nickname_list.append(user_key)
        # print('--------------------------')
        for cos_key in df_to_dict[user_key]:
            # print(user_key, ":", cos_key)
            product_set.add(cos_key)
    product_list = list(product_set)
    # nickname , product_name rating
    # 학습할 데이터 준비
    ratinig_dic = {
        'nickname': [],
        'product': [],
        'rating': []
    }
    # 닉네임, 상품 인덱스로 저장
    for name_key in df_to_dict:
        # print(name_key)
        for cos_key in df_to_dict[name_key]:
            # print('name_key =>',name_key)
            # print('cos_key =>',cos_key)
            # print('rating => ', df_to_dict[name_key][cos_key])
            # 사용자의 인덱스 번호
            ratinig_dic['nickname'].append(nickname_list.index(name_key))
            # 제품의 인덱스
            ratinig_dic['product'].append(product_list.index(cos_key))
            # 평점 데이터
            ratinig_dic['rating'].append(df_to_dict[name_key][cos_key])
    df = pd.DataFrame(ratinig_dic)
    min_productname_ratings = 3
    filter_productname = df['product'].value_counts() > min_productname_ratings
    filter_productname = filter_productname[filter_productname].index.to_list()
    reader = surprise.Reader(rating_scale=(1, 5))
    df['rating'] = pd.to_numeric(df['rating'], errors='coerce')
    df['rating'].fillna(0.0, inplace=True)
    df['rating'] = df['rating'].astype(int)
    data = surprise.Dataset.load_from_df(df[['nickname', 'product', 'rating']], reader)
    trainset = data.build_full_trainset()
    model = surprise.KNNBasic(sim_options={'name': 'pearson'})  # 피어슨 유사도 사용
    model.fit(trainset)
    # inpit_nickname = input('nickname:')
    index = nickname_list.index('sork')
    res = model.get_neighbors(index, k=5)
    cos_id = data.df[(data.df['rating'] == data.df[data.df['nickname'] == index]['rating'].max()) & (data.df['nickname'] == 1)][
        'product'].values

    datas = []
    for e in res:
        max_rating = data.df[data.df['nickname'] == e]['rating'].max()

        # res를 기준으로 max_rating data.df['rating'] 같고,
        cos_id = data.df[(data.df['rating'] == max_rating) & (data.df['nickname'] == e)]['product'].values
        # print('------------', cos_id)
        for cos_item in cos_id:
            # print('cos_id => ', cos_item, 'NicName =>', nickname_list[cos_item], '==>', product_list[cos_item])
            datas.append(product_list[cos_item])

    # for e in datas:
    #     print('what? =>', e)
    # 상품 json으로 만들기, 출력 인코딩 설정, 스프링으로 보내기
    df_product = pd.Series(datas)
    df_product.to_json('static/json/product_test.json', orient='records', force_ascii=False)
    f = open('static/json/product_test.json')
    aa = json.load(f)
    # 이제 이거를 제이슨 형태로 리턴해야 한다.
    json_callback = request.GET.get('callback')
    if json_callback is not None:
        # callback(jsonData); 응답 객체를임의로 만들어 준ㄷ./ ************]
        # aaaa('[jsondata]')
        response = HttpResponse("%s(%s);" % (json_callback, json.dumps(aa, ensure_ascii=False)))
        response["Content-Type"] = "text/javascript; charset=utf-8"
        print("jsonP")
    else:
        response = JsonResponse(aa, json_dumps_params={'ensure_ascii': False}, safe=False)
        print("json")
    return response


    # return render(request, 'newSurprise/test.html')

# 딕셔너리로 변경
def data_dict(frame):
    #     print(frame.columns)
    #     print(frame.values)
    #     print('*'*10)
    #     print(len(frame.columns) == True)
    #     print(frame.values.size)
    if len(frame.columns) == True:
        # print(frame.values[0][0])
        if frame.values.size == 1:
            # print(frame.values[0][0])
            return frame.values[0][0]
        return frame.values.squeeze()

    grouped = frame.groupby(frame.columns[0])
    # print('execute 1======================================================>')
    # print(grouped.count())

    d = {k: data_dict(g.iloc[:, 1:]) for k, g in grouped}
    # print('execute 2======================================================>')
    # print('execute',d)
    return d