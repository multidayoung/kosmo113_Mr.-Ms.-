<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<article>
	<script>
		$(function() {
			//         $('#selectitem').change(function() {
			//     		$('#target').submit();
			//     	});
			$('#additembtn').click(function() {
				location = "adminitemstockForm";
			});
		});
	</script>
	<header>
		<h1>AdminitemstockList</h1>
	</header>
	<ul class="list-unstyled">
		<li class="border-top my-3"></li>
	</ul>
	<div>
		<p class="list-unstyled">
			<c:if test="${cnt != null}">
				<c:if test="${cMsg != null}">${cMsg}</c:if>��ǰ�� : ${cnt} / <c:if
					test="${sMsg != null}">�˻��� : ${sMsg}</c:if>
			</c:if>
		</p>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>��ȣ</th>
					<th>��ǰ��ȣ</th>
					<th>��ǰ��</th>
					<th>��ǰ����</th>
					<th>ī�װ�1</th>
					<th>ī�װ�2</th>
					<th>��ǰ�̹���</th>
					<th>��ǰ���</th>
					<th>������</th>
				</tr>
			</thead>
			<tbody>
				<%-- for start --%>
				<c:forEach var="e" items="${list}">
					<tr>
						<td>${e.r_num}</td>
						<td>${e.i_no}</td>
						<td><a href="adminitemstockDetail?i_no=${e.i_no}">${e.i_name}</a></td>
						<td>${e.i_price}</td>
						<td>${e.i_category}</td>
						<td>${e.i_gender}</td>
						<td><img style="width: 100px;"
							src="${pageContext.request.contextPath}/resources/imagefile/${e.i_img}"></td>
						<td>${e.stockvo.s_stock}</td>
						<td>${e.stockvo.s_name}</td>
					</tr>
				</c:forEach>
				<%-- for end --%>
			</tbody>
			<tfoot>
				<tr>
					<th colspan="9" style="text-align: center;">
						<form action="adminitemstockList" method="get">
							<nav aria-label="Page navigation example">
								<ul class="pagination pagination-sm"
									style="margin: auto; width: 60%">
									<c:choose>
										<c:when test="${startPage < 6}">
											<li class="page-item disabled">��������</li>
										</c:when>
										<c:otherwise>
											<li class="page-item"><a class="page-link"
												href="adminitemstockList?cPage=${startPage-1}&category=${category}&search=${search}">��������</a></li>
										</c:otherwise>
									</c:choose>
									<!--        <li class="page-item disabled"><a class="page-link" href="#">Previous</a></li> -->
									<c:forEach varStatus="i" begin="${startPage}" end="${endPage }"
										step="1">
										<c:choose>
											<c:when test="${i.index == nowPage}">
												<li class="page-item">${i.index}</li>
											</c:when>
											<c:otherwise>
												<li class="page-item"><a class="page-link"
													href="adminitemstockList?cPage=${i.index}&category=${category}&search=${search}">${i.index}</a></li>
											</c:otherwise>
										</c:choose>
									</c:forEach>

									<c:choose>
										<c:when test="${endPage >= totalPage }">
											<li class="page-item">��������</li>
										</c:when>
										<c:when test="${totalPage > (nowPage+pagePerBlock)}">
											<li>
											<li><a class="page-link"
												href="adminitemstockList?cPage=${endPage+1 }&category=${category}&search=${search}">��������</a></li>
										</c:when>
										<c:otherwise>
											<li>
											<li><a class="page-link"
												href="adminitemstockList?cPage=${totalPage}&category=${category}&search=${search}">��������</a></li>
										</c:otherwise>
									</c:choose>
								</ul>
								<%--       <input type="hidden" name="cPage" value="${cPage}"> --%>
								<%--       <input type="hidden" name="nowPage" value="${nowPage}"> --%>
								<%--       <input type="hidden" name="category" value="${category}"> --%>
								<%--       <input type="hidden" name="search" value="${search}"> --%>
							</nav>
						</form>
					</th>
				</tr>
				<tr>
					<th colspan="10" style="text-align: right;">
						<form class="d-flex" action="adminitemstockList" method="get">
							<input type="hidden" name="searchreset" value="1"> <select
								class="btn btn-outline-secondary" name="category" id="category">
								<option value="">--����--</option>
								<option value="����">����</option>
								<option value="����">����</option>
								<option value="����">����</option>
							</select> <input class="form-control me-2" name="search" type="text"
								placeholder="Search.." style="width: 300px">
							<button class="btn btn-outline-secondary" type="submit">Search</button>
						</form>
					</th>
				</tr>
				<tr>
					<td colspan="10" style="text-align: right;">
						<%-- jQuery�� ����ؼ� ���ۼ� ������ �̵���Ű��
              - id �߰��ϱ� : selector�� ����ؼ� �ڵ鸵
              - footer.jsp 
       --%>
						<button type="button" class="btn btn-outline-secondary"
							id="additembtn">��ǰ���</button>
					</td>
				</tr>
			</tfoot>
		</table>
	</div>
</article>
