<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="mycontext" value="${pageContext.request.contextPath}" />

<section class="path">
   <div class="container">Home <span>&nbsp;>&nbsp;</span> ���θ� <span>&nbsp;>&nbsp;</span> <b>��õ��ǰ</b></div>
</section>

<section class="container content">
<h1>&lt��õ��ǰ&gt</h1>
   <ul class="itemlist">
      <c:forEach var="pl" items="${pList}">
         <li>
            <a href="itemDetail?s_no=${pl.i_no}">
                  <img src="${pl.i_img}" style="height:230px;">
               <div class="txtbox">
                  <p class="name">${pl.i_name}</p>
                  <p class="price">${pl.i_price}��</p>
               </div>
            </a>
         </li>
      </c:forEach>
   </ul>
</section>
