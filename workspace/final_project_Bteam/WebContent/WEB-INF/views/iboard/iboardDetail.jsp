<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="mycontext" value="${pageContext.request.contextPath}" />

<section class="path">
   <div class="container">Home <span>&nbsp;>&nbsp;</span> <b>커뮤니티</b></div>
</section>

<section class="container content">
   <form action="iboardUpdate" method="post" enctype="multipart/form-data" class="boarddetail">
      <input type="hidden" id="board_num" name="board_num" value="${ibvo.board_num}">
      <input type="hidden" id="board_title" name="board_title" value="${ibvo.board_title}">
      <input type="hidden" id="board_cont" name="board_cont" value="${ibvo.board_cont}">
      
      <h2>${ibvo.board_title}</h2>
      <p class="wirte">작성자 : ${ibvo.member_id} | 작성날짜 : ${ibvo.board_date}</p>
      <div class="cont">
         <img src="${mycontext}/resources/boardimg/${ibvo.board_img}">
         <input type="hidden" id="board_img" name="board_img" value="${ibvo.board_img}">
         <p>${ibvo.board_cont}</p>
      </div>
      <div class="boarddetailbtn">
         <c:choose>
            <c:when test="${ibvo.member_id == sessionScope.sessionID }">
               <button type="submit" class="btn btn-secondary" id="ModiBtn">수정</button>
               <button type="button" class="btn btn-danger" id="DelBtn" onclick="location.href='iboardDel?board_num=${ibvo.board_num}'">삭제</button>
            </c:when>
         </c:choose>
         <button type="button" class="btn btn-primary" onclick="location='contentSearch'">목록</button>
      </div>
   </form>

   <table class="table table-sm mt-3">
      <thead>
         <tr>
            <td colspan="3" style="font-size:25px;">댓글</td>
         </tr>
      </thead>
      <tbody>
         <c:forEach var="comment" items="${comentList}">
            <form action="iupReply" method="post" id="form1" name="form1">
               <input type="hidden" name="board_num" value="${ibvo.board_num}">
               <tr>
                  <td style="vertical-align:middle; width:12%;">ID: ${comment.member_id}</td>
                  <td style="width:68%;">
                     <c:choose>
                        <c:when test="${comment.member_id == sessionScope.sessionID }">
                           <textarea type="text" name="board_content_cont" id="board_content_cont" style="width:100%;">${comment.board_content_cont}</textarea>
                        </c:when>
                        <c:otherwise>
                           ${comment.board_content_cont}
                        </c:otherwise>
                     </c:choose>
                  </td>
                  <td style="text-align:right; vertical-align:middle; width:20%;">
                     ${comment.board_content_date}
                     <input type="hidden" name="board_content_num" class="bcnum" value="${comment.board_content_num}"> 
                     <c:choose>
                        <c:when test="${comment.member_id == sessionScope.sessionID }">
                           <input type="submit" value="수정">
                           <input type="button" value="삭제" id="del" onclick="location.href='idelReply?board_content_num=' + ${comment.board_content_num } + '&board_num=' + ${ibvo.board_num}">
                        </c:when>
                     </c:choose>
                  </td>
               </tr>
            </form>
         </c:forEach>
      </tbody>
      <tfoot>
         <tr>
            <th colspan="4">
               <form action="ireply" id="ireply" method="get">
                  <c:choose>
                     <c:when test="${sessionScope.sessionID != null }">
                        <textarea id="board_content_cont" name="board_content_cont" cols="100" rows="3" placeholder="댓글을 입력하세요." required style="width:90%;"></textarea>
                        <input type="hidden" name="board_num" value="${ibvo.board_num}">
                        <input type="submit" value="댓글 등록" id="bcSubmitBtn" class="btn btn-secondary float-end" style="width:10%; height:74px;" />
                     </c:when>
                  </c:choose>
               </form>
            </th>
         </tr>
      </tfoot>
   </table>
</section>