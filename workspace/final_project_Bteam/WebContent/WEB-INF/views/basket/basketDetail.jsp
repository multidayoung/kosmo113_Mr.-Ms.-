<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="mycontext" value="${pageContext.request.contextPath}" />

<section class="path">
   <div class="container">Home <span>&nbsp;>&nbsp;</span> 마이페이지 <span>&nbsp;>&nbsp;</span> <b>장바구니</b></div>
</section>

<section class="container content">
   <div class="mypage">
      <ul class="left_menu">
          <li><a href="${mycontext}/member/myPage">회원정보수정</a></li>
           <li><a href="#">산책리스트</a></li>
           <li><a href="${mycontext}/animal/animalList">반려동물리스트</a></li>
           <li><a href="${mycontext}/mypage/friendslist">친구목록</a></li>
           <li><a href="${mycontext}/mypage/messageList">쪽지함</a></li>
           <li><a href="${mycontext}/orders/ordersList">구매목록</a></li>
         <li><a href="${mycontext}/basket/basketList" class="on">장바구니</a></li>
         <li><a href="${mycontext}/mypage/pointList">포인트사용내역</a></li>
         </ul>
         <div class="right_cont">
         <c:forEach var="b" items="${basketDetailList}" >
               <ul class="basketdetail">
                  <li><img src="${b.itemvo.i_img}"></li>
                  <li>${b.itemvo.i_name}</li>
                  <li>판매가 : ${b.itemvo.i_price}원 <br>
                     <span>총 가격 : ${b.ordersvo.totalPrice}원</span>
                  </li>
               </ul>
            </c:forEach> 
            <form action="basketorder" method="post">
               <div class="basketdetailform">
               <div class="tit">주문자명</div>
               <div>
                  <input type="text" class="form-control" id="ordersvo.ord_name" name="ordersvo.ord_name" required="required">
               </div>
            </div>
            
            <div class="basketdetailform">
               <div class="tit">주소</div>
               <div>
                  <input type="text" class="form-control" id="ordersvo.ord_address" name="ordersvo.ord_address" required="required">
               </div>
            </div>
            
            <div class="basketdetailBtn">
               <button type="submit" class="btn" id="buybtn">구매</button>
               <button type="button" class="btn cancle" onclick="location.href='${mycontext}/basket/basketList'">취소</button>
            </div>   
         </form>
      </div>
   </div>
</section>