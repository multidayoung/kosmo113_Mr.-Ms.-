<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="mycontext" value="${pageContext.request.contextPath}" />

<script>

	function friendDel(data) {
		if (confirm("���� �����Ͻðڽ��ϱ�??") == true){    //Ȯ��
		var formData = $(data).serialize();
		$.ajax({
			type : "post",
			url : "${mycontext}/friendsCancel",
			data : formData,
			dataType : "text",
			contentType : "application/text;charset=EUC-KR",
			success : function(result) {
				location.reload();
			}
		});
		}else{   //���
		     return false;
		 }
	}
</script>

<section class="path">
   <div class="container">Home <span>&nbsp;>&nbsp;</span> ���������� <span>&nbsp;>&nbsp;</span> ģ����� <span>&nbsp;>&nbsp;</span> <b>ģ�����</b></div>
</section>

<section class="container content">
	<div class="mypage">
		<ul class="left_menu">
			<li><a href="${mycontext}/member/myPage">ȸ����������</a></li>
			<li><a href="${mycontext}/animal/animalList">�� �ݷ�����</a></li>
			<li><a href="${mycontext}/mypage/friendslist" class="on">ģ�����</a></li>
			<li><a href="${mycontext}/mypage/messageList">������</a></li>
			<li><a href="${mycontext}/orders/ordersList">���Ÿ��</a></li>
			<li><a href="${mycontext}/basket/basketList">��ٱ���</a></li>
			<li><a href="${mycontext}/mypage/pointList">����Ʈ��볻��</a></li>
		</ul>
		<div class="right_cont">
			<ul class="tab_btn">
				<li><a href="${mycontext}/mypage/friendslist" class="on">ģ�����</a></li>
				<li><a href="${mycontext}/mypage/requestlist">��û�� ���</a></li>
				<li><a href="${mycontext}/mypage/responselist">��û ���� ���</a></li>
			</ul>
			<div class="tab_content on">
				<c:forEach var="flist" items="${friendslist}" varStatus="vs">
					<div class="friendslist">
						<div class="imgbox">
							<img src="${mycontext}/resources/animalimage/${flist.animal_img1}">
						</div>
						<div class="txtbox">
							<p class="name">${flist.member_id}</p>
							<p class="name">${flist.animal_name}</p>
							<p>
								ǰ�� : ${flist.cate_kind}<br> ���� : ${flist.animal_age}��, ���� :
								${flist.animal_gender}��
							</p>
							<button type="button" class="btn btn-primary"
								onclick="location.href='${mycontext}/community/communitydetail?anum=${flist.animal_num}&friendId=${flist.member_id}'">�󼼺���</button>
						<button type="button" class="btn btn-danger" id="cBtn" onclick="friendDel(fc${vs.index})">�����ϱ�</button>
						<form id="fc${vs.index}">
							<input type="hidden" id="member_id" name="member_id" value="${flist.member_id}">											
						</form>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
</section>
