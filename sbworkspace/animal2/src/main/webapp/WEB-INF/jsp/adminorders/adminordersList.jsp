<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="mycontext" value="${pageContext.request.contextPath}" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>
a:link {
	text-decoration: none;
}

table img {
	width: 80px;
}

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

li {
	list-style: none;
	float: left;
	padding: 6px;
}

.search {
	/* 생략 */
	background-color: white;
	height: 40px;
	padding: 10px;
	width: 350px;
}

.searchBtn {
	color: #EDEDED;
	float: right;
	width: 25px;
	height: 25px;
	border-radius: 50%;
	background: #949BA0;
	display: flex;
	align-items: center;
	justify-content: center;
}

.search-txt {
	padding: 0;
	background: none;
	border: none;
	outline: none;
	color: black;
	font-size: 15px;
	line-height: 20px;
}

.search {
	/* 생략 */
	border-radius: 40px;
	/* 추가 */
}
</style>
<form role="form" method="get">
	<article>
		<script>
			$(function() {
				// 			$('#select1').change(function() {
				// 				$('#categoryTarget').submit();
				// 			});
			});
		</script>

		<header>
			<h1>주문 배송 관리</h1>
		</header>
		<ul class="list-unstyled">
			<li class="border-top my-3"></li>
		</ul>
		<div>

			<%-- 리팩토링 해야 함 --%>
			<p class="list-unstyled">
				<c:if test="${cnt != null}">
					<c:if test="${cMsg != null}">${cMsg}</c:if> 주문수 : ${cnt} / <c:if
						test="${sMsg != null}">검색어 : ${sMsg}</c:if>
				</c:if>
			</p>
			<table class="table" style="text-align: center;">
				<thead>
					<tr>
						<%-- 관리자 로그인 시 구매목록 컬럼 --%>
						<th>주문 번호</th>
						<th>상품명</th>
						<th>주문 수량</th>
						<th>총 주문 금액</th>
						<th>주문 상태</th>
						<th>수령 장소</th>
						<th>주문날짜</th>
						<th>주문관리</th>
					</tr>
				</thead>
				<tbody>
					<%-- for start --%>
					<c:forEach var="e" items="${list}">
						<tr>
							<%-- 관리자 로그인 시 구매목록 컬럼 --%>
							<td>${e.ord_no }</td>
							<td>${e.ord_name}</td>
							<td>${e.ord_count}</td>
							<td>${e.totalPrice }</td>
							<td>${e.i_status }</td>
							<td>${e.ord_address}</td>
							<td>${e.ord_date }</td>
							<td>
								<form class="d-flex" action="adminordersUpdate" method="post">
									<input type="hidden" id="ord_no" name="ord_no"
										value="${e.ord_no }"> <input type="hidden"
										id="ord_name" name="ord_name" value="${e.ord_name }">
									<input type="hidden" id="ord_address" name="ord_address"
										value="${e.ord_address }"> <select
										class="btn btn-outline-secondary" name="i_status"
										id="i_status">
										<option value="상품준비중">--선택--</option>
										<option value="상품준비중">상품준비중</option>
										<option value="발송완료">발송완료</option>
										<option value="주문취소">주문취소</option>
									</select>
									<button class="btn btn-outline-secondary" type="submit">수정</button>
								</form>
								<form class="d-flex" action="adminordersDelete" method="get">
									<input type="hidden" name="ord_no" value="${e.ord_no}" />
									<button class="btn btn-outline-secondary" type="submit">삭제</button>
								</form>
							</td>
						</tr>
					</c:forEach>
					<%-- for end --%>
				</tbody>

				<tfoot>

				</tfoot>
				
				
			</table>


		</div>
		<div>
			<ul>
				<c:if test="${pageMaker.prev}">
					<li><a
						href="orderlist${pageMaker.makeSearch(pageMaker.startPage - 1)}">이전</a></li>
				</c:if>

				<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}"
					var="idx">
					<li><a href="orderlist${pageMaker.makeSearch(idx)}">${idx}</a></li>
				</c:forEach>

				<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
					<li><a
						href="orderlist${pageMaker.makeSearch(pageMaker.endPage + 1)}">다음</a></li>
				</c:if>
			</ul>
		</div>
		</div>
	</article>

	<script>
		$(function() {

			$('#delbtn').click(function() {
				location = "adminordersDelete?ord_no=${e.ord_no}";
			});
		});
	</script>
</form>





