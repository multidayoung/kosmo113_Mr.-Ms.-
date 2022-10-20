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
</style>

<form role="form" method="get">
<article>
	<div class="container">
		<header>
			<h1>상품목록</h1>
		</header>
		<ul class="list-unstyled">
			<li class="border-top my-3"></li>
		</ul>
		
		<a href="slist"><input type="text" value="반려캐리어" style="text-align: center;"></a>
		<a href="slist2"><input type="text" value="매트" style="text-align: center;"></a>
		<a href="slist3"><input type="text" value="안전문" style="text-align: center;"></a>
		<a href="slist4"><input type="text" value="계단" style="text-align: center;"></a>
		
		<ul class="list-unstyled">
			<li class="border-top my-3"></li>
		</ul>
		</div>
		<div>
		
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>상품번호</th>
						<th>상품이미지</th>
						<th>상품명</th>
					</tr>
				</thead>
				<tbody>
					<%-- for start --%>
					<c:forEach var="e" items="${list }">
						<tr>
							<td>${e.shopping_mall_num }</td>
							<td><img src="${e.shopping_mall_img }"/></td>
							<td><a href="shopDetail?shopping_mall_num=${e.shopping_mall_num }">${e.shopping_mall_name }</a></td>
						</tr>
					</c:forEach>
					<%-- for end --%>
				</tbody>
			</table>	
			
				
	<div class="search">
    <select name="searchType">
      <option value="n"<c:out value="${scri.searchType == null ? 'selected' : ''}"/>>-----</option>
      <option value="t"<c:out value="${scri.searchType eq 't' ? 'selected' : ''}"/>>제목</option>
      <option value="c"<c:out value="${scri.searchType eq 'c' ? 'selected' : ''}"/>>내용</option>
      <option value="w"<c:out value="${scri.searchType eq 'w' ? 'selected' : ''}"/>>작성자</option>
      <option value="tc"<c:out value="${scri.searchType eq 'tc' ? 'selected' : ''}"/>>제목+내용</option>
    </select>

    <input type="text" name="keyword" id="keywordInput" value="${scri.keyword}"/>

    <button id="searchBtn" type="button">검색</button>
    <script>
      $(function(){
        $('#searchBtn').click(function() {
          self.location = "list" + '${pageMaker.makeQuery(1)}' + "&searchType=" + $("select option:selected").val() + "&keyword=" + encodeURIComponent($('#keywordInput').val());
        });
      });   
    </script>
  </div>

		
		<div>
				<ul>
					<c:if test="${pageMaker.prev}">
						<li><a
							href="slist${pageMaker.makeSearch(pageMaker.startPage - 1)}">이전</a></li>
					</c:if>

					<c:forEach begin="${pageMaker.startPage}"
						end="${pageMaker.endPage}" var="idx">
						<li><a href="slist${pageMaker.makeSearch(idx)}">${idx}</a></li>
					</c:forEach>

					<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
						<li><a
							href="slist${pageMaker.makeSearch(pageMaker.endPage + 1)}">다음</a></li>
					</c:if>
				</ul>
			</div>
	</div>
</article>
</form>