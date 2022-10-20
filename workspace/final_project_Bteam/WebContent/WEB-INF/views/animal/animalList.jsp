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
			<div class="animaldetail_img">
			<div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img src="${mycontext}/resources/animalimage/${vo.animal_img1}">
					</div>
					<div class="carousel-item">
						<img src="${mycontext}/resources/animalimage/${vo.animal_img2}">
					</div>
					<div class="carousel-item">
						<img src="${mycontext}/resources/animalimage/${vo.animal_img3}">
					</div>
				</div>
				<button class="carousel-control-prev" type="button"
					data-bs-target="#carouselExampleFade" data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Previous</span>
				</button>
				<button class="carousel-control-next" type="button"
					data-bs-target="#carouselExampleFade" data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Next</span>
				</button>
			</div>
		</div>
		<div class="animaldetail_txt">
			<h1>${vo.animal_name}</h1>
			<table>
				<tr>
					<th>품종 : </th>
					<td>${vo.cate_kind}</td>
				</tr>
				<tr>
					<th>나이 : </th>
					<td>${vo.animal_age}살</td>
				</tr>
				<tr>
					<th>성별 : </th>
					<td>${vo.animal_gender}컷</td>
				</tr>
				<tr>
					<th>특징 : </th>
					<td>${vo.animal_detail}</td>
				</tr>
				
			</table>
			
			 <a href="${mycontext}/animal/animalForm?member_id=${vo.member_id}&animal=dog" class="btn btn-primary">강아지 등록</a>
			 <a href="${mycontext}/animal/animalForm?member_id=${vo.member_id}&animal=cat" class="btn btn-danger">고양이 등록</a>
			</div> 
		</div> 
   </div>

</section>