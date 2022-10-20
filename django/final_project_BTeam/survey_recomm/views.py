import json
import os
import ast
from django.conf import settings
from django.core.files.base import ContentFile
from django.core.files.storage import default_storage
from django.http import JsonResponse
from django.shortcuts import render
from django.views.decorators.csrf import csrf_exempt

from survey_recomm.models import sur_dog_cat, sur_user


def survey_recomm_form(request):
    return render(request, 'survey_recomm/survey_recomm_form.html')

@csrf_exempt
def dog_cat_result(request):
    # data = json.loads(request.POST['json'])
    # print(data)
    #
    # return render(request, 'survey_recomm/survey_recomm_res.html', {'dog_cat':dog_cat})
    # data = json.loads(request.body.decode('utf-8')) 기둘
    data = json.loads(request.POST['json'])
    # print("jsonData =>",jsonData)
    # data = jsonData.
    print(data)
    user = sur_user(**data)
    dog_cat = sur_dog_cat(user)
    if dog_cat == 0:
        dog_cat_str = '강아지'
    else:
        dog_cat_str = '고양이'
    print(f"dog_cat => {dog_cat}")
    res_dict = {"dog_cat" : str(dog_cat[0])}
    print("res_dict =>",res_dict)
    res_json = json.dumps(res_dict)

    response = JsonResponse(res_json, json_dumps_params={'ensure_ascii': False}, safe=False)
    print("json")
    return response