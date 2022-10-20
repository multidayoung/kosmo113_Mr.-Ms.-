<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="mycontext" value="${pageContext.request.contextPath}" />

<style>
 tr > td > a:hover {
 	color:#7ecae0;
 }
</style>

<section class="path">
   <div class="container">Home <span>&nbsp;>&nbsp;</span> 마이페이지 <span>&nbsp;>&nbsp;</span> <b>구매목록</b></div>
</section>

<section class="container content">
	<div class="mypage">
		<ul class="left_menu">
	    	<li><a href="${mycontext}/member/myPage">회원정보수정</a></li>
	        <li><a href="${mycontext}/animal/animalList">내 반려동물</a></li>
	        <li><a href="${mycontext}/mypage/friendslist">친구목록</a></li>
	        <li><a href="${mycontext}/mypage/messageList">쪽지함</a></li>
	        <li><a href="${mycontext}/orders/ordersList" class="on">구매목록</a></li>
			<li><a href="${mycontext}/basket/basketList">장바구니</a></li>
			<li><a href="${mycontext}/mypage/pointList">포인트사용내역</a></li>
      	</ul>
      	<div class="right_cont">
			<table class="table table-bordered text-center">
				<thead>
					<tr>
						<th>주문 번호</th>
						<th>상품명</th>
						<th>주문 수량</th>
						<th>총 주문 금액</th>
						<th>주문 상태</th>
						<th>리뷰</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="e" items="${list}">
						<tr>
							<td>${e.ord_no}</td>
							<td><a href="${mycontext}/item/itemDetail?s_no=${e.ivo.i_no}">${e.ivo.i_name}</a></td>
							<td>${e.ord_count}</td>
							<td>${e.totalPrice}</td>
							<td>${e.i_status}</td>
							<td>
								<c:choose>
									<c:when test="${e.i_status eq '배송완료'}">
										<c:choose>
											<c:when test="${e.rcnt == 1}">
												<input type="button" value="리뷰 작성" onclick="location.href='${mycontext}/review/reviewForm?ord_no=${e.ord_no}&i_no=${e.ivo.i_no}'">
											</c:when>
											<c:otherwise>
												<span>작성 완료</span>
											</c:otherwise>
										</c:choose>
									</c:when>
								</c:choose>
							</td>
						</tr>
					</c:forEach>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="8">
							<ul class="paging">
								<c:choose>
									<c:when test="${startPage < 6}">
										<li class="disable">이전</li>
									</c:when>
									<c:otherwise>
										<li><a href="ordersList?cPage=${nowPage-pagePerBlock}">이전</a></li>
									</c:otherwise>
								</c:choose>
								<c:forEach varStatus="i" begin="${startPage}" end="${endPage}"
									step="1">
									<c:choose>
										<c:when test="${i.index == nowPage}">
											<li class="now">${i.index}</li>
										</c:when>
										<c:otherwise>
											<li><a href="ordersList?cPage=${i.index}">${i.index}</a></li>
										</c:otherwise>
									</c:choose>
								</c:forEach>
								<c:choose>
									<c:when test="${endPage >= totalPage}">
										<li class="disable">다음</li>
									</c:when>
									<c:when test="${totalPage > (nowPage+pagePerBlock)}">
										<li><a href="ordersList?cPage=${nowPage+pagePerBlock}">다음</a></li>
									</c:when>
									<c:otherwise>
										<li><a href="ordersList?cPage=${totalPage}">다음</a></li>
									</c:otherwise>
								</c:choose>
							</ul>
						</td>
					</tr>
				</tfoot>
			</table>
		</div>
	</div>
</section>





