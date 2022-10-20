<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="mycontext" value="${pageContext.request.contextPath}" />

<script>
$(document).ready(function(){
	$(".itemdetail_tab .tab_btn li").click(function(){
		var tab_id = $(this).attr("data-tab");

		$(".tab_btn li").removeClass("on");
		$(".tab_con").removeClass("on");

		$(this).addClass("on");
		$("#"+tab_id).addClass("on");
	})
});

$(function scoreStar() {
	   $(".star1").html("★☆☆☆☆");
	   $(".star2").html("★★☆☆☆");
	   $(".star3").html("★★★☆☆");
	   $(".star4").html("★★★★☆");
	   $(".star5").html("★★★★★");
	});

</script>

<section class="path">
   <div class="container">Home <span>&nbsp;>&nbsp;</span> <b>쇼핑몰</b></div>
</section>

<section class="container content">
	<form action="" method="post" name="purchase" id="purchase">
		<input type="hidden" id="i_no" name="i_no" value="${detail.i_no}">
		
		<div class="itemdetail_img">
			<img src="${detail.i_img}" alt="상품이미지">
		</div>
		
		<div class="itemdetail_txt">
			<h1>
				${detail.i_name}
				<!-- <input type="text" id="i_name" name="i_name" value="${detail.i_name}" readonly="readonly"> -->
			</h1> 
			<p>
				<span class="txt">판매가</span>
				<input type="text" id="i_price" name="i_price" readonly="readonly" value="${detail.i_price}">
			</p>
			<p>
				<span class="txt">카테고리</span>
				<input type="text" id="i_category" name="i_category" value="${detail.i_category}" readonly="readonly">
			</p>
			<p>
				<span class="txt">종</span>
				<input type="text" id="i_gender" name="i_gender" value="${detail.i_gender}" readonly="readonly">
			</p>
			<p>	
				<span class="txt">수량</span>
				<input type="number" id="num" name="num" max="${detail.stockvo.s_stock}" min="1" value="0">
				<span>&nbsp;(재고 : ${detail.stockvo.s_stock}개)</span>
			</p>
			<p class="total">	
				<span class="txt">총금액</span>
				<span id="target1"></span>
			</p>
			<div class="btns">
				<button type="submit" id="buybtn">구매하기</button>
				<button type="submit" id="basketbtn">장바구니</button>
			</div>
		</div>
	</form>
	
	<div class="itemdetail_tab">
		<ul class="tab_btn">
			<li data-tab="tab1" class="on">상세보기</li>
			<li data-tab="tab2">상품후기</li>
		</ul>
		
		<div id="tab1" class="tab_con on">
		</div>
		
		<div id="tab2" class="tab_con">
         <ul class="reviewlist">
            <c:forEach var="review" items="${list}">
               <c:forEach var="member" items="${review.mvo}">
                  <li>
                     <div class="score" id="score">
                        <span class="star star${review.r_score}">scoreStar()</span> <span>${review.r_score}</span>
                     </div>
                     <p>
                        <span>작성자 : ${member.member_name}</span> | <span>작성날짜 : ${review.r_date}</span>
                     </p>
                     <p class="comm">${review.r_comm}</p>
                  </li>
               </c:forEach>
            </c:forEach>
         </ul>
      </div>
   </div>

	
	
	<c:choose>
		<c:when test="${detail.i_gender=='여성'}">
			<div class="form-group" style="text-align: right; margin-top: 10px;">
				<button type="button" class="btn btn-primary"
					onclick="location.href='itemList?gender=w'">목록으로</button>
			</div>
		</c:when>
		<c:when test="${detail.i_gender=='남성'}">
			<div class="form-group" style="text-align: right; margin-top: 10px;">
				<button type="button" class="btn btn-primary"
					onclick="location.href='itemList?gender=m'">목록으로</button>
			</div>
		</c:when>
		<c:when test="${detail.i_gender=='강아지'}">
			<div class="form-group" style="text-align: right; margin-top: 10px;">
				<button type="button" class="btn btn-primary"
					onclick="location.href='itemList?gender=dog'">목록으로</button>
			</div>
		</c:when>
		<c:when test="${detail.i_gender=='고양이'}">
			<div class="form-group" style="text-align: right; margin-top: 10px;">
				<button type="button" class="btn btn-primary"
					onclick="location.href='itemList?gender=cat'">목록으로</button>
			</div>
		</c:when>
	</c:choose>
</section>

<script>
$(function() {
	<%--detail에서 상품 수량변동 시 총 금액 리스트에 출력해주는 메서드--%>
	$('#num').change(function() {
	   	let price= $('#i_price').val();
	   	var number = $('#num').val();
	   	var s_no = $('#i_no').val();
	    	console.log('price ='+price);
	      	console.log('number ='+number);
	   	$.ajax({
	      	url:"numchk?num="+number,
	   		success:function(data){
	      		console.log(data);
	      		var total = data * price;
	      		console.log(total);
	      		$('#target1').html(' '+total.toLocaleString('ko-KR')+ "원");
	   		}
		});
  	});
	
   	<%--장바구니로 이동  --%>
    $('#basketbtn').click(function() {
  		console.log("아이디 = ${sessionScope.sessionID}");
  		if (${sessionScope.sessionID == null}) {
  		 	alert('로그인 후 진행해 주세요.');
  		 	$('#purchase').attr('action', "${mycontext}/main");
		}else {
        	$('#purchase').submit(function() {
       	 		alert('장바구니에 담겼습니다.');
     			$('#purchase').attr('action', "${mycontext}/basket/addBasket");
        	});
    	}
    });
    
    <%--구매페이지로 이동  --%>
   	$('#buybtn').click(function() {
 	  	if (${sessionScope.sessionID == null}) {
 		  	alert('로그인 후 진행해 주세요.');
 		  	$('#purchase').attr('action', "${mycontext}/main");
		}else {
        	$('#purchase').submit(function() {
           		alert('구매 페이지로 이동합니다.');
	 			$('#purchase').attr('action', "${mycontext}/orders/order");
        	}); 
   		}
   	});
});
</script>