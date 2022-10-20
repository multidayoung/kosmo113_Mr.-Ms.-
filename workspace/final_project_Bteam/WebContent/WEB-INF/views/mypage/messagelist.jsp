<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="mycontext" value="${pageContext.request.contextPath}" />
<style>
 tr > td > a:hover {
 	color:#7ecae0;
 }
</style>

<section class="path">
   <div class="container">Home <span>&nbsp;>&nbsp;</span> 마이페이지 <span>&nbsp;>&nbsp;</span> 쪽지함 <span>&nbsp;>&nbsp;</span> <b>받은 쪽지함</b></div>
</section>

<section class="container content">
	<div class="mypage">
		<ul class="left_menu">
			<li><a href="${mycontext}/member/myPage">회원정보수정</a></li>
			<li><a href="${mycontext}/animal/animalList">내 반려동물</a></li>
			<li><a href="${mycontext}/mypage/friendslist">친구목록</a></li>
			<li><a href="${mycontext}/mypage/messageList" class="on">쪽지함</a></li>
			<li><a href="${mycontext}/orders/ordersList">구매목록</a></li>
			<li><a href="${mycontext}/basket/basketList">장바구니</a></li>
			<li><a href="${mycontext}/mypage/pointList">포인트사용내역</a></li>
		</ul>
		<div class="right_cont">
			<ul class="tab_btn">
				<li><a href="${mycontext}/mypage/messageList" class="on">받은 쪽지함</a></li>
				<li><a href="${mycontext}/mypage/reqmessageList">보낸 쪽지함</a></li>
			</ul>
			<div class="tab_content on">
				<table class="table">
					<tbody>
						<c:forEach var="mlist" items="${messagelist}" varStatus="vs">		
						<c:choose>
							<c:when test="${mlist.message.message_readchk == 1 }">
								<tr class="table-secondary">
							</c:when>		
							<c:otherwise>
								<tr>
							</c:otherwise>
						</c:choose>
								<td>${mlist.rownum}</td>	
								<td><img alt="" src="${mycontext}/resources/animalimage/${mlist.animal.animal_img1}" width="50" height="50"></td>
								<td>${mlist.member_id}</td>
								<td>${mlist.animal.animal_name}</td>											
								<td><a href="${mycontext}/mypage/messageDetail?message_num=${mlist.message.message_num}">${mlist.message.message_content}</a></td>
								<td>${mlist.message.message_date}</td>						
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</section>


