<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="mycontext" value="${pageContext.request.contextPath}" />

<script>

function reqCancel(data) {
	if (confirm("정말 취소하시겠습니까??") == true){
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
	}else{   //취소
	     return false;
	 }
}

</script>

<section class="path">
   <div class="container">Home <span>&nbsp;>&nbsp;</span> 마이페이지 <span>&nbsp;>&nbsp;</span> 친구목록 <span>&nbsp;>&nbsp;</span> <b>요청한 목록</b></div>
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
            <li><a href="${mycontext}/mypage/requestlist" class="on">요청한 목록</a></li>
            <li><a href="${mycontext}/mypage/responselist">요청 받은 목록</a></li>
         </ul>      
         <div class="tab_content">
         	  <c:forEach var="reqlist" items="${requestlist}" varStatus="vs">
               <div class="friendslist">
                  <div class="imgbox"><img src="${mycontext}/resources/animalimage/${reqlist.animal_img1}"></div>
                                 
                  <div class="txtbox">
                  	<p class="name">${reqlist.member_id}</p>
                     <p class="name">${reqlist.animal_name}</p>
                     <p>품종 : ${reqlist.cate_kind}<br> 나이 : ${reqlist.animal_age}살, 성별 : ${reqlist.animal_gender}컷</p>
                     <form id="fc${vs.index}">
                     	<input type="hidden" id="member_id" name="member_id" value="${reqlist.member_id}">
                     </form>
                     <button type="button" class="btn btn-danger" id="cBtn" onclick="reqCancel(fc${vs.index})">취소하기</button>
                  </div>
               </div>
            </c:forEach>
         </div>
      </div>
   </div>
</section>
