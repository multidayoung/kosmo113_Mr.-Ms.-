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
           <li><a href="${mycontext}/animal/animalList">�� �ݷ�����</a></li>
           <li><a href="${mycontext}/mypage/friendslist">ģ�����</a></li>
           <li><a href="${mycontext}/mypage/messageList">������</a></li>
           <li><a href="${mycontext}/orders/ordersList">���Ÿ��</a></li>
         <li><a href="${mycontext}/basket/basketList" class="on">��ٱ���</a></li>
         <li><a href="${mycontext}/mypage/pointList">����Ʈ��볻��</a></li>
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
                        <button type="button" class="btn btn-secondary" id="updatebtn" onclick="updatebtn(${b.b_num},'b_stock${vs.index}')">����</button>
                     </li>
                     <li>
                        �ǸŰ� : ${b.itemvo.i_price}�� <br> 
                        <span id="price${vs.index}">�� ���� : ${b.ordersvo.totalPrice}��</span>
                     </li>
                     <li>
                        <button type="button" class="btn btn-danger" id="delbtn" onclick="delbtn(${b.b_num})">����</button>
                     </li>
                  </ul>
               </c:forEach>
            </c:when>
         </c:choose>
         <div class="totalprice">
            �� �ݾ� : <span>${allPrice}</span> ��
         </div>
         <c:choose>
            <c:when test="${allPrice != 0 }">
               <div class="basketorderbtn">
                  <button type="button" class="btn" id="buybtn" onclick="location='${mycontext}/basket/basketorderIn'">��ü �ֹ��ϱ�</button>
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
           alert("�����Ǿ����ϴ�.");
            location.reload();
         },
         error: function(error) {
             alert("����!!");
         }
      });
   }

   function delbtn(data) {
	   if (confirm("���� �����Ͻðڽ��ϱ�??") == true){ 
      var formData = data;
      $.ajax({
         type : "get",
         url : "${mycontext}/basketdel?num="+formData,
         dataType : "text",
         contentType : "application/text;charset=EUC-KR",
         success : function(result) {
           alert("�����Ǿ����ϴ�.");
            location.reload();
         },
         error: function(error) {
             alert("����!!");
         }
      });
	   }else{   //���
		     return false;
		 }
   }
</script>