<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%--ctrl+f 로 content를 bcon으로 고치다 여기까지 수정됨... --%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<article>
	<header>
		<h1>쇼핑몰 리스트</h1>
	</header>
	<ul class="list-unstyled">
		<li class="border-top my-3"></li>
	</ul>
	<div class="container">

		<%-- boardDetail 들어 갈 자리. --%>
		<form action="shopUpdate" method="post">
		
		<input type="hidden" id="shopping_mall_num" name="shopping_mall_num" value="${svo.shopping_mall_num }">
		
		<div class="form-group">
			<label for="cate_kind">이름</label> 
			<input type="text" class="form-control" name="shopping_mall_name" id="shopping_mall_name" value="${svo.shopping_mall_name }" 
			readonly="readonly">
		</div>

		<div class="form-group">
			<label for="cate_img">이미지</label>
			<input type="text" class="form-control" name="shopping_mall_img" id="shopping_mall_img" value="${svo.shopping_mall_img }" 
			readonly="readonly">
			<img src="${svo.shopping_mall_img }"> 
		</div>

		<div class="form-group">
			<label for="cate_detail">카테고리</label> 
			<input type="text" class="form-control" id="shopping_mall_cate" name="shopping_mall_cate" value="${svo.shopping_mall_cate }" 
			readonly="readonly">
		</div>

		<div class="form-group" style="text-align: right; margin-top: 10px;">
			<button type="button" class="btn btn-primary"
				onclick="location='slist'">목록으로</button>
			<input type="submit" class="btn btn-outline-secondary" id="subtn"
				value="수정">
			<button type="button" class="btn btn-outline-secondary" id="sdbtn"
				onclick="location.href='shopDel?shopping_mall_num=${svo.shopping_mall_num }'">삭제</button>
		</div>
		</form>
	</div>
</article>