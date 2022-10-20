from django.db import models
import joblib
import numpy as np
from sklearn.preprocessing import StandardScaler
import pandas as pd
import pickle
def sur_user(**kwargs):
    user_json = kwargs
    listv = []
    listv.append(user_json['in_outv'])
    listv.append(user_json['j_pv'])
    listv.append(user_json['f_tv'])
    listv.append(user_json['friendy_unfamv'])
    listv.append(user_json['convent_openv'])
    listv.append(user_json['simple_artisticv'])
    round_age = round(int(user_json['agev']), -1)
    print(round_age)
    ra = [0 if int(round_age) != i else 1 for i in range(0, 110, 10)]
    listv += ra
    user = np.array(listv, dtype=np.float32)
    print(user)
    return user

def sur_dog_cat(user):
    # StandardScaler 정규화된 모델을 로드해야 한다.
    load_svc = joblib.load('static/google_spreadsheet/final_svc.pkl')
    scaler = joblib.load('static/google_spreadsheet/final_scaler2.pkl')
    train_X = pickle.load(open('static/google_spreadsheet/X_train2.pkl', 'rb'))
    test_X = pickle.load(open('static/google_spreadsheet/X_test2.pkl', 'rb'))
    scaler.transform(train_X)
    scaler.transform(test_X)
    print(user)
    mydata = scaler.transform(np.array([user]))
    dog_cat = load_svc.predict(mydata)
    return dog_cat