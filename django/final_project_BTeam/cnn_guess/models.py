# 모델 불러오기
# pip install tensorflow==2.9.1
from PIL import Image
import os, glob, numpy as np
import tensorflow as tf
import joblib
from tensorflow.python.keras.models import load_model, model_from_json

# model.json 파일 열기
class Cnn_Model():
    cnt = 0
    def __init__(self,img_path):
        # 객체를 여러번 불러올 필요는 없으므로 최초에 한번 만들 놓겠음
        if Cnn_Model.cnt == 0:
            json_file = open("static/saved_models/catdog_model.json", "r")
            loaded_model_json = json_file.read()
            json_file.close()
            # json파일로부터 model 로드하기
            Cnn_Model.loaded_model = model_from_json(loaded_model_json)
            # 로드한 model에 weight 로드하기
            Cnn_Model.loaded_model.load_weights("static/saved_models/model.h5")
            print("Loaded model from disk")
            Cnn_Model.loaded_model.compile(loss='binary_crossentropy', optimizer='adam', metrics=['accuracy'])
            Cnn_Model.categories = joblib.load("static/saved_models/categories.pkl")
            Cnn_Model.cnt += 1
        self.origindir = img_path

    def cnn_model(self):
        x_test = []
        img = Image.open(self.origindir)
        img = img.convert("RGB")
        img = img.resize((64, 64))
        data = np.asarray(img)
        x_test.append(data)
        X = np.array(x_test)
        X = X.astype(float) / 255
        prediction = Cnn_Model.loaded_model.predict(X)
        pp = np.argmax(prediction)
        category = Cnn_Model.categories[pp]
        return category