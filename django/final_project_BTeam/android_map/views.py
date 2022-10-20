from io import StringIO

from django.conf import settings
from django.http import JsonResponse, HttpResponse, QueryDict
from django.shortcuts import render
import pandas as pd
import json
import os
from django.core.files.storage import default_storage
from django.core.files.base import ContentFile

from django.views.decorators.csrf import csrf_exempt
from django.core.files.uploadedfile import InMemoryUploadedFile

@csrf_exempt
def jsonTest2(request):
    address_data = json.loads(request.POST['JsonData'])
    member_name = json.loads(request.POST['member_name'])
    print(address_data['name'])
    print(member_name)
    imgName = address_data['name'] + ".png"#snapShot name
    data = request.FILES['file']#request imgFile

    if os.path.exists(settings.MEDIA_ROOT+member_name) :
        print("이미 폴더가 존재합니")
    else:
        print("폴더를 생성합니다")
        os.mkdir(settings.MEDIA_ROOT+member_name)

    #SnapShot Save
    if os.path.exists(settings.MEDIA_ROOT+member_name+"/"+imgName):
        print('파일이 이미 존재합니다')
        return JsonResponse("exist", json_dumps_params={'ensure_ascii': False}, safe=False)
    else:
        print('파일을 생성합니다')
        path = default_storage.save(member_name+"/"+imgName, ContentFile(data.read()))
        tmp_file = os.path.join(settings.MEDIA_ROOT, path)#setting MEDIA_ROOT

    #Json Save
    imsiDic = dict()
    imsiList = list()
    imsiList.append(address_data)
    fileName = address_data['name']+".json"#이거 아이디로 바꿔야됨
    if os.path.exists(settings.MEDIA_ROOT+member_name+"/"+member_name+".json"):#Json file check
        with open(settings.MEDIA_ROOT+member_name+"/"+member_name+".json",'r',encoding='UTF-8') as file:
            after = json.load(file)
            print(after)
        after.append(address_data)
        with open(settings.MEDIA_ROOT+member_name+"/"+member_name+".json", 'w', encoding='UTF-8') as file:
            json.dump(after, file, ensure_ascii=False, indent=2)  # new file
    else:
        with open(settings.MEDIA_ROOT+member_name+"/"+member_name+".json", 'w', encoding='UTF-8') as file:
            json.dump(imsiList, file, ensure_ascii=False, indent=2) #new file
    return JsonResponse("success", json_dumps_params={'ensure_ascii':False},safe=False)

@csrf_exempt
def myList(request):
    if request.method=='POST':
        member_name = json.loads(request.body.decode('utf-8'))
        print(member_name)
        #member_name =  json.loads(request.body.decode('utf-8'))#member name
        path = settings.MEDIA_ROOT+member_name+"/"
    else:
        member_name = request.GET.get('name')
        path = settings.MEDIA_ROOT + member_name + "/"
        print(member_name)

    print(path)

    fileName = path + member_name + ".json"
    if os.path.exists(fileName):  # Json file check
        f = open(fileName)
        jsonResponse = json.load(f)
    else:
        jsonResponse = "None"

    print(jsonResponse)

    return JsonResponse(jsonResponse, json_dumps_params={'ensure_ascii':False},safe=False)