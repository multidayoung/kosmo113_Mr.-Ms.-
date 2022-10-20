<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="mycontext" value="${pageContext.request.contextPath}"/>

<style>
	a:link{text-decoration: none;}
	table {text-align: center;}
	table img { width: 80px;}
		/* paging */
	
	table tfoot ol.paging {
		margin-left:30%;
	    list-style:none;
	}
	
	table tfoot ol.paging li {
	    float:left;
	    margin-right:8px;
	}
	
	table tfoot ol.paging li a {
	    display:block;
	    padding:3px 7px;
	    border:1px solid #00B3DC;
	    color:#2f313e;
	    font-weight:bold;
	}
	
	table tfoot ol.paging li a:hover {
	    background:#00B3DC;
	    color:white;
	    font-weight:bold;
	}
	
	.disable {
	    padding:3px 7px;
	    border:1px solid silver;
	    color:silver;
	}
	
	.now {
	   padding:3px 7px;
	    border:1px solid #ff4aa5;
	    background:#ff4aa5;
	    color:white;
	    font-weight:bold;
	}
</style>

<article >
	<script>
        console.log('startPage'+${startPage});
        console.log('endPage'+${endPage});
        console.log('nowPage'+${nowPage});
        console.log('pagePerBlock'+${pagePerBlock});
        console.log('pagePerBlock'+${totalPage});
	</script>
	
<header>
    <h1>Member List</h1>
</header>
<ul class="list-unstyled"><li class="border-top my-3"></li></ul>

<div>

<%-- �����丵 �ؾ� �� --%>
<p  class="list-unstyled"><c:if test="${cnt != null}"> <c:if test="${cMsg != null}">${cMsg}</c:if>ȸ���� : ${cnt} / <c:if test="${sMsg != null}">�˻�ID : ${sMsg}</c:if></c:if></p>
<table class="table table-bordered">
    <thead>
      <tr>
<%-- MEM_NO, MEM_ID, MEM_PW, MEM_NAME, MEM_JUBUN,
 MEM_PHONE, MEM_ADR, MEM_DATE --%>
        <th>��ȣ</th>
        <th>���̵�</th>
        <th>�̸�</th>
        <th>�ֹε�Ϲ�ȣ</th>
        <th>��ȭ��ȣ</th>
        <th>�ּ�</th>
        <th>���Գ�¥</th>
      </tr>
    </thead>
    
    <tbody>
    <%-- for start --%>
     <c:forEach var="e" items="${list }">
      <tr>
        <td>${e.member_no}</td>
        <td><a href="memberDetail?num=${e.member_no }">${e.member_id }</a></td>
        <td>${e.member_name }</td>
        <td>${e.member_phone }</td>
        <td>${e.member_addr}</td>
        <td>${e.member_date}</td>
      </tr>
     </c:forEach>
     <%-- for end --%> 
    </tbody>
    
<tfoot>
<%-- Start! --%>
<tr><td colspan="7" >
<ol class="paging" >
<c:choose>
<c:when test="${startPage < 6}">
<li class="disable">��������</li>
</c:when>
<c:otherwise>
<li><a href="adminMemberList?cPage=${startPage-1}&search=${search}">��������</a></li>
</c:otherwise>
</c:choose>

<c:forEach varStatus="i" begin="${startPage}" end="${endPage }" step="1" >
	<c:choose>
	<c:when test="${i.index == nowPage}">
	 <li class="now">${i.index}</li>
	</c:when>
	<c:otherwise>
	<li><a href="adminMemberList?cPage=${i.index}&search=${search}">${i.index}</a></li>
	</c:otherwise>
	</c:choose> 
</c:forEach>
<c:choose>
	<c:when test="${endPage >= totalPage }">
	<li class="disable">��������</li>
	</c:when>
	<c:when test="${totalPage > (nowPage+pagePerBlock)}">
	<li><li><a href="adminMemberList?cPage=${endPage+1 }&search=${search}">��������</a></li>
	</c:when>
	<c:otherwise>
     <li><li><a href="adminMemberList?cPage=${totalPage }&search=${search}">��������</a></li>
	</c:otherwise>
</c:choose>

</ol>
</td>
</tr>

<tr>
<td colspan="7" >
  <form action="adminMemberList" method="get">
	<input type="hidden" name="searchReset" value="1">
	<input class="form-control me-2" type="text" id="search" name="search" value="${search}" placeholder="Search.." style="width: 300px; float: left;">
	<button class="btn btn-outline-secondary" type="submit" id="searchBtn" style="width: 80px; float: left;">Search</button><br>
  </form><br>
</td>
</tr>
</tfoot>
</table>



<div>
    <h1>VIP Member</h1>
<table class="table table-bordered">
    <thead>
      <tr>
        <th>����</th>
        <th>ȸ����ȣ</th>
        <th>ȸ����</th>
        <th>�� ���� ����</th>
      </tr>
    </thead>
    
    <tbody>
     <c:forEach var="e" items="${listAop }">
      <tr>
        <td>${e.rn }</td>
        <td>${e.member_no }</td>
        <td>${e.mvo.member_name }</td>
        <td>${e.ordCnt }</td>
      </tr>
     </c:forEach>
    </tbody>
</table>
</div>
</div>
</article>







