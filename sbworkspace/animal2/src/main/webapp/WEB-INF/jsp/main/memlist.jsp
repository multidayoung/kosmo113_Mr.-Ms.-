<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%-- 본문 시작  --%>
<article >
	<c:forEach var="e" items="${list }">
		<p>${e.member_id } | ${e.member_name } | ${e.member_addr } | ${e.member_date }</p>
	</c:forEach>
</article>