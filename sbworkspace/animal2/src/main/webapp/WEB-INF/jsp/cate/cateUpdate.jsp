<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%> <%--ctrl+f �� content�� bcon���� ��ġ�� ������� ������... --%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.w-btn-gray-outline {
    border: 3px solid #a3a1a1;
    color: #6e6e6e;
}
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
 width: 50%;
 }
</style>
<article >
        <header>
            <h1>�� ����Ʈ</h1>
        </header>
        <ul class="list-unstyled"><li class="border-top my-3"></li></ul>
        <div class="container">

<%-- boardDetail ��� �� �ڸ�. --%>

<form action="cateModify" method="post">

<input type="hidden" id="cate_num" name="cate_num" value="${cvo.cate_num }">

<div class="form-group">
      <label for="cate_kind">�̸�</label>
      <input type="text" class="form-control" id="cate_kind" name="cate_kind"  value="${cvo.cate_kind }" >
</div>

<div class="form-group">
   <label for="cate_detail">�󼼺���</label>
   <textarea class="form-control" rows="5" id="cate_detail" name="cate_detail" >
   ${cvo.cate_detail}</textarea>
</div>


<div class="form-group" style="text-align: right; margin-top: 10px;">
      <input type="submit" class="w-btn-outline w-btn-gray-outline" id="cfbtn" value="�����Ϸ�">
      <button type="button" class="w-btn-outline w-btn-gray-outline" 
      id="rebtn" onclick="location.href='list'">�������</button>
</div>
</form>
</article>