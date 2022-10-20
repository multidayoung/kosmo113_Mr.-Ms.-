<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="mycontext" value="${pageContext.request.contextPath}" />

<script>
$(function() {
	$('#slider').slick({
		slide : 'div', //�����̵� �Ǿ�� �� �±� ex) div, li 
		infinite : true, //���� �ݺ� �ɼ�     
		slidesToShow : 4, // �� ȭ�鿡 ������ ������ ����
		slidesToScroll : 1, //��ũ�� �ѹ��� ������ ������ ����
		speed : 100, // ���� ��ư ������ ���� ȭ�� �ߴµ����� �ɸ��� �ð�(ms)
		arrows : true, // ������ �̵��ϴ� ȭ��ǥ ǥ�� ����
		dots : true, // ��ũ�ѹ� �Ʒ� ������ ���������̼� ����
		autoplay : true, // �ڵ� ��ũ�� ��� ����
		autoplaySpeed : 3000, // �ڵ� ��ũ�� �� �������� �Ѿ�µ� �ɸ��� �ð� (ms)
		pauseOnHover : true, // �����̵� �̵�    �� ���콺 ȣ���ϸ� �����̴� ���߰� ����
		vertical : false, // ���� ���� �����̵� �ɼ�
		prevArrow : "<button type='button' class='slick-prev'>Previous</button>", // ���� ȭ��ǥ ��� ����
		nextArrow : "<button type='button' class='slick-next'>Next</button>", // ���� ȭ��ǥ ��� ����
		dotsClass : "slick-dots", //�Ʒ� ������ ���������̼�(��) css class ����
		draggable : true, //�巡�� ���� ���� 
	});
})
</script>

<section class="recommend">
	<div class="container">
		<h2>��õ ģ��</h2>
		<div id="slider">
			<c:forEach var="rec" items="${recommendlist}">
            <div class="recommendlist">
               <a
                  href="${mycontext}/community/communitydetail?anum=${rec.ANIMAL_NUM}&friendId=${rec.MEMBER_ID}">
                  <div class="imgbox">
                     <img src="${mycontext}/resources/animalimage/${rec.ANIMAL_IMG1}">
                  </div>
                  <h3>${rec.ANIMAL_NAME}</h3>
               </a>
            </div>
         </c:forEach>
		</div>
	</div>
</section>