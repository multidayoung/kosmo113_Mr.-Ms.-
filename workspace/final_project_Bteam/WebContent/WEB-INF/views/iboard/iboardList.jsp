<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="mycontext" value="${pageContext.request.contextPath}" />

<section class="path">
   <div class="container">Home <span>&nbsp;>&nbsp;</span> <b>커뮤니티</b></div>
</section>

<section class="container content">
      <form action="contentSearch" id="contentSearchTag" method="get" class="searchForm">
          <select name="seacrchSelect">
             <option value ="selectedT" selected>제목</option>
             <option value ="selectedI">아이디</option>
             <option value ="selectedC">내용</option>
          </select>
         <input type="text" id="contentSearchID" name="content" placeholder="검색할 내용을 입력하세요." value="${content}">
         <input type="submit" value="검색" id="ccbSubmitBtn" class="btn btn-primary" />
      </form>
      
      <ul class="boardlist">
         <c:forEach var="e" items="${list}">
            <li>
               <a href="${mycontext}/iboardDetail?board_num=${e.board_num}">
                     <div class="writerinfo">
                        <div><img src="${mycontext}/resources/animalimage/${e.animal.animal_img1}" alt="작성자 이미지"></div>
                        <div>${e.member_id}</div>
                     </div>
                     <div class="imgbox">
                        <img src="${mycontext}/resources/boardimg/${e.board_img}" id="imgx" alt="첨부한 이미지">
                     </div>
                     <div class="btnbox">
                        <img src="${mycontext}/resources/image/eye_icon.png"> 조회수 : ${e.board_hit}
                     </div>
                     <div class="txtbox"><p>${e.board_cont}</p></div>
               </a>
            </li>
	       </c:forEach>
	   </ul>
   
   <div class="writeBtn">
      <c:if test="${sessionScope.sessionID != null }">
            <input type="button" id="Crebtn" value="글작성" name="write" onclick="location.href='iboardForm'"/>
         </c:if>
   </div>
      
   <ul class="paging">
         <c:choose>
            <c:when test="${startPage < 11 }">
               <li class="disable">이전</li>
            </c:when>
            <c:otherwise>
               <li>
                  <a href="${pageContext.request.contextPath}/contentSearch?cPage=${startPage - 1 }&content=${content}">이전</a>
               </li>
            </c:otherwise>
         </c:choose>
         <c:forEach varStatus="i" begin="${startPage }" end="${endPage }" step="1">
            <c:choose>
               <c:when test="${i.index == nowPage }">
                     <li class="now">${i.index }</li>
               </c:when>
               <c:otherwise>
                     <li>
                        <a href="${pageContext.request.contextPath}/contentSearch?cPage=${i.index }&content=${content}">${i.index }</a>
                     </li>
               </c:otherwise>
            </c:choose>
         </c:forEach>
         <c:choose>
            <c:when test="${endPage >= totalPage }">
               <li class="disable">다음</li>
            </c:when>
            <c:when test="${totalPage > (nowPage+pagePerBlock) }">
               <li>
                     <a href="${pageContext.request.contextPath}/contentSearch?cPage=${start + pagePerBlock }&content=${content}">다음</a>
               </li>
            </c:when>
            <c:otherwise>
               <li>
                     <a href="${pageContext.request.contextPath}/contentSearch?cPage=${start + pagePerBlock }&content=${content}">다음</a>
               </li>
            </c:otherwise>
         </c:choose>
      </ul>
</section>