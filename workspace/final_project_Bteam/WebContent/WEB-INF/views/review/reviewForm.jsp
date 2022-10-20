<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="mycontext" value="${pageContext.request.contextPath}" />

<section class="container content">
   <form action="reviewIn" method="post">
      <input type="hidden" name="ord_no" id="ord_no" value="${vo.ord_no}">
      <input type="hidden" name="r_name" id="r_name" value="${ivo.i_name}">
      <div class="reviewprd">
         <div><img src="${ivo.i_img}"></div>
         <div >${ivo.i_name}</div>
         <input type="hidden" name="i_no" id="i_no" value="${ivo.i_no}">
      </div>
      
      <div class="reviewform">
         <div class="tit">평점</div>
         <div>
            <select name="r_score" id="r_score" class="form-select">    
               <option value="1">1</option>    
               <option value="2">2</option>    
               <option value="3">3</option>
               <option value="4">4</option>
               <option value="5">5</option>
            </select>
         </div>
      </div>
      
      <div class="reviewform">
         <div class="tit">내용</div>
         <div>
            <textarea id="r_comm" name="r_comm" required="required" class="form-control">${vo.r_comm}</textarea>
         </div>
      </div>

      <div class="reviewBtn">
         <button type="submit" class="btn">작성하기</button>
      </div>
   </form>
</section>