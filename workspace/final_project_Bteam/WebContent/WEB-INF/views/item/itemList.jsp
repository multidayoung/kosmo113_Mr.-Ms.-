<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="mycontext" value="${pageContext.request.contextPath}" />

<section class="path">
   <div class="container">Home <span>&nbsp;>&nbsp;</span> <b>쇼핑몰</b></div>
</section>

<section class="container content">

   <p class="count">상품수 : ${itemCount}개</p>
   
   <!-- 
   <form class="d-flex" action="itemList">
      <input type="hidden" name="searchreset" value="1"> <input
         type="hidden" name="gender" value="${g}"> <select
         class="btn btn-outline-secondary" name="category" id="category">
         <option value="">--선택--</option>
         <option value="상의">상의</option>
         <option value="하의">하의</option>
         <option value="잡화">잡화</option>
      </select> <input class="" type="text" placeholder="Search.."
         style="width: 300px" name="search">
      <button class="btn btn-outline-secondary" type="submit">Search</button>
   </form>
   -->
   
   <ul class="itemlist">
      <c:forEach var="e" items="${list}">
         <li>
            <a href="itemDetail?s_no=${e.i_no}">
               <div class="imgbox">
                  <!-- <img src="${mycontext}/resources/imagefile/${e.i_img}"> -->
                  <img src="${e.i_img}">
               </div>
               <div class="txtbox">
                  <p class="name">${e.i_name}</p>
                  <p class="price">${e.i_price}원</p>
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
            <li><a href="itemList?gender=${g}&cPage=${startPage-1}&category=${category}&search=${search}">이전</a></li>
         </c:otherwise>
      </c:choose>
      <c:forEach varStatus="i" begin="${startPage}" end="${endPage}" step="1">
         <c:choose>
            <c:when test="${i.index == nowPage}">
               <li class="now">${i.index}</li>
            </c:when>
            <c:otherwise>
               <li><a href="itemList?gender=${g}&cPage=${i.index}&category=${category}&search=${search}">${i.index}</a></li>
            </c:otherwise>
         </c:choose>
      </c:forEach>
      <c:choose>
         <c:when test="${endPage >= totalPage}">
            <li class="disable">다음</li>
         </c:when>
         <c:when test="${totalPage > (nowPage+pagePerBlock)}">
            <li><a href="itemList?gender=${g}&cPage=${endPage+1 }&category=${category}&search=${search}">다음</a></li>
         </c:when>
         <c:otherwise>
            <li><a href="itemList?gender=${g}&cPage=${totalPage}&category=${category}&search=${search}">다음</a></li>
         </c:otherwise>
      </c:choose>
   </ul>
</section>
<script>
$(function(){
   $('#dog').click(function(){
      form2.action="${mycontext}/item/itemList";
      form2.method="post";
      form2.submit()
      
   });
   
   $('#cat').click(function(){
      form3.action="${mycontext}/item/itemList";
      form3.method="post";
      form3.submit()
   });
});

</script>