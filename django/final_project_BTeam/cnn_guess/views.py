import json

from django.http import HttpResponse, JsonResponse
from django.shortcuts import render
from django.views.decorators.csrf import csrf_exempt
from cnn_guess.models import Cnn_Model


# Create your views here.
def cnn_guess_form(request):
    return render(request, "cnn_guess/cnn_guess_form.html")

@csrf_exempt
def cnn_guess_res(request):
    print('request.FILES =>', request.FILES)
    file = request.FILES['file1']
    print(file)
    cnn = Cnn_Model(file)
    cate = cnn.cnn_model()
    print(cate)
    res = {}
    res["cnn_res"] = cate
    aa = json.dumps(res) # 제이슨으로!
    aa = json.loads(aa)
    print("aa => {}".format(aa))
    response = JsonResponse(aa, json_dumps_params={'ensure_ascii': False}, safe=False)
    print("json")
    return response

    # {"cnn_res":"schnauzer"} 이런 형식의 제이슨
    #    res.to_json('cnn_json',orient='split', force_ascii=False)
    # if json_callback is not None:
    #     # callback(jsonData); 응답 객체를임의로 만들어 준ㄷ./ ************]
    #     # aaaa('[jsondata]')
    #     response = HttpResponse("%s(%s);" % (json_callback, json.dumps(aa, ensure_ascii=False)))
    #     response["Content-Type"] = "text/javascript; charset=utf-8"
    #     print("jsonP")
    # else: