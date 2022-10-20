<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="mycontext" value="${pageContext.request.contextPath}" />

<section class="path">
   <div class="container">Home <span>&nbsp;>&nbsp;</span> ���������� <span>&nbsp;>&nbsp;</span> <b>��ٱ���</b></div>
</section>

<section class="container content">
   <div class="mypage">
      <ul class="left_menu">
          <li><a href="${mycontext}/member/myPage">ȸ����������</a></li>
           <li><a href="#">��å����Ʈ</a></li>
           <li><a href="${mycontext}/animal/animalList">�ݷ���������Ʈ</a></li>
           <li><a href="${mycontext}/mypage/friendslist">ģ�����</a></li>
           <li><a href="${mycontext}/mypage/messageList">������</a></li>
           <li><a href="${mycontext}/orders/ordersList">���Ÿ��</a></li>
         <li><a href="${mycontext}/basket/basketList" class="on">��ٱ���</a></li>
         <li><a href="${mycontext}/mypage/pointList">����Ʈ��볻��</a></li>
         </ul>
         <div class="right_cont">
         <c:forEach var="b" items="${basketDetailList}" >
               <ul class="basketdetail">
                  <li><img src="${b.itemvo.i_img}"></li>
                  <li>${b.itemvo.i_name}</li>
                  <li>�ǸŰ� : ${b.itemvo.i_price}�� <br>
                     <span>�� ���� : ${b.ordersvo.totalPrice}��</span>
                  </li>
               </ul>
            </c:forEach> 
            <form action="basketorder" method="post">
               <div class="basketdetailform">
               <div class="tit">�ֹ��ڸ�</div>
               <div>
                  <input type="text" class="form-control" id="ordersvo.ord_name" name="ordersvo.ord_name" required="required">
               </div>
            </div>
            
            <div class="basketdetailform">
               <div class="tit">�ּ�</div>
               <div>
                  <input type="text" class="form-control" id="ordersvo.ord_address" name="ordersvo.ord_address" required="required">
               </div>
            </div>
            
            <div class="basketdetailBtn">
               <button type="submit" class="btn" id="buybtn">����</button>
               <button type="button" class="btn cancle" onclick="location.href='${mycontext}/basket/basketList'">���</button>
            </div>   
         </form>
      </div>
   </div>
</section>