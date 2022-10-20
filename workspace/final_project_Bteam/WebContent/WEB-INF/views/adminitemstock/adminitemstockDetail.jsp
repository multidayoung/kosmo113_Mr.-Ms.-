<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<article >
        <header>
            <h1>adminitemstock Detail Form</h1>
        </header>
        <ul class="list-unstyled"><li class="border-top my-3"></li></ul>
	<div class="container">
		<%-- updateForm �� �ڸ� --%>
	<fieldset>
			<legend>adminitemstock update Form</legend>
			<form method="post" action="adminitemUpdate" enctype="multipart/form-data" id="update" name="update">
			<input type="hidden" id="i_no" name="i_no" value="${vo.i_no }">
			<div class="row mb-3">
				<label>��ǰ��</label>
			<input type="text" name="i_name" id="i_name" readonly="readonly" value="${vo.i_name}"/>
			</div>
			<div class="row mb-3">
				<label>��ǰ����</label>
			<input type="text" name="i_price" id="i_price" value="${vo.i_price}"/>
			</div>
			<div class="row mb-3">
				<label>ī�װ�1</label>
			<input type="text" name="i_category" id="i_category" readonly="readonly" value="${vo.i_category }"/>
			</div>
			<div class="row mb-3">
				<label>ī�װ�2</label>
			<input type="text" name="i_gender" id="i_gender" readonly="readonly" value="${vo.i_gender }"/>
			</div>			
			<div class="row mb-3">
				<label>��ǰ����</label>
			<textarea name="i_comm" id="i_comm" rows="3" cols="13">${vo.i_comm }</textarea>
			</div>
			<div class="row mb-3">
				<label>���</label>
			<input type="text" name="s_stock" id="s_stock"  value="${vo.stockvo.s_stock }"/>
			</div>	
			<div class="row mb-3">
				<label>������</label>
			<input type="text" name="s_name" id="s_name" readonly="readonly"  value="${vo.stockvo.s_name }"/>
			</div>	
			<div class="row mb-3">
				<label>�������ȣ</label>
			<input type="text" name="s_phone" id="s_phone" value="${vo.stockvo.s_name }"/>
			</div>										
			<div class="row mb-3">
				<label>*�̹��� ���ε�</label>
			<input type="file" name="mfile" id="mfile" style="float: left; width: 50%"/>
			<p style="float: left;">���� �̹����� : ${vo.i_img }</p>
			<img style="width: 50%;" src="${pageContext.request.contextPath}/resources/imagefile/${vo.i_img}" id="imgx">
			</div>												
			<div class="form-group" style="text-align: right; margin-top: 10px;" >
			<input type="button" value="����" id="upitembtn" class="btn btn-outline-secondary"/>
			<input type="button" value="����" id="delitembtn" class="btn btn-outline-secondary"/>
			</div>
			</form>
	</fieldset>		
		
	</div>
	<script>
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
// 		$('#wbtn').click(function() {
// 			location = "upform";
// 		});
		$('#mfile').change(function() {
//	 		console.log($(this).val());
			readURL(this)
		});
		$('#upitembtn').click(function() {
			$('#update').submit();
		});
		$('#delitembtn').click(function() {
			location = "adminitemDelete?i_no=${vo.i_no}";
		});
	});
	</script>
</article>
