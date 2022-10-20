<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="mycontext" value="${pageContext.request.contextPath}"/>

<section class="path">
   <div class="container">Home <span>&nbsp;>&nbsp;</span> 회원가입 <span>&nbsp;>&nbsp;</span> <b>개인정보입력</b></div>
</section>

<section class="container content">

	<div style="width:1000px; margin:0 auto;">
	<table cellspacing="0" style="width:100%; margin:0 auto;">
		<tr>
			<img src="../resources/image/title_joinus_step_02.gif" style="margin-left:750px;" align="absmiddle" alt="이용약관 및 개인보호정책 동의" title="이용약관 및 개인보호정책 동의"></td>
		</tr>
	</table>
</div>

   <ul class="list-unstyled">
      <li class="border-top my-3"></li>
   </ul>
   
   <form action="memberIn" method="post" enctype="multipart/form-data">
   	<div class="container">

        <div class="navbar navbar-light bg-light">
            <label for="member_id">아이디</label>
            <input type="text" class="form-control" id="member_id" placeholder="아이디 입력(3-20자리수만 가능합니다)" name="member_id" maxlength="10" style="width: 78%"
               required="required" pattern=".{3,20}">
            <button type="button" class="btn btn-outline-primary btn-sm" id="btn1">중복확인</button>
         </div>
         <div id="target"></div>

         <div class="navbar navbar-light bg-light">
               <label>비밀번호</label>
               <input class="form-control" type="password" placeholder="비밀번호 입력(2-10자리수로 입력가능합니다)"
                  style="width: 90%" id="member_pwd" name="member_pwd" required pattern=".{2,10}">
         </div>
         <div class="navbar navbar-light bg-light">  
               <label>비밀번호 확인</label>
               <input class="form-control" type="password" placeholder="비밀번호 확인"
                  style="width: 90%" id="pw2" required>
         </div>
         
         <div class="navbar navbar-light bg-light">
            <label for="member_name">이름</label> 
            <input type="text" class="form-control" style="width: 90%"
               id="member_name" placeholder="이름 입력" name="member_name" required="required">
         </div>
      
         
         <div class="navbar navbar-light bg-light">
            <label for="member_age">나이</label> 
            <input type="text" class="form-control" id="member_age" name="member_age" placeholder="나이 입력" style="width: 90%" required="required">
         </div>
         
         <div>
	     	<label for="member_gender">당신의 성별은?</label><br>
	     	<p>
		     <input type="radio" id="member_gender" name="member_gender" value="남" required="required">남자 &nbsp;
		     <input type="radio" id="member_gender" name="member_gender" value="여">여자
		     </p>
		 </div>
	    
         <div class="navbar navbar-light bg-light">
            <label for="member_phone">휴대전화번호</label>
            <input type="text" class="form-control" id="member_phone" placeholder="휴대전화번호 입력" name="member_phone" style="width: 90%" required="required">
         </div>
         
         
         	<div class="form-group">
				<label>EMAIL</label> 
					<input type="email" class="form-control" id="member_email" name="member_email" placeholder="name@example.com" required="required">
				<button class="btn btn-outline-primary" type="button" id="mail-check">
					<i class="fa fa-search"></i>본인인증</button>

				<input type="text" class="form-control" id="certi-input" name="certi-input" placeholder="인증번호 6자리" disabled="disabled" maxlength="6"/>
				<span id="mail-check-warn" class="mb-2"></span>
			</div>

          
         	<div class="form-group">
				<input type="hidden" id="member_addr" name="member_addr" value="" required="required"/>
				<%-- member_addr --%>
				<label>주소</label> 
				<input type="text" class="form-control" id="zipNo" name="post" placeholder="우편번호" disabled="disabled">
				<button class="btn btn-outline-primary" type="button" onclick="goPopup();" background: yellow;>
					<i class="fa fa-search"></i>주소검색
				</button>
			</div>
			<div class="form-group" style="margin-top: 0px;">
				<input type="text" class="form-control" id="roadFullAddr" name="address" placeholder="상세주소" disabled="disabled"/>
			</div>
         
         
	         <div class="form-group">
		         <label class="col-sm-2 col-form-label">이미지 업로드</label>
		         <div class="col-sm-10 mb-3">
		            <input type="file" name="mfile" id="mfile" class="form-control">
		         </div>
		         <div class="text-center">
		            <img src="${mycontext}/resources/member/noimage.jpg" id="imgx">
		         </div>
		      </div>
	         
	        <div class="form-group" style="text-align: right; margin-top: 10px;">
				<button type="submit" id="join-submit" class="btn btn-primary btn-space" disabled="disabled">
					가입하기<i class="fa fa-check spaceLeft"></i>
				</button>
		
				<button type="button" class="btn btn-danger"
					onclick="location.href='/main'">
					취소<i class="fa fa-check spaceLeft"></i>
				</button>
			</div>
		
      
   	</div>
   </form>
</section>


<%-- 편집구간 끝 --%>
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
                              '사용중인 아이디 입니다.');
                     } else {
                        $('#target').css('color', 'green').html(
                              '사용 가능한 아이디 입니다.');
                     }

                  }
               });
            });
   }); 
   $(function() {
      $('#pw2').blur(function() {

         if ($('#member_pwd').val() != $('#pw2').val()) {
            if ($('#pw2').val() != '') {
               alert("비밀번호가 일치하지 않습니다.");
               $('#pw2').val('');
               $('#pw2').focus();
            }
         }
      })
   });

 //이메일 인증
   var $js = jQuery.noConflict()
	
	//Email Ajax
	$js('#mail-check').click(function() {
		const member_email = $js('#member_email').val(); // 이메일 주소값 얻어오기!
		console.log('완성된 이메일 : ' + member_email); // 이메일 오는지 확인
		const checkInput = $js('#certi-input') // 인증번호 입력하는곳 
		
		$js.ajax({
			type : 'get',
			url : '${pageContext.request.contextPath}/member/mailCheck?member_email='+member_email,
			success : function (data) {
				console.log("data : " +  data);
				checkInput.attr('disabled',false);
				code =data;
				alert('인증번호가 전송되었습니다.')
			}
		}); // end ajax
	}); // end send eamil

	// 인증번호 비교
	// blur -> focus가 벗어날 경우 발생
	$js('#certi-input').blur(function() {
		const inputCode = $js(this).val();
		const $resultMsg = $js('#mail-check-warn');
		
		if(inputCode === code){
			$resultMsg.html('인증번호가 일치합니다.');
			$resultMsg.css('color','green');
			$js('#mail-check').attr('disabled', true);
			$js('#member_email').attr('readonly', true);
			$js('#certi-input').attr('readonly', true);
			$js('#join-submit').attr('disabled', false);
		}else{
			$resultMsg.html('인증번호가 일치하지 않습니다. 다시 확인해주세요!');
			$resultMsg.css('color', 'red');
		}
	});

   function showmsg() {
		alert('회원가입에 성공하셨습니다.');
	}
  
   
   //주소기반산업서비스에서 제공하는 소록 API팝업창 호출
   function goPopup() {
		// 주소검색을 수행할 팝업 페이지를 호출합니다.
		// 호출된 페이지(addressAPIPopup.jsp)에서 실제 주소검색URL(https://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
		var pop = window.open("adressPopup", "pop",
				"width=570,height=420, scrollbars=yes, resizable=yes");

		// 모바일 웹인 경우, 호출된 페이지(addressAPIPopup.jsp)에서 실제 주소검색URL(https://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
		//var pop = window.open("/popup/addressAPIPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
	}

	function jusoCallBack(roadFullAddr, roadAddrPart1, addrDetail,
			roadAddrPart2, engAddr, jibunAddr, zipNo, admCd, rnMgtSn,
			bdMgtSn, detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm, liNm,
			rn, udrtYn, buldMnnm, buldSlno, mtYn, lnbrMnnm, lnbrSlno, emdNo) {
		// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.

		var address1 = document.querySelector("#zipNo");
		address1.value = zipNo;

		var address2 = document.querySelector("#roadFullAddr");
		address2.value = roadFullAddr;

		var address3 = document.querySelector('#member_addr');
		//address3.value = zipNo + ", " + roadFullAddr;
		address3.value = roadFullAddr;
	}
   
</script>

