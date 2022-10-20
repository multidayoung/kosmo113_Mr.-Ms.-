<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<c:set var="mycontext" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Mr.�� & Ms.��</title>
		
		<!-- css �ʱ�ȭ -->
    	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css"> 
    	
    	<!-- ��Ʈ -->
    	<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
		
		<!-- ��Ʈ��Ʈ�� -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
		
		<link rel="stylesheet" href="${mycontext}/resources/css/style.css"/>
		
		<!-- �������� -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        
        <!-- ��õģ�� �����̵� -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.js"></script>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick-theme.min.css">
	</head>
	<body>
		<!-- header -->
		<tiles:insertAttribute name="header"/>
		
		<!-- body -->
		<tiles:insertAttribute name="body" ignore="true"/>
		
		<!-- dialogflow ê��API -->
		<script src="https://www.gstatic.com/dialogflow-console/fast/messenger/bootstrap.js?v=1"></script>
		<df-messenger
		  chat-icon="https:&#x2F;&#x2F;localhost&#x2F;final_project_Bteam&#x2F;main&#x2F;"
		  intent="WELCOME"
		  chat-title="AI_Gang_Go"
		  agent-id="fb4ac6b1-6c82-44d6-9c81-e8131e9fdecc"
		  language-code="ko"
		></df-messenger>
			
		<!-- footer -->
		<tiles:insertAttribute name="footer"/>
	</body>
</html>