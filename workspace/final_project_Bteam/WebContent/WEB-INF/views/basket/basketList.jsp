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
           <li><a href="${mycontext}/animal/animalList">내 반려동물</a></li>
           <li><a href="${mycontext}/mypage/friendslist">친구목록</a></li>
           <li><a href="${mycontext}/mypage/messageList">쪽지함</a></li>
           <li><a href="${mycontext}/orders/ordersList">구매목록</a></li>
         <li><a href="${mycontext}/basket/basketList" class="on">장바구니</a></li>
         <li><a href="${mycontext}/mypage/pointList">포인트사용내역</a></li>
         </ul>
      <div class="right_cont">
         <c:choose>
            <c:when test="${allPrice == 0 }">
               <div class="basketimg">
                  <img src="${mycontext}/resources/image/basket.gif">
               </div>
            </c:when>
            <c:when test="${allPrice != 0 }">
               <c:forEach var="b" items="${list}" varStatus="vs">
                  <ul class="basketlist">
                     <li><img src="${b.itemvo.i_img}"></li>
                     <li><a href="${mycontext}/item/itemDetail?s_no=${b.i_no}">${b.itemvo.i_name}</a></li>
                     <li>
                        <input type="number" class="form-control" id="b_stock${vs.index}" name="b_stock" value="${b.b_stock}">
                        <button type="button" class="btn btn-secondary" id="updatebtn" onclick="updatebtn(${b.b_num},'b_stock${vs.index}')">수정</button>
                     </li>
                     <li>
                        판매가 : ${b.itemvo.i_price}원 <br> 
                        <span id="price${vs.index}">총 가격 : ${b.ordersvo.totalPrice}원</span>
                     </li>
                     <li>
                        <button type="button" class="btn btn-danger" id="delbtn" onclick="delbtn(${b.b_num})">삭제</button>
                     </li>
                  </ul>
               </c:forEach>
            </c:when>
         </c:choose>
         <div class="totalprice">
            총 금액 : <span>${allPrice}</span> 원
         </div>
         <c:choose>
            <c:when test="${allPrice != 0 }">
               <div class="basketorderbtn">
                  <button type="button" class="btn" id="buybtn" onclick="location='${mycontext}/basket/basketorderIn'">전체 주문하기</button>
               </div>
            </c:when>
         </c:choose>
      </div>
   </div>
</section>

<script>
function updatebtn(num,stock) {
      var formData1 = num
      var formData2 = $("#"+stock).val();
      $.ajax({
         type : "get",
         url : "${mycontext}/basketupdate?num="+formData1+"&stock="+formData2,
         dataType : "text",
         contentType : "application/text;charset=EUC-KR",
         success : function(result) {
           alert("수정되었습니다.");
            location.reload();
         },
         error: function(error) {
             alert("에러!!");
         }
      });
   }

   function delbtn(data) {
	   if (confirm("정말 삭제하시겠습니까??") == true){ 
      var formData = data;
      $.ajax({
         type : "get",
         url : "${mycontext}/basketdel?num="+formData,
         dataType : "text",
         contentType : "application/text;charset=EUC-KR",
         success : function(result) {
           alert("삭제되었습니다.");
            location.reload();
         },
         error: function(error) {
             alert("에러!!");
         }
      });
	   }else{   //취소
		     return false;
		 }
   }
</script>