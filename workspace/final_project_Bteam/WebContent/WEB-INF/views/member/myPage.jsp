<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="mycontext" value="${pageContext.request.contextPath}" />

<section class="path">
   <div class="container">Home <span>&nbsp;>&nbsp;</span> ���������� <span>&nbsp;>&nbsp;</span> <b>ȸ����������</b></div>
</section>

<section class="container content">
	<div class="mypage">
		<ul class="left_menu">
			<li><a href="${mycontext}/member/myPage" class="on">ȸ����������</a></li>
			<li><a href="${mycontext}/animal/animalList">�� �ݷ�����</a></li>
			<li><a href="${mycontext}/mypage/friendslist">ģ�����</a></li>
			<li><a href="${mycontext}/mypage/messageList">������</a></li>
			<li><a href="${mycontext}/orders/ordersList">���Ÿ��</a></li>
			<li><a href="${mycontext}/basket/basketList">��ٱ���</a></li>
			<li><a href="${mycontext}/mypage/pointList" >����Ʈ��볻��</a></li>
		</ul>
		<div class="right_cont">
				<div class="form-group">
					<label for="member_id">���̵�</label> <input type="text"
						class="form-control" id="member_id" name="member_id"
						value="${vo.member_id}" readonly="readonly">
				</div>
				<div class="form-group">
					<label for="member_name">�̸�</label> <input type="text"
						class="form-control" id="member_name" name="member_name"
						value="${vo.member_name}" readonly="readonly">
				</div>
				<div class="form-group">
					<label for="member_gender">����</label> <input type="text"
						class="form-control" id="member_gender" name="member_gender"
						value="${vo.member_gender}" readonly="readonly">
				</div>
				<div class="form-group">
					<label for="member_phone">��ȭ��ȣ</label> <input type="text"
						class="form-control" id="member_phone" name="member_phone"
						value="${vo.member_phone}" readonly="readonly">
				</div>
				<div class="form-group">
					<label for="member_email">�̸���</label> <input type="text"
						class="form-control" id="member_email" name="member_email"
						value="${vo.member_email}" readonly="readonly">
				</div>
				<div class="form-group">
					<label for="member_addr">�ּ�</label> <input type="text"
						class="form-control" id="member_addr" name="member_addr"
						value="${vo.member_addr}" readonly="readonly">
				</div>
				<div class="form-group">
					<label for="member_date">���Գ�¥</label> <input type="text"
						class="form-control" id="member_date" name="member_date"
						value="${vo.member_date}" readonly="readonly">
				</div>
				<br>
				<button class="btn btn-primary" type="button"
					onclick="location='${mycontext}/member/memberReform?member_id=${vo.member_id}'">����</button>
				<button class="btn btn-danger" type="button"
					onclick="location='${mycontext}/member/memberdelete?member_id=${vo.member_id}'">Ż��</button>

		</div>
	</div>
</section>

<!-- ?member_id=${vo.member_id} -->