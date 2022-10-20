<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>
h4, footer {
	padding: 40px 0;
	text-align: center;
}

.container {
	margin-top: 64px;
	margin-bottom : 64px;
	padding : 0 64px;
	width: 640px;
	background-color: white;
}

.ok {
	color: #000;
	display: none;
}

.no , .noPwd , .emailChk{
	color: tomato;
	display: none;
}
</style>


<div class="container">
	<div class="input-form-backgroud row">
		<div class="input-form col-md-12 mx-auto">
			<h4 class="mb-3">ȸ������</h4>
			<form class="validation-form" method="post" action="joinMember">

				<div class="mb-3">
					<label for="mem_id">���̵�</label>
						<input type="text" class="form-control" id="mem_id" name="mem_id"
							required oninput="checkId()">
					
					<div>
						<span class="ok">��� ������ ���̵� �Դϴ�</span> 
						<span class="no">�� ���̵�� �̹� ������Դϴ�</span>
					</div>
				</div>


				<div class="row">
				<div class="col-md-6 mb-3">
					<label for="mem_pw">��й�ȣ </label> <input type="password"
						class="form-control" id="mem_pw" name="mem_pw" required>
					<div class="invalid-feedback">��й�ȣ�� �Է����ּ���.</div>
					<span class="noPwd">��й�ȣ�� ��ġ ���� �ʽ��ϴ�</span>
				</div>
				<div class="col-md-6 mb-3">
					<label for="pwdChk">��й�ȣ Ȯ��</label> <input type="password"
						class="form-control" id="pwdChk" name="pwdChk">
					<div class="invalid-feedback">��й�ȣ�� �Է����ּ���.</div>
					
				</div>
			
				</div>


					<div class="mb-3">
						<label for="mem_name">�̸�</label> <input type="text"
							class="form-control" id="mem_name" name="mem_name"
							placeholder="��OO" required>
						<div class="invalid-feedback">�̸��� �Է����ּ���.</div>
					</div>

					<div class="mb-3">
						<label for="mem_jubun">�ֹι�ȣ </label> <input type="text"
							class="form-control" id="mem_jubun" name="mem_jubun"
							placeholder="000000-1234567" required>
						<div class="invalid-feedback">�ֹι�ȣ�� �Է����ּ���.</div>
					</div>
				
				<div class="mb-3">
					<label for="mem_email">�޴�����ȣ</label> 
					<input type="mem_phone"
						class="form-control" 
						id="mem_phone" 
						name="mem_phone"
						placeholder="010-0000-0000" 
						required>
					<div class="invalid-feedback">�޴����� �Է����ּ���</div>
				</div>				


				<div class="mb-3">
					<label for="mem_email">�̸���</label> <input type="mem_email"
						class="form-control" id="mem_email" name="mem_email"
						placeholder="you@example.com" required>
					<div class="invalid-feedback">�̸����� �Է����ּ���.</div>
					<span class="emailChk">�̹� ��ϵ� �̸��� �Դϴ�</span>
				</div>
				
				<div class="row">
				
					<label for="mem_adr">�ּ�</label> <input type="text"
						class="form-control" id="mem_adr" name="mem_adr"
						placeholder="����Ư���� ������" required>
					<div class="invalid-feedback">�ּҸ� �Է����ּ���.</div>
				</div>

				<div class="col-md-6 mb-3">
					<label for="mem_adr2"> ���ּ� <span class="text-muted">&nbsp;(�ʼ��ƴ�)</span>
					</label> <input type="text" class="form-control" id="mem_adr2"
						placeholder="���ּҸ� �Է����ּ���.">
				</div>
				</div>

				<div class="row">
					<div class="col-md-8 mb-3">
						<label for="mem_q">��й�ȣ ã�� ����</label> 
						<select	class="selectpicker d-block w-100" 
						id="mem_q" 
						name="mem_q"
						data-style="btn-inverse">
							<option value="">������ �����ϼ���</option>
							<option value="�߾�">�߾￡ ���� ��Ҵ�?</option>
							<option value="�ʵ��б�">�ٳ�� �ʵ��б� �̸���?</option>
						</select>
						<div class="invalid-feedback">������ �������ּ���.</div>
					</div>
					<div class="col-md-4 mb-3">
						<label for="code">��й�ȣ ã�� ����</label> 
						<input type="text"
							class="form-control" 
							id="mem_a"
							name="mem_a"
							placeholder="" 
							required>
						<div class="invalid-feedback">���� �����ּ���</div>
					</div>
				</div>
			
				<hr class="mb-4">

				<div class="custom-control custom-checkbox text-center">
					<input type="checkbox" class="custom-control-input" id="aggrement"
						required> <label class="custom-control-label"
						for="aggrement">�������� ���� �� �̿뿡 �����մϴ�.</label>
				</div>
				
				<div class="mb-4 text-center">
					<button class="btn btn-primary btn-dark text-white btn-block"
						type="submit">���ԿϷ�</button>
				</div>
			</form>
		</div>
	</div>
</div>
</body>
<script>
	//���̵� �ߺ�Ȯ��
	function checkId() {
		var param = $('#mem_id').val();
		console.log(param);
		//alert("param"+param);
		$.ajax({
			url:"idChk?id="+param,
			success:function(data){
				console.log(data);
				if(data == 1){
					 $('.no').css("display","inline-block");
	                 $('.ok').css("display", "none");
				}else{
	                 $('.ok').css("display","inline-block"); 
	                 $('.no').css("display", "none");
				}
			}
		});
	};
	
	
	//�̸��� �ߺ� Ȯ��
	$('#mem_email').focusout(function() {
		var param = $('#mem_email').val();
		$.ajax({
			url : "emailChk?email=" + param,
			success : function(data) {
				if(data ==1){
					$('.emailChk').css("display", "inline-block");
				}
			}
		});
	});
	
	$('#mem_email').focusin(function() {
		$('.emailChk').css("display", "none");
	});
	
	
	//��й�ȣ 1,2 �´��� Ȯ��
	$('#pwdChk').focusout(function() {
		var pwd1 = $('#pwdChk').val();
		var pwd2 = $('#mem_pw').val();
		if (pwd1 != pwd2) {
			$('.noPwd').css("display", "inline-block");
		}
	});
	
	$('#pwdChk').focusin(function() {
		$('.noPwd').css("display", "none");
	});
</script>
</html>