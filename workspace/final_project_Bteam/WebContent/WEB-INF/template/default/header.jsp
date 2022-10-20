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
<div class="banner"><a href="${mycontext}/dogorcat/form" style="color: white;">�ۢܢݳ��� �������� ����� �� ��� ������ �� ��︱��~?�ۢܢ�</a></div>
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
            	<li><a href="${mycontext}/trails/trailsList">�ۼҰ�</a></li>
               <li><a href="${mycontext}/cnn_guess/form">ǰ��ã��</a></li>
               <c:choose>
                  <c:when test="${sessionScope.sessionID == null }">
                     <li><a href="javascript:alert('�α��� �� �̿밡���� �������Դϴ�.');">ģ��ã��</a></li>
                  </c:when>
                  <c:when test="${sessionScope.sessionID != null }">
                     <li><a href="${mycontext}/community/communitylist?cPage=1">ģ��ã��</a></li>
                  </c:when>
               </c:choose>
               <li><a href="${mycontext}/contentSearch">Ŀ�´�Ƽ</a></li>
               <li><a href="${mycontext}/item/itemList?gender=dog">���θ�</a>
                     
                <ul class="submenu">
                   <li><a href="${mycontext}/item/itemList?gender=dog">������</a></li>
                <li><a href="${mycontext}/item/itemList?gender=cat">�����</a></li>
                <form method="post" id="form1">
                    <li><a href="javascript:void(0);">��õ��ǰ</a></li>
                    <input type="hidden" id="data1" name="data_str" value="">
                </form>
               </ul>
               </li>
               
            </ul>

            <input type="hidden" id="data1" name="data_str" value="">
         
         <c:choose>
            <c:when test="${sessionScope.sessionID == null }">
               <ul class="member">
                  <li><a href="${mycontext}/loginForm">�α���</a></li>
                  <li><a href="${mycontext}/member/memberForm">ȸ������</a></li>
               </ul>
            </c:when>
            <c:when test="${sessionScope.sessionID != null }">
               <ul class="member">
                  <li><a href="${mycontext}/logout">�α׾ƿ�</a></li>
                  <li><a href="${mycontext}/member/myPage">����������</a></li>
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
              // �޾ƿ��� ���� object���̱� ������ String ������ �ٲپ��ش�.
              //str_data = JSON.stringify(data);
              data_str = JSON.stringify(data);
              console.log(data_str);
              //console.log('type =======>' + typeof(json_str))
               //console.log('json_data => ' + json_str);
              //data_array = json_str.split(',', 4);
              //for(var i in data_array) {
              //   console.log('��� =>' + data_array[i]);
              //}
           },
           error:function(err){
              console.log('Error');
           }
        });
        
      $('#form1').click(function(){
         //alert('�۵�');
         //alert(data_str);
         // 1. �̰� �ȵ�
         //$('#data').val(data_str);
         //console.log('data ===> ' + $('#data1').val());
         // 2. �̰͵� �ȵ�
         //document.getElementById("data").value = data_str;
         //console.log("data_str : "+document.getElementById("data").value)
         // 3.
         console.log("�۵���");
         $('input[name=data_str]').attr('value', data_str);
         console.log($('#data1').val());
         //document.form1.submit();
         form1.action="${mycontext}/item/recommendProduction";
         form1.method="post";
         form1.submit();
      });
   });
</script>