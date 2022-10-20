import json

from django.http import HttpResponse, JsonResponse
from django.shortcuts import render
from django.views.decorators.csrf import csrf_exempt

from friends_recomm.models import Friend_Recomm


# Create your views here.
@csrf_exempt
def igo(request):
    ref = Friend_Recomm()
    getJson = json.loads(request.body.decode('utf-8'))
    member_id = getJson['member_id']
    print("member_id =>",member_id)
    res_df = ref.get_recomm(member_id)
    print(res_df)
    res_df.to_json('static/json/f_recomm.json', orient='records', force_ascii=False)
    f = open('static/json/f_recomm.json')
    aa = json.load(f)
    json_callback = request.POST.get('callback')
    print("aa =>",aa)
    print(type(aa))
    if json_callback is not None:
        response = HttpResponse("%s(%s);" % (json_callback, json.dumps(aa, ensure_ascii=False)))
        response["Content-Type"] = "text/javascript;charset=utf-8"
        print("jsonP")
    else:
        response = JsonResponse(aa, json_dumps_params={'ensure_ascii': False}, safe=False)
        print("json")
    return response
