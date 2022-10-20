<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="mycontext" value="${pageContext.request.contextPath}" />

<section class="path">
   <div class="container">Home <span>&nbsp;>&nbsp;</span> ���������� <span>&nbsp;>&nbsp;</span> <b>ȸ����������</b></div>
</section>

<section class="container content">
   <div class="mypage">
      <ul class="left_menu">
         <li><a href="${mycontext}/member/myPage" class="on">ȸ����������</a></li>
         <li><a href="${mycontext}/animal/animalList">�� �ݷ�����</a></li>
         <li><a href="${mycontext}/mypage/friendslist">ģ�����</a></li>
         <li><a href="${mycontext}/mypage/messageList">������</a></li>
         <li><a href="${mycontext}/orders/ordersList">���Ÿ��</a></li>
         <li><a href="${mycontext}/basket/basketList">��ٱ���</a></li>
         <li><a href="${mycontext}/mypage/pointList" >����Ʈ��볻��</a></li>
      </ul>
      <div class="right_cont">
         <form action="memberrf" method="post" enctype="multipart/form-data">
            <div class="form-group">
               <label for="member_id">���̵�</label> 
               <input type="text" class="form-control" id="member_id" name="member_id" value="${vo.member_id}" readonly="readonly">
            </div>
            <div class="navbar navbar-light">
               <label for="member_name">�̸�</label> 
               <input type="text" class="form-control" id="member_name" placeholder="�̸� �Է�" name="member_name" value="${vo.member_name}" required="required">
            </div>
            <div class="navbar navbar-light">
               <label>��й�ȣ</label> 
               <input class="form-control" type="password" placeholder="��й�ȣ" id="member_pwd" name="member_pwd" required>
            </div>
            <div class="navbar navbar-light">
               <label>��й�ȣ Ȯ��</label> 
               <input class="form-control" type="password" placeholder="��й�ȣ Ȯ��" id="pw2" required>
            </div>
            <div class="navbar navbar-light">
               <label for="member_phone">�޴���ȭ��ȣ</label> 
               <input type="text" class="form-control" id="member_phone" placeholder="�޴���ȭ��ȣ �Է�" name="member_phone" value="${vo.member_phone}" required="required">
            </div>
            <div class="navbar navbar-light">
               <label for="member_email">�̸���</label> 
               <input type="text" class="form-control" id="member_email" placeholder="�̸��� �Է�" name="member_email" value="${vo.member_email}" required="required">
            </div>
            <div class="navbar navbar-light">
               <label for="member_addr">�ּ�</label> 
               <input type="text" class="form-control" id="member_addr" placeholder="�ּ� �Է�" name="member_addr" value="${vo.member_addr}" required="required">
            </div>
            <div class="row mb-3">
               <label class="col-sm-2 col-form-label">�̹��� ���ε�</label>
               <div class="mb-3">
                  <input type="file" name="mfile" id="mfile" class="form-control">
                  <input type="hidden" name="member_img" value="${vo.member_img}">
               </div>
               <div class="text-center">
                  <img src="${mycontext}/resources/member/${vo.member_img}" id="imgx">
               </div>
            </div>
            <div class="form-group" style="text-align: right; margin-top: 10px;">
               <button type="submit" class="btn btn-outline-primary btn-sm" id="sign">�����Ϸ�</button>
            </div>
         </form>
      </div>
   </div>
</section>

<script>
function chooseGender(gen) {
   $('#member_gender').val(gen);
}

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
</script>