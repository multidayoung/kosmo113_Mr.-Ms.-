<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<section class="path">
   <div class="container">Home <span>&nbsp;>&nbsp;</span> <b>친구찾기</b></div>
</section>

<c:set var="mycontext" value="${pageContext.request.contextPath}" />
<section class="container content">
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
			<tr>
				<input type="hidden" id="friendId" value="${vo.member_id}">
				<input type="hidden" id="myId" value="${sessionScope.sessionID}">
			</tr>
		</table>
		<div class="d-flex justify-content-end">
			<c:choose>
				<c:when test="${vo.cate_species eq '개' }">
					<input type="button" value="목록" onclick="location='${mycontext}/community/communitylist_dog?cPage=${nowPage}'" class="btn btn-primary">&nbsp;
				</c:when>
				<c:when test="${vo.cate_species eq '고양이' }">
					<input type="button" value="목록" onclick="location='${mycontext}/community/communitylist_cat?cPage=${nowPage}'" class="btn btn-primary">&nbsp;
				</c:when>
			</c:choose>
			<c:choose>
				<c:when test="${chkfriends == 0 }">
				<input type="button" value="친구추가" class="btn btn-success" id="fBtn">&nbsp;
		 		</c:when>
		 		<c:when test="${chkfriends == 1 }">
				<input type="button" value="쪽지보내기" data-bs-toggle="modal" data-bs-target="#exampleModal" data-bs-whatever="@mdo" class="btn btn-danger">
		 		</c:when>
			</c:choose>

		</div>
	</div>
</section>

<!-- 모달창 -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">쪽지 작성</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form>
          <div class="mb-3">
          		<input type="hidden" id="friendId" value="${vo.member_id}">
				<input type="hidden" id="myId" value="${sessionScope.sessionID}">
            <label for="recipient-name" class="col-form-label">받는 사람:</label>
            <input type="text" class="form-control" id="recipient-name" value="${vo.member_id}" readonly="readonly">
          </div>
          <div class="mb-3">
            <label for="message-text" class="col-form-label">내용:</label>
            <textarea class="form-control" id="message-text"></textarea>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" id="closeBtn">Close</button>
        <button type="button" class="btn btn-primary" id="send">쪽지 전송</button>
      </div>
    </div>
  </div>
</div> 

<script>
	$(function() {
		$('#fBtn').click(function() {

			var friendId = $('#friendId').val();
			var myId = $('#myId').val();
			$.ajax({
				type : "get",
				url : "${mycontext}/addfriend",
				data : {
					"myId" : myId,
					"friendId" : friendId
				},
				dataType : "text",
				contentType : "application/text;charset=EUC-KR",
				success : function(result) {
					if (result == "대기") {
						alert("친구 요청이 완료되었습니다.");
					} else {
						alert("이미 친구 요청이 완료되었습니다.")
					}
				}
			});
		});
		
		$('#send').click(function(e){
			   var myid = $('#myId').val();
			   var friendId = $('#friendId').val();
			   var content = $('#message-text').val();
			   console.log(myid);
			   console.log(friendId);
			   console.log(content);
			   var senddata = "myId="+myid+"&friendId="+friendId+"&content="+content;
			    // 전송한 정보를 db에 저장	
			    $.ajax({
			        type: 'get',
			        url: '${mycontext}/sendMessage',
			        data: senddata,
			        dataType: 'text',
			        success: function(){    // db전송 성공시 실시간 알림 전송
			            alert("메시지 전송이 완료되었습니다.")
			        	document.getElementById('closeBtn').click();
			        }
			    });
			});
	});

</script>
