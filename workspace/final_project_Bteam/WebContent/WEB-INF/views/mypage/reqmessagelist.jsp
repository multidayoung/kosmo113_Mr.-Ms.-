<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="mycontext" value="${pageContext.request.contextPath}" />

<section class="path">
   <div class="container">Home <span>&nbsp;>&nbsp;</span> ���������� <span>&nbsp;>&nbsp;</span> ������ <span>&nbsp;>&nbsp;</span> <b>���� ������</b></div>
</section>

<section class="container content">
	<div class="mypage">
		<ul class="left_menu">
			<li><a href="${mycontext}/member/myPage">ȸ����������</a></li>
			<li><a href="${mycontext}/animal/animalList">�� �ݷ�����</a></li>
			<li><a href="${mycontext}/mypage/friendslist">ģ�����</a></li>
			<li><a href="${mycontext}/mypage/messageList" class="on">������</a></li>
			<li><a href="${mycontext}/orders/ordersList">���Ÿ��</a></li>
			<li><a href="${mycontext}/basket/basketList">��ٱ���</a></li>
			<li><a href="${mycontext}/mypage/pointList">����Ʈ��볻��</a></li>
		</ul>
		<div class="right_cont">
			<ul class="tab_btn">
				<li><a href="${mycontext}/mypage/messageList">���� ������</a></li>
				<li><a href="${mycontext}/mypage/reqmessageList" class="on">���� ������</a></li>
			</ul>
			<div class="tab_content on">
				<table class="table">
					<tbody>
						<c:forEach var="reqmlist" items="${reqmessagelist}">
							<tr>
								<td>${reqmlist.rownum}</td>
								<td><img alt="" src="${mycontext}/resources/animalimage/${reqmlist.animal.animal_img1}" width="50" height="50"></td>
								<td>${reqmlist.member_id}</td>
								<td>${reqmlist.animal.animal_name}</td>
								<td>${reqmlist.message.message_content}</td>
								<td>${reqmlist.message.message_date}</td>
							</tr>

						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</section>