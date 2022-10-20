<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<article >
        <header>
            <h1>adminOrders Detail Form</h1>
        </header>
        <ul class="list-unstyled"><li class="border-top my-3"></li></ul>
	<div class="container">
		<%-- updateForm �� �ڸ� --%>
	<fieldset>
			<legend>adminOrders update Form</legend>
			<form method="post" action="adminordersUpdate" id="update" name="update">
			<input type="hidden" id="ord_no" name="ord_no" value="${vo.ord_no }">
			<table class="table table-bordered">
				<thead>
					<tr>
					<th colspan="2" style="text-align: center;">�ֹ��ڸ�</th>
					<th colspan="2" style="text-align: center;">ȸ����</th>
					</tr>
				</thead>
				<tbody>
				<tr>
				<td colspan="2" style="text-align: center;"><input type="text" name="ord_name" id="ord_name" value="${vo.ord_name}"/></td>
				</tr>
				</tbody>
				<thead>
				<tr>
					<th>��ǰ��</th>
					<th>��ǰ����</th>
					<th>�ֹ�����</th>
					<th>�Ѱ���</th>
				</tr>
				</thead>
				<tbody>
				<tr>
				<td style="text-align: center;">${vo.ivo.i_name}</td>
				<td style="text-align: center;">${vo.ivo.i_price}</td>
				<td style="text-align: center;">${vo.ord_count}</td>
				<td style="text-align: center;">${vo.totalPrice}</td>
				</tr>
				</tbody>
				<thead>
				<tr><th colspan="4" >��ǰ����</th></tr>
				</thead>
				<tbody>
				<tr>
				<td colspan="4">
				<img style="width: auto;" src="${pageContext.request.contextPath}/resources/imagefile/${vo.ivo.i_img}" id="imgx"></td>
				</tr>
				</tbody>
				<thead>
				<tr><th colspan="4">����ּ�</th></tr>
				</thead>
				<tbody>
				<tr>
				<td colspan="4"><input type="text" name="ord_address" id="ord_address" value="${vo.ord_address}"/></td>
				</tr>
				</tbody>
				<thead>
				<tr>
				<th>�ֹ���¥</th>
				<th>��ۿϷᳯ¥</th>
				<th colspan="2">��ۻ���</th>
				</tr>
				</thead>
				<tbody>
				<tr>
				<td>${vo.ord_date}"</td>
				<td>${vo.ord_edate}"</td>
				<td colspan="2"><select class="btn btn-outline-secondary" name="i_status" id="i_status" >
					<option value="">${vo.i_status}</option>
					<option value="��ۿϷ�">��ۿϷ�</option>
					<option value="�ֹ����">�ֹ����</option>
					</select>	</td>
				</tr>
				</tbody>
			</table>
			<div class="form-group" style="text-align: right; margin-top: 10px;" >
			<input type="button" value="�ֹ���������" id="upordersbtn" class="btn btn-outline-secondary"/>
			<input type="button" value="����" id="delordersbtn" class="btn btn-outline-secondary"/>
			</div>
			</form>
	</fieldset>		
		
	</div>
	<script>

	$(function() {
		$('#upordersbtn').click(function() {
			$('#update').submit();
		});
		$('#delordersbtn').click(function() {
			location = "adminordersDelete?ord_no=${vo.ord_no}";
		});
	});
	</script>
</article>
