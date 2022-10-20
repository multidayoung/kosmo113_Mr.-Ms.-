<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="mycontext" value="${pageContext.request.contextPath}"/>

<section class="path">
   <div class="container">Home <span>&nbsp;>&nbsp;</span> ���������� <span>&nbsp;>&nbsp;</span> <b>�� �ݷ�����</b></div>
</section>

      <section class="container content">
	      <div class="mypage">
		      <ul class="left_menu">
		          <li><a href="${mycontext}/member/myPage">ȸ����������</a></li>
		           <li><a href="${mycontext}/animal/animalList" class="on">�� �ݷ�����</a></li>
		           <li><a href="${mycontext}/mypage/friendslist">ģ�����</a></li>
		           <li><a href="${mycontext}/mypage/messageList">������</a></li>
		           <li><a href="${mycontext}/orders/ordersList">���Ÿ��</a></li>
		         <li><a href="${mycontext}/basket/basketList">��ٱ���</a></li>
		         <li><a href="${mycontext}/mypage/pointList">����Ʈ��볻��</a></li>
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
					<th>ǰ�� : </th>
					<td>${vo.cate_kind}</td>
				</tr>
				<tr>
					<th>���� : </th>
					<td>${vo.animal_age}��</td>
				</tr>
				<tr>
					<th>���� : </th>
					<td>${vo.animal_gender}��</td>
				</tr>
				<tr>
					<th>Ư¡ : </th>
					<td>${vo.animal_detail}</td>
				</tr>
				
			</table>
			
			 <a href="${mycontext}/animal/animalForm?member_id=${vo.member_id}&animal=dog" class="btn btn-primary">������ ���</a>
			 <a href="${mycontext}/animal/animalForm?member_id=${vo.member_id}&animal=cat" class="btn btn-danger">����� ���</a>
			</div> 
		</div> 
   </div>

</section>