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
   <div class="container">Home <span>&nbsp;>&nbsp;</span> ���������� <span>&nbsp;>&nbsp;</span> <b>���Ÿ��</b></div>
</section>

<section class="container content">
	<div class="mypage">
		<ul class="left_menu">
	    	<li><a href="${mycontext}/member/myPage">ȸ����������</a></li>
	        <li><a href="${mycontext}/animal/animalList">�� �ݷ�����</a></li>
	        <li><a href="${mycontext}/mypage/friendslist">ģ�����</a></li>
	        <li><a href="${mycontext}/mypage/messageList">������</a></li>
	        <li><a href="${mycontext}/orders/ordersList" class="on">���Ÿ��</a></li>
			<li><a href="${mycontext}/basket/basketList">��ٱ���</a></li>
			<li><a href="${mycontext}/mypage/pointList">����Ʈ��볻��</a></li>
      	</ul>
      	<div class="right_cont">
			<table class="table table-bordered text-center">
				<thead>
					<tr>
						<th>�ֹ� ��ȣ</th>
						<th>��ǰ��</th>
						<th>�ֹ� ����</th>
						<th>�� �ֹ� �ݾ�</th>
						<th>�ֹ� ����</th>
						<th>����</th>
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
									<c:when test="${e.i_status eq '��ۿϷ�'}">
										<c:choose>
											<c:when test="${e.rcnt == 1}">
												<input type="button" value="���� �ۼ�" onclick="location.href='${mycontext}/review/reviewForm?ord_no=${e.ord_no}&i_no=${e.ivo.i_no}'">
											</c:when>
											<c:otherwise>
												<span>�ۼ� �Ϸ�</span>
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
										<li class="disable">����</li>
									</c:when>
									<c:otherwise>
										<li><a href="ordersList?cPage=${nowPage-pagePerBlock}">����</a></li>
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
										<li class="disable">����</li>
									</c:when>
									<c:when test="${totalPage > (nowPage+pagePerBlock)}">
										<li><a href="ordersList?cPage=${nowPage+pagePerBlock}">����</a></li>
									</c:when>
									<c:otherwise>
										<li><a href="ordersList?cPage=${totalPage}">����</a></li>
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





