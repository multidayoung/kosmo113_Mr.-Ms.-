<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="mycontext" value="${pageContext.request.contextPath}" />

<section class="path">
   <div class="container">Home <span>&nbsp;>&nbsp;</span> 마이페이지 <span>&nbsp;>&nbsp;</span> <b>회원정보수정</b></div>
</section>

<section class="container content">
	<div class="mypage">
		<ul class="left_menu">
			<li><a href="${mycontext}/member/myPage" class="on">회원정보수정</a></li>
			<li><a href="${mycontext}/animal/animalList">내 반려동물</a></li>
			<li><a href="${mycontext}/mypage/friendslist">친구목록</a></li>
			<li><a href="${mycontext}/mypage/messageList">쪽지함</a></li>
			<li><a href="${mycontext}/orders/ordersList">구매목록</a></li>
			<li><a href="${mycontext}/basket/basketList">장바구니</a></li>
			<li><a href="${mycontext}/mypage/pointList" >포인트사용내역</a></li>
		</ul>
		<div class="right_cont">
				<div class="form-group">
					<label for="member_id">아이디</label> <input type="text"
						class="form-control" id="member_id" name="member_id"
						value="${vo.member_id}" readonly="readonly">
				</div>
				<div class="form-group">
					<label for="member_name">이름</label> <input type="text"
						class="form-control" id="member_name" name="member_name"
						value="${vo.member_name}" readonly="readonly">
				</div>
				<div class="form-group">
					<label for="member_gender">성별</label> <input type="text"
						class="form-control" id="member_gender" name="member_gender"
						value="${vo.member_gender}" readonly="readonly">
				</div>
				<div class="form-group">
					<label for="member_phone">전화번호</label> <input type="text"
						class="form-control" id="member_phone" name="member_phone"
						value="${vo.member_phone}" readonly="readonly">
				</div>
				<div class="form-group">
					<label for="member_email">이메일</label> <input type="text"
						class="form-control" id="member_email" name="member_email"
						value="${vo.member_email}" readonly="readonly">
				</div>
				<div class="form-group">
					<label for="member_addr">주소</label> <input type="text"
						class="form-control" id="member_addr" name="member_addr"
						value="${vo.member_addr}" readonly="readonly">
				</div>
				<div class="form-group">
					<label for="member_date">가입날짜</label> <input type="text"
						class="form-control" id="member_date" name="member_date"
						value="${vo.member_date}" readonly="readonly">
				</div>
				<br>
				<button class="btn btn-primary" type="button"
					onclick="location='${mycontext}/member/memberReform?member_id=${vo.member_id}'">수정</button>
				<button class="btn btn-danger" type="button"
					onclick="location='${mycontext}/member/memberdelete?member_id=${vo.member_id}'">탈퇴</button>

		</div>
	</div>
</section>

<!-- ?member_id=${vo.member_id} -->