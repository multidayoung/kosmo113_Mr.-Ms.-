<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="mycontext" value="${pageContext.request.contextPath}"/>

<section class="path">
   <div class="container">Home <span>&nbsp;>&nbsp;</span> 마이페이지 <span>&nbsp;>&nbsp;</span> <b>내 반려동물</b></div>
</section>

		<section class="container content">
			<div class="mypage">
		      <ul class="left_menu">
		          <li><a href="${mycontext}/member/myPage">회원정보수정</a></li>
		           <li><a href="${mycontext}/animal/animalList" class="on">내 반려동물</a></li>
		           <li><a href="${mycontext}/mypage/friendslist">친구목록</a></li>
		           <li><a href="${mycontext}/mypage/messageList">쪽지함</a></li>
		           <li><a href="${mycontext}/orders/ordersList">구매목록</a></li>
		         <li><a href="${mycontext}/basket/basketList">장바구니</a></li>
		         <li><a href="${mycontext}/mypage/pointList">포인트사용내역</a></li>
		         </ul>
		      <div class="right_cont">   
		      
			<form method="post" action="animalIn" enctype="multipart/form-data" id="upform">
				
				<input type="hidden" value="${id}" name="member_id"/>
			
		      <div class="row mb-3">
		         <label class="col-sm-2 col-form-label">반려동물 이름</label>
		         <div class="col-sm-10">
		               <input type="text" name="animal_name" id="animal_name" class="form-control">
		          </div>
		      </div>
		 
		  	  <div class="row mb-3">
		         <label class="col-sm-2 col-form-label">반려동물 나이</label>
		         <div class="col-sm-10">
		               <input type="text" name="animal_age" id="animal_age" class="form-control">
		          </div>
		      </div>
		      
		      <div class="row mb-3">
		         <label class="col-sm-2 col-form-label">반려동물 성별</label>
		         <div class="col-sm-10" style="width:30%;">
		            <select class="form-select" name="animal_gender" id="animal_gender">
                        <option selected="selected">암</option>
                        <option>수</option>
		            </select>
		         </div>
		      </div>
		      
		      <div class="row mb-3">
		         <label class="col-sm-2 col-form-label">나의 반려동물은 </label>
		         <div class="col-sm-10" style="width:30%;">
		            <select class="form-select" name="cate_species" id="cate_species">
                        <option>${list[1].cate_species}</option>
		            </select>
		         </div>
		      </div>
		  
		   <!--   <div class="row mb-3">
		         <label class="col-sm-2 col-form-label">품종</label>
		         <div class="col-sm-10" style="width:30%;">
		            <select class="form-select" name="cate_kind" id="cate_kind">
                        <option selected="selected">시츄</option>
                        <option>몰티즈</option>
		            </select>
		         </div>
		      </div>   --> 
		      
		    <div class="row mb-3">
		         <label class="col-sm-2 col-form-label">종</label>
		         <div class="col-sm-10" style="width:30%;">
		            <select class="form-select" name="cate_kind" id="cate_kind">
                        <c:forEach var="item" items="${list}">
                       		<option>${item.cate_kind}</option>
                    	</c:forEach>
		            </select>
		         </div>
		      </div>  
		      
		      <div class="row mb-3">
		         <label class="col-sm-2 col-form-label">이미지 업로드1</label>
		         <div class="col-sm-10 mb-3">
		            <input type="file" name="mfile" id="mfile" class="form-control">
		         </div>
		         <div class="text-center">
		            <img src="${mycontext}/resources/animalimage/noimage.jpg" id="imgx" width="200px;">
		         </div>
		      </div>
		      
		      <div class="row mb-3">
		         <label class="col-sm-2 col-form-label">이미지 업로드2</label>
		         <div class="col-sm-10 mb-3">
		            <input type="file" name="mfile2" id="mfile2" class="form-control">
		         </div>
		         <div class="text-center">
		            <img src="${mycontext}/resources/animalimage/noimage.jpg" id="imgx2" width="200px;">
		         </div>
		      </div>
		      
		      <div class="row mb-3">
		         <label class="col-sm-2 col-form-label">이미지 업로드3</label>
		         <div class="col-sm-10 mb-3">
		            <input type="file" name="mfile3" id="mfile3" class="form-control">
		         </div>
		          <div class="text-center">
		            <img src="${mycontext}/resources/animalimage/noimage.jpg" id="imgx3" width="200px;">
		         </div> 
		      </div>
		      
		      <div class="row mb-3">
		         <label class="col-sm-2 col-form-label">반려동물 상세 소개</label>
		         <div class="col-sm-10 form-floating">
		               <textarea name="animal_detail" id="animal_detail" class="form-control" style="height:200px; padding-top:1rem;"></textarea>
		          </div>
		      </div>
		      
		      <div class="d-flex justify-content-end">
		         <input type="submit" value="등록" class="btn btn-primary"/>&nbsp;
		         
		         <input type="button" value="취소" onclick="location='${mycontext}/main'" class="btn btn-danger"/>
		      </div>
		   </form>
		   </div>		
		   </section>