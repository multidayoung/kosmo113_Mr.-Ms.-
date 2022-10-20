<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="mycontext" value="${pageContext.request.contextPath}"/>

<article>
	<header>
		<h1>��ȭ �� ������</h1>

	</header>
	<ul class="list-unstyled">
		<li class="border-top my-3"></li>
	</ul>

	<div>
		<form method="post" name="purchase" id="purchase">
			<input type="hidden" id="i_no" name="i_no" value="${detail.i_no}">
			<div class="form-group">
				<label for="i_name">��ǰ��</label> <input type="text"
					class="form-control" id="i_name" name="i_name"
					value="${detail.i_name}" readonly="readonly">
			</div>
			<div class="form-group">
				<label for="i_price">�ݾ�</label> <input type="text"
					class="form-control" id="i_price" name="i_price"
					readonly="readonly" value="${detail.i_price}">
			</div>
			<div class="form-group">
				<label for="i_category">�з�</label> <input type="text"
					class="form-control" id="i_category" name="i_category"
					value="${detail.i_category}" readonly="readonly">
			</div>
			<div class="form-group">
				<label for="imgn">�̹���</label>
				<div>
					<img style="width: 200px;"
						src="${pageContext.request.contextPath}/resources/item/${detail.i_img}">
				</div>
			</div>
			<div class="form-group">
				<label for="num">��� : ${detail.stockvo.s_stock}</label> <input
					type="number" id="num" name="num" max="${detail.stockvo.s_stock}"
					min="0">
			</div>
			<div>
				<label>�� �ݾ�</label>
				<div class="form-group" id="target1"></div>

			</div>
			<div class="form-group" style="text-align: right; margin-top: 10px;">
				<button type="submit" class="btn btn-primary" id="buybtn">����</button>
			</div>
			<div class="form-group" style="text-align: right; margin-top: 10px;">
				<button type="submit" class="btn btn-primary" id="basketbtn">��ٱ���</button>
			</div>
		</form>
	</div>
</article>
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
		         
		         $('#target1').html('�� �ݾ� :'+total.toLocaleString('ko-KR')+ "��");
		      }
		      
		   });
		      });
		      <%--��ٱ��Ϸ� �̵�  --%>
		      $('#basketbtn').click(function() {
		         $('#purchase').attr("action", "${mycontext}/basket/addBasket")
		         $('#purchase').submit(function() {
		            alert('��ٱ��Ͽ� �����ϴ�!');
		         });
		      });
		      <%--������������ �̵�  --%>
		      $('#buybtn').click(function() {
		         $('#purchase').attr("action", "order");
		         $('#purchase').submit(function() {
		            alert('������������ �̵��մϴ�');
		         });
		      });
	});
</script>