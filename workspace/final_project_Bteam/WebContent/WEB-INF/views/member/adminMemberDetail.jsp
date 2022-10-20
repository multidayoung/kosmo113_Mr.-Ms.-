<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<article >
        <header>
            <h1>Member Detail</h1>
        </header>
        <ul class="list-unstyled"><li class="border-top my-3"></li></ul>
   <div class="container">
<%-- Form �� �ڸ� --%>   
   <fieldset>
         <legend>Member Detail Form</legend>
         <form method="post" action="memberUpdate" id="upForm" name="upForm" enctype="multipart/form-data" >
         <div class="row mb-3">
            <label>ȸ����ȣ</label>
         <input type="text" name="member_no" id="member_no" value="${vo.member_no }" readonly="readonly"/>
         </div>
         <div class="row mb-3">
            <label>���̵�</label>
         <input type="text" name="member_id" id="member_id" value="${vo.member_id }" readonly="readonly"/>
         <span id="target"></span>
         </div>
         <div class="row mb-3"><%--MEM_NO, MEM_ID, MEM_PW, MEM_NAME, 
  								 MEM_JUBUN, MEM_PHONE, MEM_ADR, MEM_DATE --%>
            <label>��й�ȣ</label>
         <input type="text" name="member_pwd" id="member_pwd" value="${vo.member_pwd }"/>
         </div>
         <div class="row mb-3">
            <label>�̸�</label>
         <input type="text" name="member_name" id="member_name" value="${vo.member_name }"/>
         </div>
         <div class="row mb-3">
            <label>��ȭ��ȣ</label>
         <input type="text" name="member_phone" id="member_phone" value="${vo.member_phone }"/>
         </div>
         <div class="row mb-3">
            <label>�ּ�</label>
         <input type="text" name="member_addr" id="member_addr" value="${vo.member_addr }"/>
         </div>
         <div class="row mb-3">
            <label>���Գ�¥</label>
         <input type="text" name="member_date" id="member_date" value="${vo.member_date }"/>
         </div>
         
                                             
         <div class="form-group" style="text-align: right; margin-top: 10px;" >
         <input type="button" value="����" id="upbtn" class="btn btn-outline-secondary"/>
         <input type="button" value="����" id="delbtn" class="btn btn-outline-secondary"/>
         </div>
         </form>
   </fieldset>      
   </div>
</article>
<script>
<%-- ��ũ��Ʈ ����--%>
$(function () {
	<%-- memberDetail ���������� ȸ������ ���� ��ư --%>
	$('#upbtn').click(function() {
		$('#upForm').submit();
	});

	<%-- memberDetail ���������� ȸ������ ���� ��ư --%>
	$('#delbtn').click(function() {
		location = "memberDelete?num=${vo.member_no}";
	});
	
});

</script>
