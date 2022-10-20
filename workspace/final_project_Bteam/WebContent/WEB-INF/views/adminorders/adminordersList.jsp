<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="mycontext" value="${pageContext.request.contextPath}" />

<style>
a:link {
	text-decoration: none;
}

table img {
	width: 80px;
}
/* paging */
table tfoot ol.paging {
	margin-left: 30%;
	list-style: none;
}

table tfoot ol.paging li {
	float: left;
	margin-right: 8px;
}

table tfoot ol.paging li a {
	display: block;
	padding: 3px 7px;
	border: 1px solid #00B3DC;
	color: #2f313e;
	font-weight: bold;
}

table tfoot ol.paging li a:hover {
	background: #00B3DC;
	color: white;
	font-weight: bold;
}

.disable {
	padding: 3px 7px;
	border: 1px solid silver;
	color: silver;
}

.now {
	padding: 3px 7px;
	border: 1px solid #ff4aa5;
	background: #ff4aa5;
	color: white;
	font-weight: bold;
}
</style>

<article>
	<script>
		$(function() {
			// 			$('#select1').change(function() {
			// 				$('#categoryTarget').submit();
			// 			});
		});
	</script>

	<header>
		<h1>AdminOrders List</h1>
	</header>
	<ul class="list-unstyled">
		<li class="border-top my-3"></li>
	</ul>
	<div>

		<%-- �����丵 �ؾ� �� --%>
		<p class="list-unstyled">
			<c:if test="${cnt != null}">
				<c:if test="${cMsg != null}">${cMsg}</c:if> �ֹ��� : ${cnt} / <c:if
					test="${sMsg != null}">�˻��� : ${sMsg}</c:if>
			</c:if>
		</p>
		<table class="table table-bordered" style="text-align: center;">
			<thead>
				<tr>
					<%-- ������ �α��� �� ���Ÿ�� �÷� --%>
					<th>NO</th>
					<th>�ֹ� ��ȣ</th>
					<th>�ֹ���</th>
					<th>ȸ�� �̸�</th>
					<th>��ǰ��</th>
					<th>�ֹ� ����</th>
					<th>�� �ֹ� �ݾ�</th>
					<th>�ֹ� ����</th>
					<th>���� ���</th>
					<th>�ֹ���¥</th>
					<th>���ɳ�¥</th>
					<th>�ֹ�����</th>
				</tr>
			</thead>
			<tbody>
				<%-- for start --%>
				<c:forEach var="e" items="${list}">
					<tr>
						<%-- ������ �α��� �� ���Ÿ�� �÷� --%>
						<td>${e.r_num }</td>
						<td><a href="adminDetailForm?ord_no=${e.ord_no }">${e.ord_no }</a></td>
						<td>${e.ord_name }</td>
						<td>${e.mvo.member_name }</td>
						<td>${e.ivo.i_name }</td>
						<td>${e.ord_count}</td>
						<td>${e.totalPrice }</td>
						<td>${e.i_status }</td>
						<td>${e.ord_address}</td>
						<td>${e.ord_date }</td>
						<td>${e.ord_edate }</td>
						<td>
							<form class="d-flex" action="adminordersUpdate" method="post">
								<%-- ����Ʈ ������ ���� �ʿ��� �÷� --%>
		                        <input type="hidden" id="member_id" name="member_id" value="${e.mvo.member_id}">
		                        <input type="hidden" id="totalPrice" name="totalPrice" value="${e.totalPrice}">
		                        
								<input type="hidden" id="ord_no" name="ord_no" value="${e.ord_no}"> 
								<input type="hidden" id="ord_name" name="ord_name" value="${e.ord_name }"> 
								<input type="hidden" id="ord_address" name="ord_address" value="${e.ord_address }"> 
								<select class="btn btn-outline-secondary" name="i_status">
									<option value="">--����--</option>
									<option value="��ǰ�غ���">��ǰ�غ���</option>
									<option value="�߼ۿϷ�">�߼ۿϷ�</option>
									<option value="�ֹ����">�ֹ����</option>
								</select>
								<button class="btn btn-outline-secondary" type="submit">����</button>
							</form>
							<form class="d-flex" action="adminordersDelete" method="get">
								<input type="hidden" name="ord_no" value="${e.ord_no}" />
								<button class="btn btn-outline-secondary" type="submit">����</button>
							</form>
						</td>
					</tr>
				</c:forEach>
				<%-- for end --%>
			</tbody>
			<tfoot>

				<%-- Start! --%>
				<tr>
					<td colspan="11">
						<ol class="paging">
							<c:choose>
								<c:when test="${startPage < 6}">
									<li class="disable">��������</li>
								</c:when>
								<c:otherwise>
									<li><a
										href="adminordersList?cPage=${startPage-1}&category=${category}&search=${search}">��������</a></li>
								</c:otherwise>
							</c:choose>

							<c:forEach varStatus="i" begin="${startPage}" end="${endPage }"
								step="1">
								<c:choose>
									<c:when test="${i.index == nowPage}">
										<li class="now">${i.index}</li>
									</c:when>
									<c:otherwise>
										<li><a
											href="adminordersList?cPage=${i.index}&category=${category}&search=${search}">${i.index}</a></li>
									</c:otherwise>
								</c:choose>
							</c:forEach>
							<c:choose>
								<c:when test="${endPage >= totalPage }">
									<li class="disable">��������</li>
								</c:when>
								<c:when test="${totalPage > (nowPage+pagePerBlock)}">
									<li>
									<li><a
										href="adminordersList?cPage=${endPage+1}&category=${category}&search=${search}">��������</a></li>
								</c:when>
								<c:otherwise>
									<li>
									<li><a href="adminordersList?cPage=${totalPage }">��������</a></li>
								</c:otherwise>
							</c:choose>

						</ol>
					</td>
				</tr>
				<tr>
					<th colspan="11" style="text-align: right;">
						<form class="d-flex" action="adminordersList" method="get"
							id="categoryTarget" name="category">
							<input type="hidden" name="searchreset" value="1"> <select
								class="btn btn-outline-secondary" name="category" id="select1">
								<option value="">--����--</option>
								<option value="��ǰ�غ���">��ǰ�غ���</option>
								<option value="�߼ۿϷ�">�߼ۿϷ�</option>
								<option value="�����">�����</option>
								<option value="��ۿϷ�">��ۿϷ�</option>
								<option value="�ֹ����">�ֹ����</option>
							</select> <input class="form-control me-2" name="search" type="text"
								placeholder="Search.." style="width: 300px">
							<button class="btn btn-outline-secondary" type="submit">Search</button>
						</form>
					</th>
				</tr>
			</tfoot>
		</table>

	</div>
</article>

<script>
	$(function() {

		$('#delbtn').click(function() {
			location = "adminordersDelete?ord_no=${e.ord_no}";
		});
	});
</script>






