<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<article>
<script>

</script>
	<header>
		<h1>adminItemStock Demo</h1>
	</header>
	<ul class="list-unstyled">
		<li class="border-top my-3"></li>
	</ul>
	<div class="container">
		<%-- itemstockForm �� �ڸ� --%>
		<form action="adminitemstockIn" method="post" enctype="multipart/form-data">
			<div class="form-group">
				<label for="i_name">��ǰ��</label> <input type="text" class="form-control"
					id="i_name" placeholder="��ǰ �Է�(1-20)" name="i_name" maxlength="100"
					required="required" pattern=".{1,20}">
				<div class="form-group">
				<button type="button" class="btn btn-primary" id="isbtn1" >�ߺ�Ȯ��</button>
				</div>
				<div id="target"></div>
			</div>
			<div class="form-group">
				<label for="i_price">��ǰ����</label> 
				<input type="text" class="form-control"	id="i_price" name="i_price" required="required" placeholder="������ �Է��ϼ���">
			</div>
            <div class="form-group">
            <label for="i_category">ī�װ�1</label>
            <input class="form-check-infut" type="radio" name="i_category" id="i_category1" value="����">
            <label class="form-check=label" for="gender1">����</label>
            <input class="form-check-infut" type="radio" name="i_category" id=i_category2 value="����">
            <label class="form-check=label" for="gender2">����</label>
            <input class="form-check-infut" type="radio" name="i_category" id="i_category3" value="��ȭ">
            <label class="form-check=label" for="gender2">��ȭ</label>            
            </div>

			<div class="form-group">
            <label for="i_category">ī�װ�2</label>
            <input class="form-check-infut" type="radio" name="i_gender" id="i_gender1" value="����">
            <label class="form-check=label" for="i_gender1">����</label>
            <input class="form-check-infut" type="radio" name="i_gender" id=i_gender2 value="����">
            <label class="form-check=label" for="i_gender2">����</label>
            <input class="form-check-infut" type="radio" name="i_gender" id="i_gender3" value="����">
            <label class="form-check=label" for="i_gender3">����</label>            
            </div>
            <div class="form-group">
			<label for="age">��ǰ����</label> 
				<textarea class="form-control" rows="5" id="i_comm" name="i_comm"
					placeholder="��ǰ����"></textarea>
			</div>
			<div class="form-group">
				<label for="i_stock">������</label> 
				<input type="text" class="form-control"	id="i_stock" name="i_stock" required="required" placeholder="������ �Է��ϼ���">
			</div>
			<div class="form-group">
				<label for="s_name">������</label> 
				<input type="text" class="form-control"	id="s_name" name="s_name" required="required" placeholder="�������� �Է��ϼ���">
			</div>
			<div class="form-group">
				<label for="s_phone">�������ȣ</label> 
				<input type="text" class="form-control"	id="s_phone" name="s_phone" required="required" placeholder="������ ��ȣ�� �Է��ϼ���">
			</div>			
            <div class="row mb-3">
				<label>*�̹��� ���ε�</label>
			<input type="file" name="mfile" id="mfile"/>
			<img style="width: 50%;" src="${pageContext.request.contextPath}/resources/image/noimage.jpg" id="imgx">
			</div>
						
			<div class="form-group" style="text-align: right; margin-top: 10px;">
				<button type="submit" class="btn btn-outline-secondary">���</button>
			</div>
		</form>
	</div>

</article>
<script>
	<%-- ��ũ��Ʈ ����--%>
	<%-- �̹��� �̸�����--%>
	function readURL(input) {
		if (input.files && input.files[0]) {
			// �ڹٽ�ũ��Ʈ I/O 
			var reader = new FileReader();
			//
			reader.onload = function(e) {
				//e.target.result
				console.log("Path :" + e.target.result);
				$('#imgx').attr('src', e.target.result);
			}
			reader.readAsDataURL(input.files[0]);
		}
	}
		$(function() {
			$('#mfile').change(function() {
				console.log($(this).val());
				readURL(this);
		});
			$('#isbtn1').click(function() {
				let param = $('#i_name').val();
				$.ajax({
					url:"itemNameChk?i_name="+param,
				success:function(data){
					console.log(data);
					if (data == 1) {
					$('#target').css('background-color', 'red').css('color','white').html('�����ϴ� ��ǰ��');
					}else {
					$('#target').css('background-color', 'blue').css('color','white').html('��밡���� ��ǰ���Դϴ�!');
					}
				}
				});
			});
		});
</script>
