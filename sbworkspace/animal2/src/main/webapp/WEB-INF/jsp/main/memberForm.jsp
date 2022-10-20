<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%-- 본문 시작  --%>
<article >
	<div style="width: 450px; margin: auto">
		<form method="post" action="memInsert">
		
		<p>id : <input type="text" name="member_id" value="길동kimid"></p>
		<p>name : <input type="text" name="member_name" value="김길동"></p>
		<p>pwd : <input type="password" name="member_pwd" value="a1234"></p>
		<p>gender : <input type="text" name="member_gender" value="남"></p>
		<p>age : <input type="text" name="member_age" value="19"></p>
		<p>email : <input type="text" name="member_email" value="김길동@naver.com"></p>
		<p>phone : <input type="text" name="member_phone" value="010-1234-5678"></p>
		<p>addr : <input type="text" name="member_addr" value="가산"></p>
		
		<p><input type="submit" value="click"></p>
		</form>
	</div>
</article>