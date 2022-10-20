<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="mycontext" value="${pageContext.request.contextPath}" />

<section class="path">
   <div class="container">Home <span>&nbsp;>&nbsp;</span> <b>Ŀ�´�Ƽ</b></div>
</section>

<section class="container content">
   <form action="iboardModify" method="post" enctype="multipart/form-data">
      <input type="hidden" id="board_num" name="board_num" value="${ibvo.board_num }">
         <div class="form-group">
            <label for="board_title">����</label> 
            <input type="text" class="form-control" id="board_title" name="board_title" value="${ibvo.board_title }">
         </div>

         <div class="form-group">
            <label for="board_cont">����</label>
            <textarea class="form-control" rows="5" id="board_cont" name="board_cont">${ibvo.board_cont}</textarea>
         </div>

         <div class="form-group">
            <label class="col-sm-2 col-form-label">�̹��� ���ε�</label>
            <div class="col-sm-10 mb-3">
               <input type="file" name="mfile" id="mfile" class="form-control">
               <input type="hidden" name="board_img" value="${ibvo.board_img}">
            </div>
            <div class="text-center">
               <img src="${mycontext}/resources/boardimg/${ibvo.board_img}" id="imgx">
            </div>
         </div>

         <div class="form-group" style="text-align: right; margin-top: 10px;">
            <input type="submit" class="btn btn-outline-secondary" id="cfbtn" value="�����Ϸ�">
            <button type="button" class="btn btn-outline-secondary" id="rebtn" onclick="location.href='contentSearch'">�������</button>
         </div>
      </form>
   </div>
</section>