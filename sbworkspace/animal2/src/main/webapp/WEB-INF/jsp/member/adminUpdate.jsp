<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
      <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
	.form-control {
		width: 25%;
	}
.w-btn-gray-outline {
    border: 3px solid #a3a1a1;
    color: #6e6e6e;
}
.w-btn-gray-outline:hover {
    background-color: #a3a1a1;
    color: #e3dede;
}
.w-btn-outline:hover {
    letter-spacing: 2px;
    transform: scale(1.2);
    cursor: pointer;
}
.w-btn-outline:active {
    transform: scale(1.5);
}
.w-btn-outline {
    position: relative;
    padding: 5px 10px;
    border-radius: 15px;
    font-family: "paybooc-Light", sans-serif;
    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
    text-decoration: none;
    font-weight: 600;
    transition: 0.25s;
}
</style>
         <article>
            <header>
               <h1 class="h3 mb-3 fw-normal">회원 수정</h1>
            </header>
            <ul class="list-unstyled">
               <li class="border-top my-3"></li>  
            </ul>
            
               <form action="memberModify" method="post">

			
                  <input type="hidden" id="member_no" name="member_no" value="${mvo.member_no }">
                  
                  <div class="mb-3">
                     <label>아이디</label>
                     <input class="form-control" type="text" name="member_id" id="member_id" value="${mvo.member_id }" />
                  </div>
                     <div class="mb-3">
                        <label>이름</label>
                        <input class="form-control"type="text" name="member_name" id="member_name" value="${mvo.member_name }" />
                     </div>
                     
                     <div class="mb-3">
                        <label>이메일</label>
                        <input class="form-control"type="text" name="member_email" id="member_email" value="${mvo.member_email }" />
                     </div>
                     <div class="mb-3">
                        <label>전화번호</label>
                        <input class="form-control"type="text" name="member_phone" id="member_phone" value="${mvo.member_phone }" />
                     </div>
                     <div class="mb-3">
                        <label>주소</label>
                        <input class="form-control"type="text" name="member_addr" id="member_addr" value="${mvo.member_addr }" />
                     </div>
                
               <div class="form-group" style="text-align: right; margin-top: 10px;">
                  <input type="submit" class="w-btn-outline w-btn-gray-outline" id="cfbtn" value="수정완료">
                  <button type="button" class="w-btn-outline w-btn-gray-outline" id="rebtn"
                     onclick="location.href='adminMemberList'">목록으로</button>
               </div>
               </form>
         </article>