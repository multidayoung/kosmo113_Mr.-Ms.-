<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<c:set var="mycontext" value="${pageContext.request.contextPath}" />

		<style>
			a:link {
				text-decoration: none;
			}

			table {
				text-align: center;
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

			li {
				list-style: none;
				float: left;
				padding: 6px;
			}
		</style>

		<article>
			<script>
				//console.log('startPage' + ${ startPage });
				//console.log('endPage' + ${ endPage });
				//console.log('nowPage' + ${ nowPage });
				//console.log('pagePerBlock' + ${ pagePerBlock });
				//console.log('pagePerBlock' + ${ totalPage });
			</script>

			<header>
			<div class="row" style="display: inline-block;" >
      <div class="tile_count">
        <div class="col-md-2 col-sm-4  tile_stats_count">
          <span class="count_top"><i class="fa fa-user"></i> Total Users</span>
          <div class="count" >${userCnt}</div>
        </div>
        <div class="col-md-2 col-sm-4  tile_stats_count">
          <span class="count_top"><i class="fa fa-clock-o"></i> Total Reviews </span>
          <div class="count">${reviewCnt }</div>
        </div>
        <div class="col-md-2 col-sm-4  tile_stats_count">
          <span class="count_top"><i class="fa fa-user"></i> Total Product</span>
          <div class="count green">${proCnt }</div>
        </div>
        <div class="col-md-2 col-sm-4  tile_stats_count">
          <span class="count_top"><i class="fa fa-user"></i> Total Catelist</span>
          <div class="count">${CatelistCnt }</div>
        </div>
        <div class="col-md-2 col-sm-4  tile_stats_count">
          <span class="count_top"><i class="fa fa-user"></i> Total Post</span>
          <div class="count">${postCnt }</div>
        </div>
        <div class="col-md-2 col-sm-4  tile_stats_count">
          <span class="count_top"><i class="fa fa-user"></i> Total Orders</span>
          <div class="count">${orderCnt }</div>
        </div>
      </div>
    </div>
				<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
					integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
					crossorigin="anonymous" referrerpolicy="no-referrer" />
				<h1>사용자 목록</h1>
			</header>
			<ul class="list-unstyled">
				<li class="border-top my-3"></li>
			</ul>

			<div>

				<p class="list-unstyled">
					<c:if test="${cnt != null}">
						<c:if test="${cMsg != null}">${cMsg}</c:if>ȸ���� : ${cnt} / <c:if test="${sMsg != null}">�˻�ID :
							${sMsg}</c:if>
					</c:if>
				</p>
				<form role="form" method="get">
					<table class="table">
						<thead>
							<tr>
									<th>아이디</th>
									<th>이름</th>
									<th>성별</th>
									<th>나이</th>
									<th>이메일</th>
									<th>전화번호</th>
									<th>주소</th>
									<th>가입날짜</th>
									
							</tr>
						</thead>

						<tbody>
								<c:forEach var="e" items="${list }">
									<tr>
										<td><a href="memberDetail?member_id=${e.member_id }">${e.member_id }</a></td>
										<td>${e.member_name }</td>
										<td>${e.member_gender }</td>
										<td>${e.member_age }</td>
										<td>${e.member_email }</td>
										<td>${e.member_phone }</td>
										<td>${e.member_addr}</td>
										<td>${e.member_date}</td>
										
									</tr>
								</c:forEach>
						</tbody>
				</form>


						</ol>
						</td>
						</tr>
						<form method="post" >
						     <div class="search">
							<select name="searchType" id="searchType">
								<option value="n" <c:out value="${scri.searchType == null ? 'selected' : ''}" />>-----
								</option>
								<option value="t" <c:out value="${scri.searchType eq 't' ? 'selected' : ''}" />>아이디
								</option>
								<option value="c" <c:out value="${scri.searchType eq 'c' ? 'selected' : ''}" />>이름
								</option>
								<option value="w" <c:out value="${scri.searchType eq 'w' ? 'selected' : ''}" />>성별
								</option>
								<option value="tc" <c:out value="${scri.searchType eq 'tc' ? 'selected' : ''}" />>아이디+이름
								</option>
							</select> <input type="text" class="search-txt" name="keyword" id="keywordInput"
								placeholder="검색어를 입력하세요" value="${scri.keyword}" />

							<button class="searchBtn" id="searchBtn" type="submit">
								<i class="fas fa-search"></i>
							</button>
							</form>
							<script>
							
								$(function () {
									$('#searchBtn')
										.click(
												function () {
													//alert('=>'+$('#searchType').val()+":"+$('#keywordInput').val());
													self.location = "list"
														+ '${pageMaker.makeQuery(1)}'
														+ "&searchType="
														+ $("select option:selected").val()
														+ "&keyword="
														+$('#keywordInput').val();
												});	

								});
							</script>
						</div>

			</div>
			</tfoot>
			</table>
			<div>
				<ul>
					<c:if test="${pageMaker.prev}">
						<li><a href="adminMemberList${pageMaker.makeSearch(pageMaker.startPage - 1)}">이전</a></li>
					</c:if>

					<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
						<li><a href="adminMemberList${pageMaker.makeSearch(idx)}">${idx}</a></li>
					</c:forEach>

					<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
						<li><a href="adminMemberList${pageMaker.makeSearch(pageMaker.endPage + 1)}">다음</a></li>
					</c:if>
				</ul>
			</div>
			</div>
		</article>