<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
.login {
	width: 500px;
	margin:0 auto;
}
</style>

<section class="path">
   <div class="container">Home <span>&nbsp;>&nbsp;</span> <b>로그인</b></div>
</section>

<section class="container content">
	<div class="login">
	<%-- boardForm 들어 갈 자리 --%>
		<div class="form-group">
			<h2>로그인</h2>
			</div>
		
				<form action="loginProcess" method="post" id="loginInfo" onsubmit="return checkValue()">
					<%-- 사용자 아이피 주소 --%>
					<input type="hidden" name="reip" value="<%=request.getRemoteAddr()%>">
			
					<div class="form-group">
						<label for="member_id">ID</label> <input type="text"
							class="form-control" id="member_id" placeholder="아이디 입력"
							name="member_id" maxlength="10" required="required" width="100px;"
							pattern=".{3,20}">
					</div>
			
					<div class="form-group">
						<label for="member_pwd">비밀번호</label> <input type="password"
							class="form-control" id="member_pwd" placeholder="*****"
							name="member_pwd" maxlength="10" required="required"
							pattern=".{2,10}">
					</div>
			
					<div class="form-group" style="text-align: right; margin-top: 10px">
						<button type="submit" class="btn btn-secondary">로그인</button>
						&nbsp; <input type="button" class="btn btn-secondary" value="아이디 찾기"
							onclick="location.href='find_id_form'" /> <input type="button"
							class="btn btn-secondary" value="비밀번호 찾기"
							onclick="location.href='find_password_form'" />
					</div>
				</form>
				<c:if test="${emsg != null}">
               		<p>${emsg }</p>
            	</c:if> 
			</div>
		</div>
	</div>
</section>
