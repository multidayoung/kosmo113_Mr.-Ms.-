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
	   $(".star1").html("�ڡ١١١�");
	   $(".star2").html("�ڡڡ١١�");
	   $(".star3").html("�ڡڡڡ١�");
	   $(".star4").html("�ڡڡڡڡ�");
	   $(".star5").html("�ڡڡڡڡ�");
	});

</script>

<section class="path">
   <div class="container">Home <span>&nbsp;>&nbsp;</span> <b>���θ�</b></div>
</section>

<section class="container content">
	<form action="" method="post" name="purchase" id="purchase">
		<input type="hidden" id="i_no" name="i_no" value="${detail.i_no}">
		
		<div class="itemdetail_img">
			<img src="${detail.i_img}" alt="��ǰ�̹���">
		</div>
		
		<div class="itemdetail_txt">
			<h1>
				${detail.i_name}
				<!-- <input type="text" id="i_name" name="i_name" value="${detail.i_name}" readonly="readonly"> -->
			</h1> 
			<p>
				<span class="txt">�ǸŰ�</span>
				<input type="text" id="i_price" name="i_price" readonly="readonly" value="${detail.i_price}">
			</p>
			<p>
				<span class="txt">ī�װ�</span>
				<input type="text" id="i_category" name="i_category" value="${detail.i_category}" readonly="readonly">
			</p>
			<p>
				<span class="txt">��</span>
				<input type="text" id="i_gender" name="i_gender" value="${detail.i_gender}" readonly="readonly">
			</p>
			<p>	
				<span class="txt">����</span>
				<input type="number" id="num" name="num" max="${detail.stockvo.s_stock}" min="1" value="0">
				<span>&nbsp;(��� : ${detail.stockvo.s_stock}��)</span>
			</p>
			<p class="total">	
				<span class="txt">�ѱݾ�</span>
				<span id="target1"></span>
			</p>
			<div class="btns">
				<button type="submit" id="buybtn">�����ϱ�</button>
				<button type="submit" id="basketbtn">��ٱ���</button>
			</div>
		</div>
	</form>
	
	<div class="itemdetail_tab">
		<ul class="tab_btn">
			<li data-tab="tab1" class="on">�󼼺���</li>
			<li data-tab="tab2">��ǰ�ı�</li>
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
                        <span>�ۼ��� : ${member.member_name}</span> | <span>�ۼ���¥ : ${review.r_date}</span>
                     </p>
                     <p class="comm">${review.r_comm}</p>
                  </li>
               </c:forEach>
            </c:forEach>
         </ul>
      </div>
   </div>

	
	
	<c:choose>
		<c:when test="${detail.i_gender=='����'}">
			<div class="form-group" style="text-align: right; margin-top: 10px;">
				<button type="button" class="btn btn-primary"
					onclick="location.href='itemList?gender=w'">�������</button>
			</div>
		</c:when>
		<c:when test="${detail.i_gender=='����'}">
			<div class="form-group" style="text-align: right; margin-top: 10px;">
				<button type="button" class="btn btn-primary"
					onclick="location.href='itemList?gender=m'">�������</button>
			</div>
		</c:when>
		<c:when test="${detail.i_gender=='������'}">
			<div class="form-group" style="text-align: right; margin-top: 10px;">
				<button type="button" class="btn btn-primary"
					onclick="location.href='itemList?gender=dog'">�������</button>
			</div>
		</c:when>
		<c:when test="${detail.i_gender=='�����'}">
			<div class="form-group" style="text-align: right; margin-top: 10px;">
				<button type="button" class="btn btn-primary"
					onclick="location.href='itemList?gender=cat'">�������</button>
			</div>
		</c:when>
	</c:choose>
</section>

<script>
$(function() {
	<%--detail���� ��ǰ �������� �� �� �ݾ� ����Ʈ�� ������ִ� �޼���--%>
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
	      		$('#target1').html(' '+total.toLocaleString('ko-KR')+ "��");
	   		}
		});
  	});
	
   	<%--��ٱ��Ϸ� �̵�  --%>
    $('#basketbtn').click(function() {
  		console.log("���̵� = ${sessionScope.sessionID}");
  		if (${sessionScope.sessionID == null}) {
  		 	alert('�α��� �� ������ �ּ���.');
  		 	$('#purchase').attr('action', "${mycontext}/main");
		}else {
        	$('#purchase').submit(function() {
       	 		alert('��ٱ��Ͽ� �����ϴ�.');
     			$('#purchase').attr('action', "${mycontext}/basket/addBasket");
        	});
    	}
    });
    
    <%--������������ �̵�  --%>
   	$('#buybtn').click(function() {
 	  	if (${sessionScope.sessionID == null}) {
 		  	alert('�α��� �� ������ �ּ���.');
 		  	$('#purchase').attr('action', "${mycontext}/main");
		}else {
        	$('#purchase').submit(function() {
           		alert('���� �������� �̵��մϴ�.');
	 			$('#purchase').attr('action', "${mycontext}/orders/order");
        	}); 
   		}
   	});
});
</script>