<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>]
<style>
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
.w-btn-gray-outline {
    border: 3px solid #a3a1a1;
    color: #6e6e6e;
}
.w-btn-gray-outline:hover {
    background-color: #a3a1a1;
    color: #e3dede;
}
</style>
   <article>
      <header>
         <h1>회원 상세 화면</h1>
      </header>
      <ul class="list-unstyled">
         <li class="border-top my-3"></li>
      </ul>
      
      <body>
         <div class="container">
            <fieldset>
               <form method="post" action="memberUpdate" id="upForm" name="upForm" enctype="multipart/form-data">

                  <table class="table">
                     <colgroup>
                        <col width="15%">
                        <col width="35%">
                        <col width="15%">
                        <col width="*">
                     </colgroup>

                     <tbody>
                        <tr>
                           <th>아이디</th>
                           <input type="hidden" name="member_id" id="member_id" value="${mvo.member_id }" /><td>${mvo.member_id }</td>
                           
                        </tr>
                        <tr>
                           <th>이름</th>
                           <input type="hidden" name="member_name" id="member_name" value="${mvo.member_name }" /><td>${mvo.member_name }</td>
                           <th>성별</th>
                           <input type="hidden" name="member_gender" id="member_gender" value="${mvo.member_gender }" /><td>${mvo.member_gender }</td>
                           
                        </tr>
                        <tr>
                           <th>나이</th>
                           <input type="hidden" name="member_age" id="member_age" value="${mvo.member_age }" /><td>${mvo.member_age }</td>
                           <th>이메일</th>
                           <input type="hidden" name="member_email" id="member_email" value="${mvo.member_email }" /><td>${mvo.member_email }</td>
                        </tr>
                        <tr>
                           <th>전화번호</th>
                           <input type="hidden" name="member_phone" id="member_phone" value="${mvo.member_phone }" /><td>${mvo.member_phone }</td>
                           <th>주소</th>
                           <input type="hidden" name="member_addr" id="member_addr" value="${mvo.member_addr }" /> <td>${mvo.member_addr}</td>
                        </tr>
                        <tr>
                           <th>가입날짜</th>
                           <input type="hidden" name="member_date" id="member_date" value="${mvo.member_date }" /><td>${mvo.member_date }</td>
                        </tr>
                     </tbody>
               </table>
               <div class="form-group" style="text-align: right; margin-top: 10px;">
                  <button type="button" class="w-btn-outline w-btn-gray-outline" onclick="location='adminMemberList'">목록으로</button>
                  <input type="submit" class="w-btn-outline w-btn-gray-outline" id="ubtn" value="수정">
                  <button type="button" class="w-btn-outline w-btn-gray-outline" id="dbtn"
                     onclick="location.href='memberDelete?member_id=${mvo.member_id }'">삭제</button>
               </div>
            </form>
         </fieldset>
         </div>
      </body>
   </article>
  
