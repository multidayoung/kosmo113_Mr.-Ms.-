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
			<div class="tab_content on">
				<div class="mb-3">
					<label for="exampleFormControlInput1" class="form-label">�������</label> <input type="email" class="form-control"
						id="exampleFormControlInput1" readonly="readonly" value="${vo.message_sendid}">
					<label for="exampleFormControlInput1" class="form-label">��¥</label> <input type="email" class="form-control"
						id="exampleFormControlInput1" readonly="readonly" value="${vo.message_date}">
				</div>
				<div class="mb-3">
					<label for="exampleFormControlTextarea1" class="form-label">����</label>
					<textarea class="form-control" id="exampleFormControlTextarea1" rows="3" readonly="readonly">${vo.message_content}</textarea>
				</div>
				<button type="button" class="btn btn-info" style="background-color: #7ecae0; color: white;"
				data-bs-toggle="modal" data-bs-target="#exampleModal" data-bs-whatever="@mdo">���庸����</button>
				<button type="button" class="btn btn-info" style="background-color: #7ecae0; color: white;" onclick="location='${mycontext}/mypage/messageList'">���</button>
			</div>
		</div>
	</div>
</section>

<!-- ���â -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">���� �ۼ�</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form>
          <div class="mb-3">
          		<input type="hidden" id="friendId" value="${vo.message_sendid}">
				<input type="hidden" id="myId" value="${sessionScope.sessionID}">
            <label for="recipient-name" class="col-form-label">�޴� ���:</label>
            <input type="text" class="form-control" id="recipient-name" value="${vo.message_sendid}" readonly="readonly">
          </div>
          <div class="mb-3">
            <label for="message-text" class="col-form-label">����:</label>
            <textarea class="form-control" id="message-text"></textarea>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" id="closeBtn">Close</button>
        <button type="button" class="btn btn-primary" id="send">���� ����</button>
      </div>
    </div>
  </div>
</div> 

<script>
$(function() {
	$('#send').click(function(e){
		   var myid = $('#myId').val();
		   var friendId = $('#friendId').val();
		   var content = $('#message-text').val();
		   console.log(myid);
		   console.log(friendId);
		   console.log(content);
		   var senddata = "myId="+myid+"&friendId="+friendId+"&content="+content;
		    // ������ ������ db�� ����	
		    $.ajax({
		        type: 'get',
		        url: '${mycontext}/sendMessage',
		        data: senddata,
		        dataType: 'text',
		        success: function(){    // db���� ������ �ǽð� �˸� ����
		            alert("�޽��� ������ �Ϸ�Ǿ����ϴ�.")
		        	document.getElementById('closeBtn').click();
		        }
		    });
		});
});
</script>