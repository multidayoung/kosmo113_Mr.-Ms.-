<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="mycontext" value="${pageContext.request.contextPath}" />

<section class="path">
   <div class="container">Home <span>&nbsp;>&nbsp;</span> <b>커뮤니티</b></div>
</section>

<section class="container content">
   <form action="iboardIn" method="post" enctype="multipart/form-data">
      <%-- 사용자의 아이피를 받아와서 보이지 않는 속성으로 reip 란 파라미터로 지정한다.
         <input type="hidden" name="bnum" value="<%=request.getRemoteAddr()%>">--%>

      <div class="form-group">
         <label for="board_num">제목</label> 
         <input type="text" class="form-control" id="board_title" placeholder="제목 입력(4-50)" name="board_title" maxlength="100" required="required" pattern=".{4,100}">
      </div>

      <div class="form-group">
         <label for="board_cont">내용</label>
         <textarea class="form-control" rows="5" id="board_cont" name="board_cont" placeholder="내용 작성"></textarea>
      </div>

      <div class="form-group">
         <label class="col-sm-2 col-form-label">이미지 업로드</label>
         <div class="col-sm-10 mb-3">
            <input type="file" name="mfile" id="mfile" class="form-control">
         </div>
         <div class="text-center">
            <img src="${mycontext}/resources/boardimg/noimg.png" id="imgx">
         </div>
      </div>

      <div class="form-group" style="text-align: right; margin-top: 10px;">
         <button type="submit" class="btn btn-primary">등록</button>
         <button type="button" class="btn btn-outline-secondary" id="rebtn" onclick="location.href='contentSearch'">취소</button>
      </div>
   </form>
</section>