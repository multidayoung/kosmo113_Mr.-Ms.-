<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%--ctrl+f �� content�� bcon���� ��ġ�� ������� ������... --%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<article>
	<header>
		<h1>���θ� ����Ʈ</h1>
	</header>
	<ul class="list-unstyled">
		<li class="border-top my-3"></li>
	</ul>
	<div class="container">

		<%-- boardDetail ��� �� �ڸ�. --%>
		<form action="shopUpdate" method="post">
		
		<input type="hidden" id="shopping_mall_num" name="shopping_mall_num" value="${svo.shopping_mall_num }">
		
		<div class="form-group">
			<label for="cate_kind">�̸�</label> 
			<input type="text" class="form-control" name="shopping_mall_name" id="shopping_mall_name" value="${svo.shopping_mall_name }" 
			readonly="readonly">
		</div>

		<div class="form-group">
			<label for="cate_img">�̹���</label>
			<input type="text" class="form-control" name="shopping_mall_img" id="shopping_mall_img" value="${svo.shopping_mall_img }" 
			readonly="readonly">
			<img src="${svo.shopping_mall_img }"> 
		</div>

		<div class="form-group">
			<label for="cate_detail">ī�װ�</label> 
			<input type="text" class="form-control" id="shopping_mall_cate" name="shopping_mall_cate" value="${svo.shopping_mall_cate }" 
			readonly="readonly">
		</div>

		<div class="form-group" style="text-align: right; margin-top: 10px;">
			<button type="button" class="btn btn-primary"
				onclick="location='slist'">�������</button>
			<input type="submit" class="btn btn-outline-secondary" id="subtn"
				value="����">
			<button type="button" class="btn btn-outline-secondary" id="sdbtn"
				onclick="location.href='shopDel?shopping_mall_num=${svo.shopping_mall_num }'">����</button>
		</div>
		</form>
	</div>
</article>