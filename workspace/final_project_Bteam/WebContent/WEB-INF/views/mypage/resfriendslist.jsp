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
   <div class="container">Home <span>&nbsp;>&nbsp;</span> 마이페이지 <span>&nbsp;>&nbsp;</span> 친구목록 <span>&nbsp;>&nbsp;</span> <b>요청 받은 목록</b></div>
</section>

<section class="container content">
   <div class="mypage">
      <ul class="left_menu">
         <li><a href="${mycontext}/member/myPage">회원정보수정</a></li>
         <li><a href="${mycontext}/animal/animalList">내 반려동물</a></li>
         <li><a href="${mycontext}/mypage/friendslist" class="on">친구목록</a></li>
         <li><a href="${mycontext}/mypage/messageList">쪽지함</a></li>
         <li><a href="${mycontext}/orders/ordersList">구매목록</a></li>
		 <li><a href="${mycontext}/basket/basketList">장바구니</a></li>
		 <li><a href="${mycontext}/mypage/pointList">포인트사용내역</a></li>
      </ul>
      <div class="right_cont">
         <ul class="tab_btn">
            <li><a href="${mycontext}/mypage/friendslist">친구목록</a></li>
            <li><a href="${mycontext}/mypage/requestlist">요청한 목록</a></li>
            <li><a href="${mycontext}/mypage/responselist" class="on">요청 받은 목록</a></li>
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
                     <p>품종 : ${reslist.cate_kind}<br> 나이 : ${reslist.animal_age}살, 성별 : ${reslist.animal_gender}컷</p>
                     <form id="fc${vs.index}">
                     	<input type="hidden" id="member_id" name="member_id" value="${reslist.member_id}">
                     </form>
                     <button type="button" id="resOk" class="btn btn-primary" onclick="resOk(fc${vs.index})">수락하기</button>
                  	 <button type="button" id="resNo" class="btn btn-danger" onclick="resNo(fc${vs.index})">거절하기</button>
                  </div>
               </div>
            </c:forEach>
         </div>
      </div>
   </div>
</section>
