<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="mycontext" value="${pageContext.request.contextPath}" />

<script>

function resOk(data) {
	var formData = $(data).serialize();
	$.ajax({
		type : "post",
		url : "${mycontext}/responseOk",
		data : formData,
		dataType : "text",
		contentType : "application/text;charset=EUC-KR",
		success : function(result) {
			location.reload();
		}
	});
}

function resNo(data) {
	var formData = $(data).serialize();
	$.ajax({
		type : "post",
		url : "${mycontext}/responseNo",
		data : formData,
		dataType : "text",
		contentType : "application/text;charset=EUC-KR",
		success : function(result) {
			location.reload();
		}
	});
}

</script>

<section class="path">
   <div class="container">Home <span>&nbsp;>&nbsp;</span> ���������� <span>&nbsp;>&nbsp;</span> ģ����� <span>&nbsp;>&nbsp;</span> <b>��û ���� ���</b></div>
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
            <li><a href="${mycontext}/mypage/requestlist">��û�� ���</a></li>
            <li><a href="${mycontext}/mypage/responselist" class="on">��û ���� ���</a></li>
         </ul>      
         <div class="tab_content">
         	<c:forEach var="reslist" items="${responselist}" varStatus="vs">
               <div class="friendslist">
               <div class="imgbox">
							<img src="${mycontext}/resources/animalimage/${reslist.animal_img1}">
						</div>
                  <div class="txtbox">
                  	<p class="name">${reslist.member_id}</p>
                     <p class="name">${reslist.animal_name}</p>
                     <p>ǰ�� : ${reslist.cate_kind}<br> ���� : ${reslist.animal_age}��, ���� : ${reslist.animal_gender}��</p>
                     <form id="fc${vs.index}">
                     	<input type="hidden" id="member_id" name="member_id" value="${reslist.member_id}">
                     </form>
                     <button type="button" id="resOk" class="btn btn-primary" onclick="resOk(fc${vs.index})">�����ϱ�</button>
                  	 <button type="button" id="resNo" class="btn btn-danger" onclick="resNo(fc${vs.index})">�����ϱ�</button>
                  </div>
               </div>
            </c:forEach>
         </div>
      </div>
   </div>
</section>
