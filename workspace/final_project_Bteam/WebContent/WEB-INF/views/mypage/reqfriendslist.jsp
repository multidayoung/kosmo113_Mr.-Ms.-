<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="mycontext" value="${pageContext.request.contextPath}" />

<script>

function reqCancel(data) {
	if (confirm("���� ����Ͻðڽ��ϱ�??") == true){
	var formData = $(data).serialize();
	$.ajax({
		type : "post",
		url : "${mycontext}/requestCancel",
		data : formData,
		dataType : "text",
		contentType : "application/text;charset=EUC-KR",
		success : function(result) {
			location.reload();
		}
	});
	}else{   //���
	     return false;
	 }
}

</script>

<section class="path">
   <div class="container">Home <span>&nbsp;>&nbsp;</span> ���������� <span>&nbsp;>&nbsp;</span> ģ����� <span>&nbsp;>&nbsp;</span> <b>��û�� ���</b></div>
</section>

<section class="container content">
   <div class="mypage">
      <ul class="left_menu">
         <li><a href="${mycontext}/member/myPage">ȸ����������</a></li>
         <li><a href="${mycontext}/animal/animalList">�� �ݷ�����</a></li>
         <li><a href="${mycontext}/mypage/friendslist" class="on">ģ�����</a></li>
         <li><a href="${mycontext}/mypage/messageList">������</a></li>
         <li><a href="${mycontext}/orders/ordersList">���Ÿ��</a></li>
		 <li><a href="${mycontext}/basket/basketList">��ٱ���</a></li>
		 <li><a href="${mycontext}/mypage/pointList">����Ʈ��볻��</a></li>
      </ul>
      <div class="right_cont">
         <ul class="tab_btn">
            <li><a href="${mycontext}/mypage/friendslist">ģ�����</a></li>
            <li><a href="${mycontext}/mypage/requestlist" class="on">��û�� ���</a></li>
            <li><a href="${mycontext}/mypage/responselist">��û ���� ���</a></li>
         </ul>      
         <div class="tab_content">
         	  <c:forEach var="reqlist" items="${requestlist}" varStatus="vs">
               <div class="friendslist">
                  <div class="imgbox"><img src="${mycontext}/resources/animalimage/${reqlist.animal_img1}"></div>
                                 
                  <div class="txtbox">
                  	<p class="name">${reqlist.member_id}</p>
                     <p class="name">${reqlist.animal_name}</p>
                     <p>ǰ�� : ${reqlist.cate_kind}<br> ���� : ${reqlist.animal_age}��, ���� : ${reqlist.animal_gender}��</p>
                     <form id="fc${vs.index}">
                     	<input type="hidden" id="member_id" name="member_id" value="${reqlist.member_id}">
                     </form>
                     <button type="button" class="btn btn-danger" id="cBtn" onclick="reqCancel(fc${vs.index})">����ϱ�</button>
                  </div>
               </div>
            </c:forEach>
         </div>
      </div>
   </div>
</section>
