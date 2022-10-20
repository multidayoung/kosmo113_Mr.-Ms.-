<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="mycontext" value="${pageContext.request.contextPath}" />

<script>

	function friendDel(data) {
		if (confirm("정말 삭제하시겠습니까??") == true){    //확인
		var formData = $(data).serialize();
		$.ajax({
			type : "post",
			url : "${mycontext}/friendsCancel",
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
   <div class="container">Home <span>&nbsp;>&nbsp;</span> 마이페이지 <span>&nbsp;>&nbsp;</span> 친구목록 <span>&nbsp;>&nbsp;</span> <b>친구목록</b></div>
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
				<li><a href="${mycontext}/mypage/friendslist" class="on">친구목록</a></li>
				<li><a href="${mycontext}/mypage/requestlist">요청한 목록</a></li>
				<li><a href="${mycontext}/mypage/responselist">요청 받은 목록</a></li>
			</ul>
			<div class="tab_content on">
				<c:forEach var="flist" items="${friendslist}" varStatus="vs">
					<div class="friendslist">
						<div class="imgbox">
							<img src="${mycontext}/resources/animalimage/${flist.animal_img1}">
						</div>
						<div class="txtbox">
							<p class="name">${flist.member_id}</p>
							<p class="name">${flist.animal_name}</p>
							<p>
								품종 : ${flist.cate_kind}<br> 나이 : ${flist.animal_age}살, 성별 :
								${flist.animal_gender}컷
							</p>
							<button type="button" class="btn btn-primary"
								onclick="location.href='${mycontext}/community/communitydetail?anum=${flist.animal_num}&friendId=${flist.member_id}'">상세보기</button>
						<button type="button" class="btn btn-danger" id="cBtn" onclick="friendDel(fc${vs.index})">삭제하기</button>
						<form id="fc${vs.index}">
							<input type="hidden" id="member_id" name="member_id" value="${flist.member_id}">											
						</form>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
</section>
