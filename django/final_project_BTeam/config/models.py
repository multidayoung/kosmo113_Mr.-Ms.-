import os.path
import pickle
import pandas as pd
import numpy as np
from scipy import stats
from sklearn.svm import SVC
from sklearn.preprocessing import StandardScaler
from sklearn.model_selection import train_test_split
import pickle
import joblib
from google_auth_oauthlib.flow import InstalledAppFlow
from google.auth.transport.requests import Request
from googleapiclient.discovery import build
import cx_Oracle as ora


class Google_To_Train():
    def gsheet_api_check(self, SCOPES):
        creds = None
        if os.path.exists('token.pickle'):
            with open('token.pickle', 'rb') as token:
                creds = pickle.load(token)
        if not creds or not creds.valid:
            if creds and creds.expired and creds.refresh_token:
                creds.refresh(Request())
            else:
                flow = InstalledAppFlow.from_client_secrets_file(
                    'google_spreadsheet/credentials.json', SCOPES)
                creds = flow.run_local_server(port=0)
            with open('token.pickle', 'wb') as token:
                pickle.dump(creds, token)
        return creds

    def pull_sheet_data(self, SCOPES, SPREADSHEET_ID, DATA_TO_PULL):
        creds = self.gsheet_api_check()
        service = build('sheets', 'v4', credentials=creds)
        sheet = service.spreadsheets()
        result = sheet.values().get(
            spreadsheetId=SPREADSHEET_ID,
            range=DATA_TO_PULL).execute()
        values = result.get('values', [])
        if not values:
            print('No data found.')
        else:
            rows = sheet.values().get(spreadsheetId=SPREADSHEET_ID,
                                      range=DATA_TO_PULL).execute()
            data = rows.get('values')
            print("COMPLETE: Data copied")
            return data

    def normal_age(self, survey_res):
        ages = survey_res[survey_res['age'].str.match(pat='(?!.*[^0-9]+)')].loc[:, 'age']
        ages = pd.to_numeric(ages, errors='coerce')
        ages = ages[np.logical_and(ages > 0, ages < 100)]
        age_mean = ages.mean()
        # 평균값을 구했으니 이제 숫자 말고 다른 거는 평균 값으로 대체한다.
        survey_res[survey_res['age'].str.match(pat='(.*[^0-9]+)')].loc[:, "age"] = age_mean
        # 값비교를 위해 수치형으로 전환
        survey_res['age'] = pd.to_numeric(survey_res['age'], errors='coerce')
        # 0이하, 100 이상인 값들은 평균 값으로 대체한다.
        # ageSeries['age'] = ageSeries['age'].where(ageSeries['age'] > 0 and ageSeries['age'] < 100, age_mean)
        survey_res['age'] = survey_res['age'].where((survey_res['age'] > 0) & (survey_res['age'] < 100), age_mean)
        # 반올림
        survey_res['age'] = survey_res['age'].round(-1)
        return survey_res

    def build_sheet_url(self, doc_id, sheet_id):
        return f'https://docs.google.com/spreadsheets/d/{doc_id}/export?format=csv&gid={sheet_id}'

    def write_df_to_local(self, df, file_path):
        df.to_csv(file_path)

    def saving_model(self):
        # https://docs.google.com/spreadsheets/d/1jgvNfOL0K-8XD8DUsZJ7qpLB68FIBmN85wRSORiDdcg/edit#gid=824374701
        doc_id = '1jgvNfOL0K-8XD8DUsZJ7qpLB68FIBmN85wRSORiDdcg'
        sheet_id = '824374701'
        sheet_url = self.build_sheet_url(doc_id, sheet_id)
        survey_res = pd.read_csv(sheet_url).iloc[:, 1:]
        file_path = 'test.csv'
        self.write_df_to_local(survey_res, file_path)
        # 6. 파라미터 처리(파생 파라미터 포함)
        # 컬럼 이름 짧은 걸로 주기
        survey_res.columns=['in_out','j_p','f_t','indep_obey','friendy_unfam','convent_open','simple_artistic','s_n','anxiety','pet_kind','gender','age']
        # 설문조사 선택지 바귄 것으로 통일하기
        survey_res['convent_open'] = survey_res['convent_open'].replace(value="겉으로는 아무렇지 않은 척 해도 솔직히 받아들이기 어렵습니다...", to_replace="무엇이 유행을 하던 저는 하던대로 하면 됩니다. 유행을 받아들이는 속도 또한 느립니다.")
        survey_res['convent_open'] = survey_res['convent_open'].replace(value="그럴 수도 있죠! 쿨하게 받아들입니다.", to_replace=["오! 새로운 것은 시도해보는 성격입니다!","그럴 수도 있죠! 그 사람의 입장도 이해해보려 노력합니다.",'그럴 수도 있죠! 그 사람의 입장도 이해하려 노력해봅니다.'])
        survey_res = survey_res.dropna(subset=['pet_kind'], how='any',axis=0)
        survey_res = self.normal_age(survey_res)
        print(survey_res)
        # 11. 중복 데이터의 표현및 처리
        # 응답들을 컴퓨터가 보기 쉽게 0,1로 바꿀 것이다.

        df_width = survey_res.shape[1]
        print(df_width)
        # 나이대를 제외하고 모든 결과들을 정규화하기 위한 과정(컬럼이 너무 길어질 것을 대비)
        for i in range(df_width-1): # 맨뒤 컬럼인 age를 제외하고는
            test = survey_res.iloc[:,i]
            print(type(test))
            # 중복처리
            test1 = list(test.drop_duplicates(keep="first"))
            print(test1)
            for e in range(1):
                test2 = np.where(test == test1[e], 0, 1)
            survey_res.iloc[:,i] = test2
        # 나이 컬럼 정규화
        age0 = [0 for i in range(survey_res.shape[0])]
        survey_res['age_0.0'] = age0
        ageD = pd.get_dummies(survey_res['age'], prefix='age')
        survey_res = pd.concat([survey_res, ageD], axis=1)
        survey_res['age_70.0'], survey_res['age_80.0'], survey_res['age_90.0'], survey_res[
            'age_100.0'] = age0, age0, age0, age0
        survey_res.drop(['age'], axis=1, inplace=True)

        # 개 혹은 고양이인지는 맨 마지막 컬럼으로 이동
        survey_res['pet']= survey_res['pet_kind']
        survey_res.drop(['pet_kind'], axis=1, inplace=True)
        # 데이터의 양을 늘리기 위하여 rows 복제
        survey_res_repeated = pd.concat([survey_res]*5, ignore_index=True)
        # 변별력 없는 컬럼은 제거한다.
        survey_res_repeated.drop(['anxiety','s_n','indep_obey'], axis=1, inplace=True)
        X = survey_res_repeated[['in_out', 'j_p', 'f_t', 'friendy_unfam', 'convent_open', 'simple_artistic', 'age_10.0', 'age_20.0', 'age_30.0', 'age_40.0', 'age_50.0', 'age_60.0']]
        y = survey_res_repeated['pet']

        scaler = StandardScaler()
        X = StandardScaler().fit(X).transform(X)

        X_train, X_test, y_train, y_test = train_test_split(X,y, test_size=0.3, random_state=10)

        print(f'train data의 개수 => {X_train.shape}')
        print(y_train)
        print(y_train.shape)
        print(f'test data의 개수 => {X_test.shape}')
        print(y_test)
        print(y_test.shape)
        svc = SVC(C=1, gamma=1)
        svc.fit(X_train, y_train)
        y_hat = svc.predict(X_test)
        X_train = scaler.fit_transform(X_train)
        X_test = scaler.fit_transform(X_test)
        # Django로 가즈아
        pickle.dump(X_train,open('static/google_spreadsheet/X_train.pkl','wb'))
        pickle.dump(X_test,open('static/google_spreadsheet/X_test.pkl','wb'))
        # 정규화
        joblib.dump(scaler,'static/google_spreadsheet/final_scaler.pkl')
        # 모델 저장하기
        joblib.dump(svc,'static/google_spreadsheet/final_svc.pkl')


class My_Ora():
    def get_conn(self):
        conn = ora.connect('animal113/animal113@192.168.0.35/xe')
        return conn