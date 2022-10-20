<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%--ctrl+f �� content�� bcon���� ��ġ�� ������� ������... --%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
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
 .form-control {
 	width:70%;
 }
</style>
<section class="container content">
	<header>
		<h1>�� ����Ʈ</h1>
	</header>
	<ul class="list-unstyled">
		<li class="border-top my-3"></li>
	</ul>
	<div class="container">

		<%-- boardDetail ��� �� �ڸ�. --%>
		<form action="cateUpdate" method="post">
		
		<input type="hidden" id="cate_num" name="cate_num" value="${cvo.cate_num }">
		
		
		<label for="cate_img">ǰ�� ����</label>
		<div class="form-group">
			<img src="${cvo.cate_img }"> 
		</div>
		
		<div class="form-group">
			<label for="cate_kind">�̸�</label> 
			<input type="text" class="form-control" name="cate_kind" id="cate_kind" value="${cvo.cate_kind }" 
			readonly="readonly">
		</div>

		

		<div class="form-group">
			<label for="cate_detail">�󼼺���</label> 
			<input type="text" class="form-control" id="cate_detail" name="cate_detail" value="${cvo.cate_detail }" 
			readonly="readonly">
		</div>

		<div class="form-group" style="text-align: right; margin-top: 10px;">
			<button type="button" class="w-btn-outline w-btn-gray-outline"
				onclick="location='list'">�������</button>
			<input type="submit" class="w-btn-outline w-btn-gray-outline" id="ubtn"
				value="����">
			<button type="button" class="w-btn-outline w-btn-gray-outline" id="dbtn"
				onclick="location.href='cateDel?cate_num=${cvo.cate_num }'">����</button>
		</div>
		</form>
	</div>
</section>