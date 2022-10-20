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
						<img src="${mycontext}/resources/image/visual01.jpg" class="d-block w-100" alt="�̹���1">
						<div class="carousel-caption d-none d-md-block">
							<h5>Scroll Down</h5>
							<p>��</p>
						</div>
					</div>
					<div class="carousel-item">
						<img src="${mycontext}/resources/image/visual02.jpg" class="d-block w-100" alt="�̹���2">
						<div class="carousel-caption d-none d-md-block">
							<h5>Scroll Down</h5>
							<p>��</p>
						</div>
					</div>
					<div class="carousel-item">
						<img src="${mycontext}/resources/image/visual03.jpg" class="d-block w-100" alt="�̹���3">
						<div class="carousel-caption d-none d-md-block">
							<h5>Scroll Down</h5>
							<p>��</p>
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
							<p>��å��</p>
							<p>��� ��ȭ�� ���� ���� �̵���θ� ����ϰ� ����� ��å�θ� Ȯ���� �� �ֽ��ϴ�. 
���� �� ��ġ�� �������� �ֺ� ���������� �ֿϿ�ǰ�� ��ġ�� �� �� �ֽ��ϴ�.</p>
							<p>+</p>
						</div>
					</a>
				</li>
				<li>
					<c:choose>
						<c:when test="${sessionScope.sessionID == null }">
							<a href="javascript:alert('�α��� �� �̿밡���� �������Դϴ�.');">
								<div class="imgbox"><img src="${mycontext}/resources/image/icon02.png"></div>
								<div class="txtbox">
									<p>Find Friends</p>
									<p>ģ��ã��</p>
									<p>�ݷ������� ��� ��, ��, �󼼼��� �м��� ���� �ݷ����� ģ���� ��õ�ص帳�ϴ�.
ģ���߰��� ���� �ݷ����� ģ���� ����� 1��1 ��������� ����� �� �ֽ��ϴ�.</p>
									<p>+</p>
								</div>
							</a>
						</c:when>
						<c:when test="${sessionScope.sessionID != null }">
							<a href="${mycontext}/community/communitylist?cPage=1">
								<div class="imgbox"><img src="${mycontext}/resources/image/icon02.png"></div>
								<div class="txtbox">
									<p>Find Friends</p>
									<p>ģ��ã��</p>
									<p>�ݷ������� ��� ��, ��, �󼼼��� �м��� ���� �ݷ����� ģ���� ��õ�ص帳�ϴ�.
ģ���߰��� ���� �ݷ����� ģ���� ����� 1��1 ��������� ����� �� �ֽ��ϴ�.</p>
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
							<p>���θ�</p>
							<p>�ݷ������� �ǰ��� ���� ���� �ؿ� �귣�带 �����Ͽ� ���� ��ǰ�� �����ϰ� �ֽ��ϴ�.
�ݷ������� ���ǿ� �ູ�� ���Ѵٴ� ������� ������ �����ϰ� �ֽ��ϴ�.</p>
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