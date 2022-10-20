<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="mycontext" value="${pageContext.request.contextPath}" />

<section class="path">
   <div class="container">Home <span>&nbsp;>&nbsp;</span> <b>친구찾기</b></div>
</section>

<%@ include file="/WEB-INF/views/community/include/recommendfriends.jsp" %>

<section class="container content">
	<ul class="category">
		<li><a href="${mycontext}/community/communitylist?cPage=1">전체</a></li>
		<li><a href="${mycontext}/community/communitylist_dog?cPage=1">강아지</a></li>
		<li><a href="${mycontext}/community/communitylist_cat?cPage=1" class="on">고양이</a></li>
	</ul>
	
	<ul class="animallist">
		<c:forEach var="vo" items="${communitylist_cat}">
			<li>
				<a href="${mycontext}/community/communitydetail?anum=${vo.animal_num}&friendId=${vo.member_id}">
					<div class="imgbox">
						<img src="${mycontext}/resources/animalimage/${vo.animal_img1}">
					</div>
					<div class="txtbox">
						<h3>${vo.animal_name}</h3>
						<p>
							<span>품종 :</span> ${vo.cate_kind} <br> 
							<span>나이 :</span> ${vo.animal_age}살 <br> 
							<span>성별 :</span> ${vo.animal_gender}컷
						</p>
					</div>
				</a>
			</li>
		</c:forEach>
	</ul>
	<ul class="paging">
		<c:choose>
			<c:when test="${startPage < 6}">
				<li class="disable">이전</li>
			</c:when>
			<c:otherwise>
				<li><a href="communitylist_cat?cPage=${startPage-1}">이전</a></li>
			</c:otherwise>
		</c:choose>
		<c:forEach varStatus="i" begin="${startPage}" end="${endPage}"
			step="1">
			<c:choose>
				<c:when test="${i.index == nowPage}">
					<li class="now">${i.index}</li>
				</c:when>
				<c:otherwise>
					<li><a href="communitylist_cat?cPage=${i.index}">${i.index}</a></li>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		<c:choose>
			<c:when test="${endPage >= totalPage}">
				<li class="disable">다음</li>
			</c:when>
			<c:otherwise>
				<li><a href="communitylist_cat?cPage=${endPage+1}">다음</a></li>
			</c:otherwise>
		</c:choose>
	</ul>
</section>


