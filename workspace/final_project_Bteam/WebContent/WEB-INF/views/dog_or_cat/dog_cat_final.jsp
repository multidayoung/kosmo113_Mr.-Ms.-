<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="mycontext" value="${pageContext.request.contextPath}"/>

<!--link rel="stylesheet" href="${mycontext}/resources/kihyeon_css/kkh_default.css"/>
<link rel="stylesheet" href="${mycontext}/resources/kihyeon_css/kkh_main.css"/-->
<style>
.kkh898{
	background-color: #7ecae0;
	padding: 20px;
}
#main{
		background-color: aliceblue;
		width: 80%;
		text-align: center;
		border-radius: 20px;
}
.kkh898 p{
	font-size: 22px;
}

#qna{
	display: none;	
}
.qBox{
	background-color: whitesmoke;
	text-align: center;
	border-radius: 20px;
	font-size: 24px;
	width: 80%
}
.answerList{
	background-color: whitesmoke;
	border-radius: 20px;
	display: block;
	width: 100%;
	border: 20px;
}
.answerList:hover, .answerList:focus{
background-color: #7ecae0;
color: whitesmoke;
}
@keyframes fadeIn {
        from { opacity: 0; }
        to { opacity: 1; }
}
@keyframes fadeOut {
        from { opacity: 1; }
        to { opacity: 0; }
}
@-webkit-keyframes fadeIn {
        from { opacity: 0; }
        to { opacity: 1; }
}
@-webkit-keyframes fadeOut {
        from { opacity: 1; }
        to { opacity: 0; }
}

.fadeIn{
	animation: fadeIn;
	animation-duration: 0.5s;
}
.fadeOut{
	animation: fadeOut;
	animation-duration: 0.5s;
}
.status{
 height: 20px;
 width: 80%;
 background-color: white;
 border-radius: 20px;
}
.statusBar{
	height: 100%;
	border-radius: 20px;
	/* Permalink - use to edit and share this gradient: https://colorzilla.com/gradient-editor/#6db3f2+0,54a3ee+50,3690f0+51,1e69de+100;Blue+Gloss+%233 */
	background: #6db3f2; /* Old browsers */
	background: -moz-linear-gradient(top,  #6db3f2 0%, #54a3ee 50%, #3690f0 51%, #1e69de 100%); /* FF3.6-15 */
	background: -webkit-linear-gradient(top,  #6db3f2 0%,#54a3ee 50%,#3690f0 51%,#1e69de 100%); /* Chrome10-25,Safari5.1-6 */
	background: linear-gradient(to bottom,  #6db3f2 0%,#54a3ee 50%,#3690f0 51%,#1e69de 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#6db3f2', endColorstr='#1e69de',GradientType=0 ); /* IE6-9 */
}

#agev{
	width: 25%;
}
.ageb{
	background-color: whitesmoke;
	text-align: center;
	border-radius: 10px;
	border:  0px whitesmoke;
	font-size: 24px;
	width: 25%
}
#result{
	background-color: aliceblue;
	width: 80%;
	text-align: center;
	border-radius: 20px;
	display: none;
}

.resultDesc p{
	font: 22px;
}

#loading{
	margin: 0 auto;
	padding: 150px 0;
}
.sk-cube-grid {
  width: 50px;
  height:50px;
  margin: 1px auto;
}

.sk-cube-grid .sk-cube {
  width: 33%;
  height: 33%;
  background-color: aliceblue;
  float: left;
  -webkit-animation: sk-cubeGridScaleDelay 1.3s infinite ease-in-out;
          animation: sk-cubeGridScaleDelay 1.3s infinite ease-in-out; 
}
.sk-cube-grid .sk-cube1 {
  -webkit-animation-delay: 0.2s;
          animation-delay: 0.2s; }
.sk-cube-grid .sk-cube2 {
  -webkit-animation-delay: 0.3s;
          animation-delay: 0.3s; }
.sk-cube-grid .sk-cube3 {
  -webkit-animation-delay: 0.4s;
          animation-delay: 0.4s; }
.sk-cube-grid .sk-cube4 {
  -webkit-animation-delay: 0.1s;
          animation-delay: 0.1s; }
.sk-cube-grid .sk-cube5 {
  -webkit-animation-delay: 0.2s;
          animation-delay: 0.2s; }
.sk-cube-grid .sk-cube6 {
  -webkit-animation-delay: 0.3s;
          animation-delay: 0.3s; }
.sk-cube-grid .sk-cube7 {
  -webkit-animation-delay: 0s;
          animation-delay: 0s; }
.sk-cube-grid .sk-cube8 {
  -webkit-animation-delay: 0.1s;
          animation-delay: 0.1s; }
.sk-cube-grid .sk-cube9 {
  -webkit-animation-delay: 0.2s;
          animation-delay: 0.2s; }

@-webkit-keyframes sk-cubeGridScaleDelay {
  0%, 70%, 100% {
    -webkit-transform: scale3D(1, 1, 1);
            transform: scale3D(1, 1, 1);
  } 35% {
    -webkit-transform: scale3D(0, 0, 1);
            transform: scale3D(0, 0, 1); 
  }
}

@keyframes sk-cubeGridScaleDelay {
  0%, 70%, 100% {
    -webkit-transform: scale3D(1, 1, 1);
            transform: scale3D(1, 1, 1);
  } 35% {
    -webkit-transform: scale3D(0, 0, 1);
            transform: scale3D(0, 0, 1);
  } 
}




</style>

<section class="path">
   <div class="container">Home <span>&nbsp;>&nbsp;</span> <b>반려동물 추천 설문조사</b></div>
</section>

<section class="container content">
<div class="kkh898"> 
	<section id="main" class="mx-auto my-3 pb-5 pt-5 px-3">
		<h2>사람 성격 유형에 따른 반려동물 추천</h2>
		<div class="col-6 mx-auto">
			<img src="${mycontext}/resources/img/001.png" alt="mainImg" class="img-fluid">
		</div>
		<p>AI가 성향을 분석하여 강아지 혹은 고양이가 어울릴 지 알려드립니다!<br>
		 아래의 시작하기 버튼을 눌러서 시작해주세요.
		</p>
		<button type="button" class="btn btn-outline-info mt-3 px-3" onclick="js:begin()">시작하기</button>
	</section>
	<section id="qna">
		<div class="status mx-auto mt-5">
			<div class="statusBar">
			
			</div>
			
		</div>
		
		<div class="qBox my-5 py-3 mx-auto">
				
		</div>
		<div class="aBox">
				
		</div>
		<form method="post" name="form1" id="form1">
		<input type="hidden" id="json" name="json"/>
		</form>
	</section>
	<div id="loading" class="animated bounce" style="display: none;">
			<div class="sk-cube-grid">
			  <div class="sk-cube sk-cube1"></div>
			  <div class="sk-cube sk-cube2"></div>
			  <div class="sk-cube sk-cube3"></div>
			  <div class="sk-cube sk-cube4"></div>
			  <div class="sk-cube sk-cube5"></div>
			  <div class="sk-cube sk-cube6"></div>
			  <div class="sk-cube sk-cube7"></div>
			  <div class="sk-cube sk-cube8"></div>
			  <div class="sk-cube sk-cube9"></div>
			</div>
			<p class="text-center" style="color: aliceblue;">AI가 당신의 성향을 분석 중입니다...</p>
		</div>
	<section id="result"  class="mx-auto my-3 pb-5 pt-5 px-3">
		<h2 class="resultname">
		
		</h2>
		<div id="resultImg" class="col-6 mx-auto my-3">
			<img src="" class="img-fluid">
		</div>
		<div class="resultDesc">

			<p>나만의 설문조사 사이트 입니다.<br>
			 아래의 시작하기 버튼을 눌러서 시작해주세요.
			</p>
		</div>
		<c:choose>
        	<c:when test="${sessionScope.sessionID == null }">                  
				<button type="button" class="btn btn-primary mx-3 mt-3 px-3" onClick="location.href='${mycontext}/member/memberForm'">회원가입</button>
				<button type="button" class="btn btn-outline-primary mx-3 mt-3 px-3" onClick="location.href='${mycontext}/loginForm'">로그인</button><br>
			</c:when>
		</c:choose>
		<button type="button" class="btn btn-info mt-3 px-3" onClick="window.location.reload()">다시 해보기!</button>
		
	</section>  
</div>
</section>

<script>
/**
 * @author kosmo
 * 
 */

const qnaList = [
	{
		q: '1. 한가로운 주말, 친구와의 약속이 갑자기 취소되었습니다. 당신의 반응은?',
		a: [
			{answer: 'a. 다른 친구에게 연락하여 약속을 잡아야지요!', type: '0'},
			{answer: 'b. 오히려 좋습니다. 집에서 쉽니다.', type: '1'},
			]
	},
	{
		q: '2. 당신은 여행을 가게 되었습니다. 당신은 어떠한 유형에 가까운가요?',
		a: [
			{answer: 'a. 사람일 어떻게 될 지 모르는 법. 계획대로 되지 않아도 괜찮아요~ 다른 걸 하면 되죠.', type: '0'},
			{answer: 'b. 8시 기상, 9시 식사, 11시 유명한곳 둘러보기! 등등 계획된 대로 진행되어야 직성이 풀립니다.', type: '1'},
			]
	},
	{
		q: '3. 소중한 사람이 고민이 있다며 당신을 찾아왔습니다. 당신은 어떠한 유형에 가까운가요?',
		a: [
			{answer: 'a. 친구의 고통을 해결하는 방법은 곧 문제 해결입니다. 해결책을 제시하는 편입니다.', type: '0'},
			{answer: 'b. "허얼ㅠㅠ" 친구의 고통이 곧 나의 고통! 공감과 위로를 건네는 편입니다.', type: '1'},
			]
	},
	{
		q: '4. 학교 혹은 직장에서 낯선 사람과 한 달 동안 함께 앉게 되었습니다. 당신은 어떠한 유형에 가까운가요?',
		a: [
			{answer: 'a. 새로운 사람들과 친해지는 거 너무 좋아요! 먼저 말을 겁니다.', type: '0'},
			{answer: 'b. 말만 들어도 힘드네요... 필요한 말이 아니면 먼저 말을 걸지 않습니다.', type: '1'},
			]
	},
	{
		q: '5. 당신과 다른 사상을 가진 사람을 볼 때에 당신은 아래 유형 중 어떤 유형에 가까운가요?',
		a: [
			{answer: 'a. 그럴 수도 있죠! 쿨하게 받아들입니다.', type: '0'},
			{answer: 'b. 겉으로는 아무렇지 않은 척 해도 솔직히 받아들이기 어렵습니다...', type: '1'},
			]
	},
	{
		q: '6. 일행과 함께 미술관에 가게 되었습니다. 당신은 어떠한 유형에 가까운가요?',
		a: [
			{answer: 'a. 대충 구경한 다음 나의 일행을 기다립니다.', type: '0'},
			{answer: 'b. 한 작품 한 작품 자세하게 살펴봅니다.', type: '1'},
			]
	},
	{
		q: '7. 당신의 나이는 어떻게 되시나요?',
		a: '결과보기!'
	}
	]
const resList = [
	{
		dog_or_cat: '따뜻하고 활발하신 당신! 반려동물로 강아지를 추천드립니다!',
		desc: '강아지를 키우는 사람들은 사람과 어울리는 것을 좋아하고 따뜻한 공감을 보내는 특징이 있어요.<br>강아지를 키우신다면 삶의 더 큰 에너지를 얻으실 수 있을 것 같습니다!<br>저희 강고는 반려동물과 살기 좋은 세상을 만들어갑니다.',
		img: '/final_project_Bteam/resources/animalimage/dog.jpg'
	},
	{
		dog_or_cat: '도도하고 섬세한 매력이 있는 당신! 반려동물로 고양이를 추천드립니다!',
		desc: '고양이를 키우는 사람들은 사람과 혼자 있는 시간을 좋아하고 섬세하다는 특징이 있어요.<br>고양이를 키우신다면 삶에서 소소한 재미와 내면의 평화를 더  얻으실 수 있을 것 같습니다!<br>저희 강고는 반려동물과 살기 좋은 세상을 만들어갑니다.',
		img: '/final_project_Bteam/resources/animalimage/cat.jpg'
	}
];
//{"in_outv":"0","j_pv":"0","f_tv":"0","friendy_unfamv":"0","convent_openv":"0","simple_artisticv":"0","agev":"21"}
const colList = ["in_outv","j_pv","f_tv","friendy_unfamv","convent_openv","simple_artisticv","agev"]
const jsonList = {"in_outv":"0","j_pv":"0","f_tv":"0","friendy_unfamv":"0","convent_openv":"0","simple_artisticv":"0","agev":"0"}
const main = document.querySelector('#main');
const qna = document.querySelector('#qna');
const result = document.querySelector('#result');
const endPoint = 7;

const select = [];

function addAnswer(answerText, qIdx, idx){
	var a = document.querySelector('.aBox');
	var answer = document.createElement('button');
	answer.classList.add('answerList');
	answer.classList.add('my-3');
	answer.classList.add('py-3');
	answer.classList.add('mx-auto');
	answer.classList.add('fadeIn');
	a.appendChild(answer);
	answer.innerHTML = answerText;
	answer.addEventListener("click", function(){
		
		var children = document.querySelectorAll('.answerList')
		for(let i = 0; i < children.length; i++){
			children[i].disabled = true;
			children[i].style.WebkitAnimation = "fadeOut 0.5s";
			children[i].style.animation = "fadeOut 0.5s";
		}
		setTimeout(() => {
			jsonList[colList[qIdx]] = idx;
			for(let i = 0; i < children.length; i++){
				children[i].style.display = 'none';	
			}
			goNext(++qIdx);
		}, 450)
		
	}, false);

}


function goResult(){
	qna.style.display = "none";
	$('#loading').show();
	console.log("gdgd");
	//qna.style.WebkitAnimation = "fadeOut 1s";
	//qna.style.animation = "fadeOut 1s";
	console.log("json : "+JSON.stringify(jsonList))
	const formData = new FormData();
	formData.append("json", JSON.stringify(jsonList));
	$.ajax({
		url : "http://192.168.0.113:9003/survey_recomm/dog_cat_result",
		type : "POST",
		processData : false,
		contentType : false,
		data : formData,
		success : function(data) {
			var result = JSON.parse(data).dog_cat;
			console.log(JSON.parse(data).dog_cat);
			setTimeout(() => {
				$('#loading').hide();
				console.log(resList[result].dog_or_cat)
				$('.resultname').html(resList[result].dog_or_cat);
				$('#resultImg img').attr("src", resList[result].img);
				$('#resultImg img').attr("alt", resList[result].dog_or_cat);
				$('.resultDesc p').html(resList[result].desc);
			}, 1000);
		},
		beforeSend:function(){

	    },complete:function(){
	    	result.style.WebkitAnimation = "fadeIn 0.5s";
			result.style.animation = "fadeIn 0.5s";
			setTimeout(() => {
				result.style.display = "block";
			}, 1000);
	    },
		error : function(err) {
			console.log('Error => ' + $('#target').text());
		}
	})
}

function goNext(qIdx){
	console.log(qIdx);

		var q = document.querySelector('.qBox');
		q.innerHTML = qnaList[qIdx].q;
	if(qIdx != 6){	
		for(let i in qnaList[qIdx].a){
			addAnswer(qnaList[qIdx].a[i].answer, qIdx, i);
		}
	}else{
		var a = document.querySelector('.aBox');
		var age = document.createElement('input');
		age.type='number';
		//min="1" step="1" max="99"
		age.setAttribute("id", "agev");
		age.setAttribute("name", "agev");
		age.setAttribute("min", "1");
		age.setAttribute("max", "99");
		age.classList.add('agev');
		age.classList.add('form-control');
		age.classList.add('my-3');
		age.classList.add('py-3');
		age.classList.add('mx-3');
		age.classList.add('fadeIn');
		age.style.display = 'inline';
		a.appendChild(age);
		$('.aBox').css('text-align','center');
		age.setAttribute("placeholder", "1~99 사이의 숫자만 입력하세요.");
		var ageb = document.createElement('button');
		ageb.classList.add('ageb');
		ageb.classList.add('my-2');
		ageb.classList.add('py-2');
		ageb.classList.add('mx-3');
		ageb.classList.add('fadeIn');
		a.appendChild(ageb);
		ageb.innerHTML = qnaList[qIdx].a;
		ageb.addEventListener("click", function(){
			if($('#agev').val() != ""){
				console.log("dkgkgkgk"+$('#agev').val());
				jsonList[colList[qIdx]] = $('#agev').val();
				goResult();
			}else{
				$('#agev').focus();
			}
		}, false);
	}
	var status = document.querySelector('.statusBar');
	status.style.width = (100/endPoint) * (qIdx+1)+'%';
}

/*
 * 
 *<label for="agev">
 7. 당신의 나이 :
	 </label>
	 <input type="number" name="agev" id="agev" min="1" step="1" max="99">
	 </p>
 */


function begin(){
	main.style.WebkitAnimation = "fadeOut 1s";
	main.style.animation = "fadeOut 1s";
	setTimeout(() => {
		qna.style.WebkitAnimation = "fadeIn 1s";
		qna.style.animation = "fadeIn 1s";
		setTimeout(() => {
			main.style.display = "none";
			qna.style.display = "block";
		},450)
		var qIdx = 0;
		goNext(qIdx);
	}, 450)
}

</script>


