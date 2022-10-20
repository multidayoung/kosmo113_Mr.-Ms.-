<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="mycontext" value="${pageContext.request.contextPath}"/>
		<section>
			<div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
				<div class="carousel-indicators">
					<button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
					<button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
					<button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
				</div>
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img src="${mycontext}/resources/image/visual01.jpg" class="d-block w-100" alt="이미지1">
						<div class="carousel-caption d-none d-md-block">
							<h5>Scroll Down</h5>
							<p>↓</p>
						</div>
					</div>
					<div class="carousel-item">
						<img src="${mycontext}/resources/image/visual02.jpg" class="d-block w-100" alt="이미지2">
						<div class="carousel-caption d-none d-md-block">
							<h5>Scroll Down</h5>
							<p>↓</p>
						</div>
					</div>
					<div class="carousel-item">
						<img src="${mycontext}/resources/image/visual03.jpg" class="d-block w-100" alt="이미지3">
						<div class="carousel-caption d-none d-md-block">
							<h5>Scroll Down</h5>
							<p>↓</p>
						</div>
					</div>
				</div>
				<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Previous</span>
				</button>
				<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Next</span>
				</button>
			</div>
		</section>
		
		<section class="container content introduction" style="padding:100px 0 70px;">
			<h2>INTRODUCTION</h2>
			<ul>
				<li>
					<a href="${mycontext}/trails/trailsList">
						<div class="imgbox"><img src="${mycontext}/resources/image/icon01.png"></div>
						<div class="txtbox">
							<p>Walking Trails</p>
							<p>산책로</p>
							<p>경로 녹화를 통해 나의 이동경로를 기록하고 기록한 산책로를 확인할 수 있습니다. 
현재 내 위치를 기준으로 주변 동물병원과 애완용품점 위치를 알 수 있습니다.</p>
							<p>+</p>
						</div>
					</a>
				</li>
				<li>
					<c:choose>
						<c:when test="${sessionScope.sessionID == null }">
							<a href="javascript:alert('로그인 후 이용가능한 페이지입니다.');">
								<div class="imgbox"><img src="${mycontext}/resources/image/icon02.png"></div>
								<div class="txtbox">
									<p>Find Friends</p>
									<p>친구찾기</p>
									<p>반려동물이 사는 곳, 종, 상세설명 분석을 통해 반려동물 친구를 추천해드립니다.
친구추가를 통해 반려동물 친구를 만들고 1대1 쪽지기능을 사용할 수 있습니다.</p>
									<p>+</p>
								</div>
							</a>
						</c:when>
						<c:when test="${sessionScope.sessionID != null }">
							<a href="${mycontext}/community/communitylist?cPage=1">
								<div class="imgbox"><img src="${mycontext}/resources/image/icon02.png"></div>
								<div class="txtbox">
									<p>Find Friends</p>
									<p>친구찾기</p>
									<p>반려동물이 사는 곳, 종, 상세설명 분석을 통해 반려동물 친구를 추천해드립니다.
친구추가를 통해 반려동물 친구를 만들고 1대1 쪽지기능을 사용할 수 있습니다.</p>
									<p>+</p>
								</div>
							</a>
						</c:when>
					</c:choose>
				</li>
				<li>
					<a href="${mycontext}/item/itemList?gender=dog">
						<div class="imgbox"><img src="${mycontext}/resources/image/icon03.png"></div>
						<div class="txtbox">
							<p>Shopping Mall</p>
							<p>쇼핑몰</p>
							<p>반려동물의 건강한 삶을 위해 해외 브랜드를 엄선하여 좋은 상품을 보급하고 있습니다.
반려동물의 편의와 행복을 위한다는 사명으로 꾸준히 연구하고 있습니다.</p>
							<p>+</p>
						</div>
					</a>
				</li>
			</ul>
		</section>
		
		<section class="imglist">
			<ul>
				<li><img src="${mycontext}/resources/image/animalimg01.jpg"></li>
				<li><img src="${mycontext}/resources/image/animalimg02.jpg"></li>
				<li><img src="${mycontext}/resources/image/animalimg03.jpg"></li>
				<li><img src="${mycontext}/resources/image/animalimg04.jpg"></li>
			</ul>
		</section>