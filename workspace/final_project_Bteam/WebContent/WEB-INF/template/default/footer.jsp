<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="mycontext" value="${pageContext.request.contextPath}"/>
	
		<footer>
			<div class="container">
				<p>&copy; 2022. KOSMO113 MAIN-PROJECT B-TEAM. ALL RIGHTS RESERVED.</p>
			</div>
			<script>
				//이미지 미리보기 기능
			    function readURL1(input) {
			    	if (input.files && input.files[0]) {
			    		var reader = new FileReader();
			    		reader.onload = function(e) {
			    			$('#imgx').attr('src', e.target.result);
			    		}
			    		reader.readAsDataURL(input.files[0]);
			    	}
			    }
			    function readURL2(input) {
			    	if (input.files && input.files[0]) {
			    		var reader = new FileReader();
			    		reader.onload = function(e) {
			    			$('#imgx2').attr('src', e.target.result);
			    		}
			    		reader.readAsDataURL(input.files[0]);
			    	}
			    }
			    function readURL3(input) {
			    	if (input.files && input.files[0]) {
			    		var reader = new FileReader();
			    		reader.onload = function(e) {
			    			$('#imgx3').attr('src', e.target.result);
			    		}
			    		reader.readAsDataURL(input.files[0]);
			    	}
			    }
			    
			
			   	$(function() {
					$('#mfile').change(function() {
						readURL1(this);
					});
				});
			   	
			 	$(function() {
					$('#mfile2').change(function() {
						readURL2(this);
					});
				});
			 	
			 	$(function() {
					$('#mfile3').change(function() {
						readURL3(this);
					});
				});
			 		   	
			 	
			</script>
			
		</footer>