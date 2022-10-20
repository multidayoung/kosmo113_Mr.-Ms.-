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
	        <li><a href="#">ä�ø��</a></li>
	        <li><a href="${mycontext}/orders/ordersList">���Ÿ��</a></li>
			<li><a href="${mycontext}/basket/basketList" class="on">��ٱ���</a></li>
      	</ul>
      	<div class="right_cont">
			<form method="post" action="basketorderIn">
				<input type="hidden" id="b_num" name="b_num" value="${detail.b_num}">
				<div>
					<div class="form-group">
						<label for="i_name">��ǰ��</label> 
						<input type="text" class="form-control" id="itemvo.i_name" name="itemvo.i_name" value="${detail.itemvo.i_name }" readonly="readonly">
					</div>
					<div class="form-group">
						<label for="totalprice">�ݾ�</label> 
						<input type="text" class="form-control" id="ordersvo.totalPrice" name="ordersvo.totalPrice" readonly="readonly" value="${totalPrice }">
					</div>
					<div class="form-group">
						<label for="i_category">�з�</label> 
						<input type="text" class="form-control" id="itemvo.i_category" name="itemvo.i_category" value="${detail.itemvo.i_category }" readonly="readonly">
					</div>
					<div class="form-group">
						<label for="i_gender">gender</label> 
						<input type="text" class="form-control" id="itemvo.i_gender" name="itemvo.i_gender" value="${detail.itemvo.i_gender }" readonly="readonly">
					</div>
					<div class="form-group">
						<label for="b_stock">����</label> 
						<input type="text" class="form-control" id="b_stock" name="b_stock" value="${detail.b_stock}" readonly="readonly">
					</div>
				</div>
		
				<!--����ڿ��� �Է� �޴� ����  -->
				<input type="hidden" id="i_no" name="i_no" value="${detail.i_no}">
				<div class="form-group">
					<label for="ord_name">�ֹ��� �̸�</label> 
					<input type="text" class="form-control" id="ordersvo.ord_name" name="ordersvo.ord_name" required="required">
				</div>
				<div class="form-group">
					<label for="ord_address">�ּ�</label> 
					<input type="text" class="form-control" id="ordersvo.ord_address" name="ordersvo.ord_address" required="required">
				</div>
				
				<!-- ��ư -->
				<div class="form-group" style="text-align: right; margin-top: 10px;">
					<button type="submit" class="btn btn-primary" id="purBtn">����</button>
					<button type="button" class="btn btn-primary" onclick="location.href='${mycontext}/basket/basketList'">���</button>
				</div>
			</form>
		</div>
	</div>
</section>

<script>
<%--�������������� �ѱݾ�  --%>
$(function total() {
	let total = ${price * stock}
	$('#target2').html('�� �ݾ� :' + total.toLocaleString('ko-KR') + "��");
});

$(function() {
	$('#purBtn').click(function() {
		var name = document.getElementById('ordersvo.ord_name').value;
        var address = document.getElementById('ordersvo.ord_address').value;
       
        if (name != '' && address != '') {
        	alert("���Ű� �Ϸ�Ǿ����ϴ�.");
            return true;
        }
	});
});
</script>