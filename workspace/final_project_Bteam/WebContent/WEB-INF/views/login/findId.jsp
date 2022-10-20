<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Find ID</title>
<style>
:root { 
   -input-padding-x: 1.5rem; -
   -input-padding-y: .75rem;
}

body {
   background-color: white;
}
input{
height: 50px;
}

.login {
	width: 500px;
	margin:0 auto;
}
</style>


<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/modern-business.css" rel="stylesheet">

<!-- Bootstrap core JavaScript -->
<script src="jquery/jquery.min.js"></script>
<script src="js/bootstrap.bundle.min.js"></script>
</head>
<body>
<section class="path">
   <div class="container">Home <span>&nbsp;>&nbsp;</span> <b>���̵� ã��</b></div>
</section>

<br>
<br>
<div class="login">
<h2> ���̵� ã�� </h2>
<h5> �̸��� ��ȭ��ȣ�� ���̵� ã�� �� �ֽ��ϴ�.</h5>
<form method="post" class="form-signin" action="find_id" name="findform">
      <div class="form-label-group">
         <input type="text" id="member_name" name="member_name" class="form-control" placeholder="name" />
      </div>
      
      <div class="form-label-group">
         <input type="text" id="member_phone" name="member_phone" class="form-control" placeholder="phone"/>
      </div>

      <div class="form-label-group">
         <input class="btn btn-lg btn-secondary btn-block text-uppercase"
            type="submit" value="check">
      </div>

      <!-- �̸��� ��ȭ��ȣ�� ��ġ���� ���� ��-->
      <c:if test="${check == 1}">
         <script>
            opener.document.findform.name.value = "";
            opener.document.findform.phone.value = "";
         </script>
         <label>��ġ�ϴ� ������ �������� �ʽ��ϴ�.</label><br>
         <input class="btn btn-lg btn-secondary btn-block text-uppercase"
               type="button" value="OK" onclick="closethewindow()">
      </c:if>

      <!-- �̸��� ��й�ȣ�� ��ġ���� ���� �� -->
      <c:if test="${check == 0 }">
      <label>ã���ô� ���̵��' ${member_id}' �Դϴ�.</label>
      <div class="form-label-group">
            <input class="btn btn-lg btn-secondary btn-block text-uppercase"
               type="button" value="OK" onclick="closethewindow()">
         </div>
      </c:if>

   </form>
   
   <script type="text/javascript">
      function closethewindow(){
         window.location.href='http://localhost/final_project_Bteam/main/'
      }
   </script>
   </div>
</body>
</html>