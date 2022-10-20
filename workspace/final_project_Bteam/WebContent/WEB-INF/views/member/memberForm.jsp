<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="mycontext" value="${pageContext.request.contextPath}"/>

<section class="path">
   <div class="container">Home <span>&nbsp;>&nbsp;</span> ȸ������ <span>&nbsp;>&nbsp;</span> <b>���������Է�</b></div>
</section>

<section class="container content">

	<div style="width:1000px; margin:0 auto;">
	<table cellspacing="0" style="width:100%; margin:0 auto;">
		<tr>
			<img src="../resources/image/title_joinus_step_02.gif" style="margin-left:750px;" align="absmiddle" alt="�̿��� �� ���κ�ȣ��å ����" title="�̿��� �� ���κ�ȣ��å ����"></td>
		</tr>
	</table>
</div>

   <ul class="list-unstyled">
      <li class="border-top my-3"></li>
   </ul>
   
   <form action="memberIn" method="post" enctype="multipart/form-data">
   	<div class="container">

        <div class="navbar navbar-light bg-light">
            <label for="member_id">���̵�</label>
            <input type="text" class="form-control" id="member_id" placeholder="���̵� �Է�(3-20�ڸ����� �����մϴ�)" name="member_id" maxlength="10" style="width: 78%"
               required="required" pattern=".{3,20}">
            <button type="button" class="btn btn-outline-primary btn-sm" id="btn1">�ߺ�Ȯ��</button>
         </div>
         <div id="target"></div>

         <div class="navbar navbar-light bg-light">
               <label>��й�ȣ</label>
               <input class="form-control" type="password" placeholder="��й�ȣ �Է�(2-10�ڸ����� �Է°����մϴ�)"
                  style="width: 90%" id="member_pwd" name="member_pwd" required pattern=".{2,10}">
         </div>
         <div class="navbar navbar-light bg-light">  
               <label>��й�ȣ Ȯ��</label>
               <input class="form-control" type="password" placeholder="��й�ȣ Ȯ��"
                  style="width: 90%" id="pw2" required>
         </div>
         
         <div class="navbar navbar-light bg-light">
            <label for="member_name">�̸�</label> 
            <input type="text" class="form-control" style="width: 90%"
               id="member_name" placeholder="�̸� �Է�" name="member_name" required="required">
         </div>
      
         
         <div class="navbar navbar-light bg-light">
            <label for="member_age">����</label> 
            <input type="text" class="form-control" id="member_age" name="member_age" placeholder="���� �Է�" style="width: 90%" required="required">
         </div>
         
         <div>
	     	<label for="member_gender">����� ������?</label><br>
	     	<p>
		     <input type="radio" id="member_gender" name="member_gender" value="��" required="required">���� &nbsp;
		     <input type="radio" id="member_gender" name="member_gender" value="��">����
		     </p>
		 </div>
	    
         <div class="navbar navbar-light bg-light">
            <label for="member_phone">�޴���ȭ��ȣ</label>
            <input type="text" class="form-control" id="member_phone" placeholder="�޴���ȭ��ȣ �Է�" name="member_phone" style="width: 90%" required="required">
         </div>
         
         
         	<div class="form-group">
				<label>EMAIL</label> 
					<input type="email" class="form-control" id="member_email" name="member_email" placeholder="name@example.com" required="required">
				<button class="btn btn-outline-primary" type="button" id="mail-check">
					<i class="fa fa-search"></i>��������</button>

				<input type="text" class="form-control" id="certi-input" name="certi-input" placeholder="������ȣ 6�ڸ�" disabled="disabled" maxlength="6"/>
				<span id="mail-check-warn" class="mb-2"></span>
			</div>

          
         	<div class="form-group">
				<input type="hidden" id="member_addr" name="member_addr" value="" required="required"/>
				<%-- member_addr --%>
				<label>�ּ�</label> 
				<input type="text" class="form-control" id="zipNo" name="post" placeholder="�����ȣ" disabled="disabled">
				<button class="btn btn-outline-primary" type="button" onclick="goPopup();" background: yellow;>
					<i class="fa fa-search"></i>�ּҰ˻�
				</button>
			</div>
			<div class="form-group" style="margin-top: 0px;">
				<input type="text" class="form-control" id="roadFullAddr" name="address" placeholder="���ּ�" disabled="disabled"/>
			</div>
         
         
	         <div class="form-group">
		         <label class="col-sm-2 col-form-label">�̹��� ���ε�</label>
		         <div class="col-sm-10 mb-3">
		            <input type="file" name="mfile" id="mfile" class="form-control">
		         </div>
		         <div class="text-center">
		            <img src="${mycontext}/resources/member/noimage.jpg" id="imgx">
		         </div>
		      </div>
	         
	        <div class="form-group" style="text-align: right; margin-top: 10px;">
				<button type="submit" id="join-submit" class="btn btn-primary btn-space" disabled="disabled">
					�����ϱ�<i class="fa fa-check spaceLeft"></i>
				</button>
		
				<button type="button" class="btn btn-danger"
					onclick="location.href='/main'">
					���<i class="fa fa-check spaceLeft"></i>
				</button>
			</div>
		
      
   	</div>
   </form>
</section>


<%-- �������� �� --%>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>

    $(function() {
      $('#btn1').click(
            function() {
               let param = $('#member_id').val();
               $.ajax({
                  url : "idcheck?member_id=" + param,
                  success : function(data) {
                     if (data == 1) {
                        $('#target').css('color', 'red').html(
                              '������� ���̵� �Դϴ�.');
                     } else {
                        $('#target').css('color', 'green').html(
                              '��� ������ ���̵� �Դϴ�.');
                     }

                  }
               });
            });
   }); 
   $(function() {
      $('#pw2').blur(function() {

         if ($('#member_pwd').val() != $('#pw2').val()) {
            if ($('#pw2').val() != '') {
               alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
               $('#pw2').val('');
               $('#pw2').focus();
            }
         }
      })
   });

 //�̸��� ����
   var $js = jQuery.noConflict()
	
	//Email Ajax
	$js('#mail-check').click(function() {
		const member_email = $js('#member_email').val(); // �̸��� �ּҰ� ������!
		console.log('�ϼ��� �̸��� : ' + member_email); // �̸��� ������ Ȯ��
		const checkInput = $js('#certi-input') // ������ȣ �Է��ϴ°� 
		
		$js.ajax({
			type : 'get',
			url : '${pageContext.request.contextPath}/member/mailCheck?member_email='+member_email,
			success : function (data) {
				console.log("data : " +  data);
				checkInput.attr('disabled',false);
				code =data;
				alert('������ȣ�� ���۵Ǿ����ϴ�.')
			}
		}); // end ajax
	}); // end send eamil

	// ������ȣ ��
	// blur -> focus�� ��� ��� �߻�
	$js('#certi-input').blur(function() {
		const inputCode = $js(this).val();
		const $resultMsg = $js('#mail-check-warn');
		
		if(inputCode === code){
			$resultMsg.html('������ȣ�� ��ġ�մϴ�.');
			$resultMsg.css('color','green');
			$js('#mail-check').attr('disabled', true);
			$js('#member_email').attr('readonly', true);
			$js('#certi-input').attr('readonly', true);
			$js('#join-submit').attr('disabled', false);
		}else{
			$resultMsg.html('������ȣ�� ��ġ���� �ʽ��ϴ�. �ٽ� Ȯ�����ּ���!');
			$resultMsg.css('color', 'red');
		}
	});

   function showmsg() {
		alert('ȸ�����Կ� �����ϼ̽��ϴ�.');
	}
  
   
   //�ּұ�ݻ�����񽺿��� �����ϴ� �ҷ� API�˾�â ȣ��
   function goPopup() {
		// �ּҰ˻��� ������ �˾� �������� ȣ���մϴ�.
		// ȣ��� ������(addressAPIPopup.jsp)���� ���� �ּҰ˻�URL(https://www.juso.go.kr/addrlink/addrLinkUrl.do)�� ȣ���ϰ� �˴ϴ�.
		var pop = window.open("adressPopup", "pop",
				"width=570,height=420, scrollbars=yes, resizable=yes");

		// ����� ���� ���, ȣ��� ������(addressAPIPopup.jsp)���� ���� �ּҰ˻�URL(https://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)�� ȣ���ϰ� �˴ϴ�.
		//var pop = window.open("/popup/addressAPIPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
	}

	function jusoCallBack(roadFullAddr, roadAddrPart1, addrDetail,
			roadAddrPart2, engAddr, jibunAddr, zipNo, admCd, rnMgtSn,
			bdMgtSn, detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm, liNm,
			rn, udrtYn, buldMnnm, buldSlno, mtYn, lnbrMnnm, lnbrSlno, emdNo) {
		// �˾����������� �ּ��Է��� ������ �޾Ƽ�, �� �������� ������ ����մϴ�.

		var address1 = document.querySelector("#zipNo");
		address1.value = zipNo;

		var address2 = document.querySelector("#roadFullAddr");
		address2.value = roadFullAddr;

		var address3 = document.querySelector('#member_addr');
		//address3.value = zipNo + ", " + roadFullAddr;
		address3.value = roadFullAddr;
	}
   
</script>

