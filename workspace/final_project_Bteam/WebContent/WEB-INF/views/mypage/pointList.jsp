<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="mycontext" value="${pageContext.request.contextPath}" />

<section class="path">
   <div class="container">Home <span>&nbsp;>&nbsp;</span> 마이페이지 <span>&nbsp;>&nbsp;</span> <b>포인트사용내역</b></div>
</section>

<section class="container content">
	<div class="mypage">
		<ul class="left_menu">
	    	<li><a href="${mycontext}/member/myPage">회원정보수정</a></li>
	        <li><a href="${mycontext}/animal/animalList">내 반려동물</a></li>
	        <li><a href="${mycontext}/mypage/friendslist">친구목록</a></li>
	        <li><a href="${mycontext}/mypage/messageList">쪽지함</a></li>
	        <li><a href="${mycontext}/orders/ordersList">구매목록</a></li>
			<li><a href="${mycontext}/basket/basketList">장바구니</a></li>
			<li><a href="${mycontext}/mypage/pointList" class="on">포인트사용내역</a></li>
      	</ul>
      	<div class="right_cont">
      	<h3>나의 현재 보유 포인트 : ${allPoint}</h3>
      	
			<table class="table table-bordered text-center">
				<thead>
					<tr>
						<th>포인트 번호</th>
						<th>포인트 분류</th>
						<th>포인트</th>
						<th>포인트 내용</th>
						<th>날짜</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="e" items="${pointlist}">
						<tr>
							<td>${e.r_num}</td>
							<td>${e.point_cate}</td>
							<td>${e.point}</td>
							<td>${e.point_cont}</td>
							<td>${e.point_date}</td>
							
						</tr>
					</c:forEach>
				</tbody>
				<!-- <tfoot>
					<tr>
						<td colspan="5">
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
				</tfoot> -->
			</table>
		</div>
	</div>
</section>





