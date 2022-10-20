<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="mycontext" value="${pageContext.request.contextPath}" />

	<ul class="category">
		<li><a href="${mycontext}/community/communitylist">전체</a></li>
		<li><a href="${mycontext}/community/communitylist_dog">개</a></li>
		<li><a href="${mycontext}/community/communitylist_cat">고양이</a></li>
	</ul>