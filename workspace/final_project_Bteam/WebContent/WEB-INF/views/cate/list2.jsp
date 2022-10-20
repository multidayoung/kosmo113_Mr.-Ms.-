<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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

th {
	text-align: center;
}

li {
	list-style: none;
	float: left;
	padding: 6px;
}

.w-btn-gray-outline:hover {
	background-color: #a3a1a1;
	color: #e3dede;
}

.w-btn-outline:hover {
	letter-spacing: 2px;
	transform: scale(1.2);
	cursor: pointer;
}

.w-btn-outline:active {
	transform: scale(1.5);
}

.w-btn-outline {
	position: relative;
	padding: 5px 10px;
	border-radius: 15px;
	font-family: "paybooc-Light", sans-serif;
	box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
	text-decoration: none;
	font-weight: 600;
	transition: 0.25s;
}
</style>
<section class="container content">
<%--페이징 리스트 --%>
<form role="form" method="get">
	<article>
		<div class="container">
			<header>
				<h1>종 리스트</h1>
			</header>

			<ul class="list-unstyled">
				<li class="border-top my-3"></li>
			</ul>
			<button type="button" class="w-btn-outline w-btn-gray-outline"
				id="rebtn" onclick="location.href='list'">개</button>
			<button type="button" class="w-btn-outline w-btn-gray-outline"
				id="rebtn" onclick="location.href='list2'">고양이</button>
		</div>
		<ul class="list-unstyled">
			<li class="border-top my-3"></li>
		</ul>
		<div>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>번호</th>
						<th>이름</th>
						<th>품종 사진</th>
						<th>품종 상세보기</th>
					</tr>
				</thead>
				<tbody>
					<%-- for start --%>
					<c:forEach var="e" items="${list }">
						<tr>
							<td>${e.cate_num }</td>
							<td><a href="cateDetail?cate_num=${e.cate_num }">${e.cate_kind }</a></td>
							<td><a href="cateDetail?cate_num=${e.cate_num }"><img
									src="${e.cate_img }" /></a></td>
							<td>${e.cate_detail }</td>
						</tr>
					</c:forEach>
					<%-- for end --%>
				</tbody>



			</table>
			<div class="search">
				<select name="searchType">
					<option value="n"
						<c:out value="${scri.searchType == null ? 'selected' : ''}"/>>-----</option>
					<option value="t"
						<c:out value="${scri.searchType eq 't' ? 'selected' : ''}"/>>제목</option>
					<option value="c"
						<c:out value="${scri.searchType eq 'c' ? 'selected' : ''}"/>>내용</option>
					<option value="w"
						<c:out value="${scri.searchType eq 'w' ? 'selected' : ''}"/>>작성자</option>
					<option value="tc"
						<c:out value="${scri.searchType eq 'tc' ? 'selected' : ''}"/>>제목+내용</option>
				</select> <input type="text" name="keyword" id="keywordInput"
					value="${scri.keyword}" />

				<button id="searchBtn" type="button">검색</button>
				<script>
					$(function() {
						$('#searchBtn').click(
								function() {
									self.location = "list"
											+ '${pageMaker.makeQuery(1)}'
											+ "&searchType="
											+ $("select option:selected").val()
											+ "&keyword="
											+ encodeURIComponent($(
													'#keywordInput').val());
								});
					});
				</script>
			</div>

		</div>
		<div>
			<ul>
				<c:if test="${pageMaker.prev}">
					<li><a
						href="list2${pageMaker.makeSearch(pageMaker.startPage - 1)}">이전</a></li>
				</c:if>

				<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}"
					var="idx">
					<li><a href="list2${pageMaker.makeSearch(idx)}">${idx}</a></li>
				</c:forEach>

				<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
					<li><a
						href="list2${pageMaker.makeSearch(pageMaker.endPage + 1)}">다음</a></li>
				</c:if>
			</ul>
		</div>
	</article>
</form>
</section>