<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="mycontext" value="${pageContext.request.contextPath}" />

<section class="container content">
	<div id="content" class="container mt-5">
	    <h1 class="text-center">Week Hot Keyword</h1>
	    <div class="row">
	        <form action="boardChart" method="post">
	            {% csrf_token %}
	            <label>��¥ ���� </label><br>
	            <div style="padding-left:10px;">
	            ���� ��¥ : <input type="date" name="bdate" id="bdate" value="{{stoday}}"><br>
	            �� ��¥ : <input type="date" name="edate" id="edate" value="{{ttoday}}"><br>
	            <input type="submit" value="��Ʈ �缳��">
	            </div>
	        </form>
	      <div id="chart_donut">
	
	      </div>
	    </div>
	</div>
</section>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
        var objTest = [];
        function sampleMakeArray(){
            {% for e in wordv_cnt_totalList %}
                objTest.push(['{{e.0}}',{{e.1}}]);
            {% endfor %}
            console.log(typeof(objTest));
            console.log(objTest.length);
        }

        $(function(){
            sampleMakeArray();
            var chart = c3.generate({
                bindto: '#chart_donut',
                data: {
                    columns: objTest,
                    type : 'donut',
                    onclick: function (d, i) {
                        location='boardList?searchValue='+d.id;
                      },
                    onmouseover: function (d, i) { console.log("onmouseover", d, i); },
                    onmouseout: function (d, i) { console.log("onmouseout", d, i); }
          }
          });
        });


        let today = new Date();
        let year = today.getFullYear();
        // �� getMonth() (0~11�� 1���� 0���� ǥ���Ǳ� ������ + 1�� ���־�� ���ϴ� ���� ���� �� �ִ�.)
        let month = today.getMonth() + 1
        let date = today.getDate(); // ��
        let syear = today.getFullYear - 1;
        let ttoday = year + '-' + '0'+month + '-' + date
        let stoday = syear + '-' + '0'+month + '-' + date
        console.log(stoday);
        console.log(ttoday);

        $(function(){
            $('#bdate').attr('placeholder',stoday)
            $('#edate').attr('placeholder',ttoday)
        })
</script>