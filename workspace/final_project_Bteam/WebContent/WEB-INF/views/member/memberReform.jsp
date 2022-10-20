<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="mycontext" value="${pageContext.request.contextPath}" />

<section class="path">
   <div class="container">Home <span>&nbsp;>&nbsp;</span> 마이페이지 <span>&nbsp;>&nbsp;</span> <b>회원정보수정</b></div>
</section>

<section class="container content">
   <div class="mypage">
      <ul class="left_menu">
         <li><a href="${mycontext}/member/myPage" class="on">회원정보수정</a></li>
         <li><a href="${mycontext}/animal/animalList">내 반려동물</a></li>
         <li><a href="${mycontext}/mypage/friendslist">친구목록</a></li>
         <li><a href="${mycontext}/mypage/messageList">쪽지함</a></li>
         <li><a href="${mycontext}/orders/ordersList">구매목록</a></li>
         <li><a href="${mycontext}/basket/basketList">장바구니</a></li>
         <li><a href="${mycontext}/mypage/pointList" >포인트사용내역</a></li>
      </ul>
      <div class="right_cont">
         <form action="memberrf" method="post" enctype="multipart/form-data">
            <div class="form-group">
               <label for="member_id">아이디</label> 
               <input type="text" class="form-control" id="member_id" name="member_id" value="${vo.member_id}" readonly="readonly">
            </div>
            <div class="navbar navbar-light">
               <label for="member_name">이름</label> 
               <input type="text" class="form-control" id="member_name" placeholder="이름 입력" name="member_name" value="${vo.member_name}" required="required">
            </div>
            <div class="navbar navbar-light">
               <label>비밀번호</label> 
               <input class="form-control" type="password" placeholder="비밀번호" id="member_pwd" name="member_pwd" required>
            </div>
            <div class="navbar navbar-light">
               <label>비밀번호 확인</label> 
               <input class="form-control" type="password" placeholder="비밀번호 확인" id="pw2" required>
            </div>
            <div class="navbar navbar-light">
               <label for="member_phone">휴대전화번호</label> 
               <input type="text" class="form-control" id="member_phone" placeholder="휴대전화번호 입력" name="member_phone" value="${vo.member_phone}" required="required">
            </div>
            <div class="navbar navbar-light">
               <label for="member_email">이메일</label> 
               <input type="text" class="form-control" id="member_email" placeholder="이메일 입력" name="member_email" value="${vo.member_email}" required="required">
            </div>
            <div class="navbar navbar-light">
               <label for="member_addr">주소</label> 
               <input type="text" class="form-control" id="member_addr" placeholder="주소 입력" name="member_addr" value="${vo.member_addr}" required="required">
            </div>
            <div class="row mb-3">
               <label class="col-sm-2 col-form-label">이미지 업로드</label>
               <div class="mb-3">
                  <input type="file" name="mfile" id="mfile" class="form-control">
                  <input type="hidden" name="member_img" value="${vo.member_img}">
               </div>
               <div class="text-center">
                  <img src="${mycontext}/resources/member/${vo.member_img}" id="imgx">
               </div>
            </div>
            <div class="form-group" style="text-align: right; margin-top: 10px;">
               <button type="submit" class="btn btn-outline-primary btn-sm" id="sign">수정완료</button>
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
            alert("비밀번호가 일치하지 않습니다.");
            $('#pw2').val('');
            $('#pw2').focus();
         }
      }
   })
});
</script>