<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="mycontext" value="${pageContext.request.contextPath}" />

<script>
$(function(){
   $('.submenu').hide();    
    $('.navi > li').on('mouseover', function(){
        $(this).find('>ul').stop().slideDown(300);
   }).on('mouseout', function(){
        $(this).find('>ul').stop().slideUp(100);
   });
});
</script>

<header>
<div class="banner"><a href="${mycontext}/dogorcat/form" style="color: white;">♩♪♬나는 강아지와 고양이 중 어느 동물이 더 어울릴까~?♩♪♬</a></div>
   <h1>
      <a href="${mycontext}"><img src="${mycontext}/resources/image/logo.png"></a>
   </h1>
   <nav>
      <div class="container">
          <!-- <div class="search">
            <form action="">
               <input type="text" name="search"> <input type="submit"
                  name="submit" value="Search">
            </form>
         </div>-->
         
            <ul class="navi">
            	<li><a href="${mycontext}/trails/trailsList">앱소개</a></li>
               <li><a href="${mycontext}/cnn_guess/form">품종찾기</a></li>
               <c:choose>
                  <c:when test="${sessionScope.sessionID == null }">
                     <li><a href="javascript:alert('로그인 후 이용가능한 페이지입니다.');">친구찾기</a></li>
                  </c:when>
                  <c:when test="${sessionScope.sessionID != null }">
                     <li><a href="${mycontext}/community/communitylist?cPage=1">친구찾기</a></li>
                  </c:when>
               </c:choose>
               <li><a href="${mycontext}/contentSearch">커뮤니티</a></li>
               <li><a href="${mycontext}/item/itemList?gender=dog">쇼핑몰</a>
                     
                <ul class="submenu">
                   <li><a href="${mycontext}/item/itemList?gender=dog">강아지</a></li>
                <li><a href="${mycontext}/item/itemList?gender=cat">고양이</a></li>
                <form method="post" id="form1">
                    <li><a href="javascript:void(0);">추천상품</a></li>
                    <input type="hidden" id="data1" name="data_str" value="">
                </form>
               </ul>
               </li>
               
            </ul>

            <input type="hidden" id="data1" name="data_str" value="">
         
         <c:choose>
            <c:when test="${sessionScope.sessionID == null }">
               <ul class="member">
                  <li><a href="${mycontext}/loginForm">로그인</a></li>
                  <li><a href="${mycontext}/member/memberForm">회원가입</a></li>
               </ul>
            </c:when>
            <c:when test="${sessionScope.sessionID != null }">
               <ul class="member">
                  <li><a href="${mycontext}/logout">로그아웃</a></li>
                  <li><a href="${mycontext}/member/myPage">마이페이지</a></li>
                  <li class="messagealam" style="margin:0;">
                     <a href="${mycontext}/mypage/messageList">
                        <img src="${mycontext}/resources/img/email.png" width="30",height="30">
                        <p>${msgcnt}</p>
                     </a>
                  </li>
               </ul>
            </c:when>
         </c:choose>
      </div>
   </nav>
</header>
<script>
   $(function(){
      var data_str
      //var data_array = new Array();
        $.ajax({
           url:'http://192.168.0.113:9003/newSurprise/test?callback',
           type:'GET',
           dataType:'jsonp',
           jsonp:'callback',
           success:function(data){
              // 받아오는 값이 object값이기 때문에 String 값으로 바꾸어준다.
              //str_data = JSON.stringify(data);
              data_str = JSON.stringify(data);
              console.log(data_str);
              //console.log('type =======>' + typeof(json_str))
               //console.log('json_data => ' + json_str);
              //data_array = json_str.split(',', 4);
              //for(var i in data_array) {
              //   console.log('출력 =>' + data_array[i]);
              //}
           },
           error:function(err){
              console.log('Error');
           }
        });
        
      $('#form1').click(function(){
         //alert('작동');
         //alert(data_str);
         // 1. 이건 안됨
         //$('#data').val(data_str);
         //console.log('data ===> ' + $('#data1').val());
         // 2. 이것도 안됨
         //document.getElementById("data").value = data_str;
         //console.log("data_str : "+document.getElementById("data").value)
         // 3.
         console.log("작동됨");
         $('input[name=data_str]').attr('value', data_str);
         console.log($('#data1').val());
         //document.form1.submit();
         form1.action="${mycontext}/item/recommendProduction";
         form1.method="post";
         form1.submit();
      });
   });
</script>