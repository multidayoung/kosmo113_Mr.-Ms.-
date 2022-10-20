<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%> <%--ctrl+f 로 content를 bcon으로 고치다 여기까지 수정됨... --%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<article >
        <header>
            <h1>쇼핑몰 수정</h1>
        </header>
        <ul class="list-unstyled"><li class="border-top my-3"></li></ul>
        <div class="container">

<%-- boardDetail 들어 갈 자리. --%>

<form action="shopModify" method="post">

<input type="hidden" id="shopping_mall_num" name="shopping_mall_num" value="${svo.shopping_mall_num }">

<div class="form-group">
      <label for="shopping_mall_name">이름</label>
      <input type="text" class="form-control" id="shopping_mall_name" name="shopping_mall_name"  value="${svo.shopping_mall_name }" >
</div>

<div class="form-group">
   <label for="shopping_mall_img">이미지</label>
   <textarea class="form-control" rows="5" id="shopping_mall_img" name="shopping_mall_img" >
   ${svo.shopping_mall_img}</textarea>
   <img src="${svo.shopping_mall_img }"> 
</div>

<div class="form-group">
   <label for="shopping_mall_cate">카테고리</label>
   <textarea class="form-control" rows="5" id="shopping_mall_cate" name="shopping_mall_cate" >
   ${svo.shopping_mall_cate}</textarea>
</div>


<div class="form-group" style="text-align: right; margin-top: 10px;">
      <input type="submit" class="btn btn-outline-secondary" id="cfbtn" value="수정완료">
      <button type="button" class="btn btn-outline-secondary" 
      id="rebtn" onclick="location.href='slist'">목록으로</button>
</div>
</form>
</article>