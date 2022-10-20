<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="mycontext" value="${pageContext.request.contextPath}" />

<section class="path">
   <div class="container">Home <span>&nbsp;>&nbsp;</span> ���������� <span>&nbsp;>&nbsp;</span> <b>����Ʈ��볻��</b></div>
</section>

<section class="container content">
	<div class="mypage">
		<ul class="left_menu">
	    	<li><a href="${mycontext}/member/myPage">ȸ����������</a></li>
	        <li><a href="${mycontext}/animal/animalList">�� �ݷ�����</a></li>
	        <li><a href="${mycontext}/mypage/friendslist">ģ�����</a></li>
	        <li><a href="${mycontext}/mypage/messageList">������</a></li>
	        <li><a href="${mycontext}/orders/ordersList">���Ÿ��</a></li>
			<li><a href="${mycontext}/basket/basketList">��ٱ���</a></li>
			<li><a href="${mycontext}/mypage/pointList" class="on">����Ʈ��볻��</a></li>
      	</ul>
      	<div class="right_cont">
      	<h3>���� ���� ���� ����Ʈ : ${allPoint}</h3>
      	
			<table class="table table-bordered text-center">
				<thead>
					<tr>
						<th>����Ʈ ��ȣ</th>
						<th>����Ʈ �з�</th>
						<th>����Ʈ</th>
						<th>����Ʈ ����</th>
						<th>��¥</th>
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
				</tfoot> -->
			</table>
		</div>
	</div>
</section>





