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
   <div class="container">Home <span>&nbsp;>&nbsp;</span> <b>�ݷ����� ��õ ��������</b></div>
</section>

<section class="container content">
<div class="kkh898"> 
	<section id="main" class="mx-auto my-3 pb-5 pt-5 px-3">
		<h2>��� ���� ������ ���� �ݷ����� ��õ</h2>
		<div class="col-6 mx-auto">
			<img src="${mycontext}/resources/img/001.png" alt="mainImg" class="img-fluid">
		</div>
		<p>AI�� ������ �м��Ͽ� ������ Ȥ�� ����̰� ��︱ �� �˷��帳�ϴ�!<br>
		 �Ʒ��� �����ϱ� ��ư�� ������ �������ּ���.
		</p>
		<button type="button" class="btn btn-outline-info mt-3 px-3" onclick="js:begin()">�����ϱ�</button>
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
			<p class="text-center" style="color: aliceblue;">AI�� ����� ������ �м� ���Դϴ�...</p>
		</div>
	<section id="result"  class="mx-auto my-3 pb-5 pt-5 px-3">
		<h2 class="resultname">
		
		</h2>
		<div id="resultImg" class="col-6 mx-auto my-3">
			<img src="" class="img-fluid">
		</div>
		<div class="resultDesc">

			<p>������ �������� ����Ʈ �Դϴ�.<br>
			 �Ʒ��� �����ϱ� ��ư�� ������ �������ּ���.
			</p>
		</div>
		<c:choose>
        	<c:when test="${sessionScope.sessionID == null }">                  
				<button type="button" class="btn btn-primary mx-3 mt-3 px-3" onClick="location.href='${mycontext}/member/memberForm'">ȸ������</button>
				<button type="button" class="btn btn-outline-primary mx-3 mt-3 px-3" onClick="location.href='${mycontext}/loginForm'">�α���</button><br>
			</c:when>
		</c:choose>
		<button type="button" class="btn btn-info mt-3 px-3" onClick="window.location.reload()">�ٽ� �غ���!</button>
		
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
		q: '1. �Ѱ��ο� �ָ�, ģ������ ����� ���ڱ� ��ҵǾ����ϴ�. ����� ������?',
		a: [
			{answer: 'a. �ٸ� ģ������ �����Ͽ� ����� ��ƾ�����!', type: '0'},
			{answer: 'b. ������ �����ϴ�. ������ ���ϴ�.', type: '1'},
			]
	},
	{
		q: '2. ����� ������ ���� �Ǿ����ϴ�. ����� ��� ������ ������?',
		a: [
			{answer: 'a. ����� ��� �� �� �𸣴� ��. ��ȹ��� ���� �ʾƵ� �����ƿ�~ �ٸ� �� �ϸ� ����.', type: '0'},
			{answer: 'b. 8�� ���, 9�� �Ļ�, 11�� �����Ѱ� �ѷ�����! ��� ��ȹ�� ��� ����Ǿ�� ������ Ǯ���ϴ�.', type: '1'},
			]
	},
	{
		q: '3. ������ ����� ����� �ִٸ� ����� ã�ƿԽ��ϴ�. ����� ��� ������ ������?',
		a: [
			{answer: 'a. ģ���� ������ �ذ��ϴ� ����� �� ���� �ذ��Դϴ�. �ذ�å�� �����ϴ� ���Դϴ�.', type: '0'},
			{answer: 'b. "���Ф�" ģ���� ������ �� ���� ����! ������ ���θ� �ǳ״� ���Դϴ�.', type: '1'},
			]
	},
	{
		q: '4. �б� Ȥ�� ���忡�� ���� ����� �� �� ���� �Բ� �ɰ� �Ǿ����ϴ�. ����� ��� ������ ������?',
		a: [
			{answer: 'a. ���ο� ������ ģ������ �� �ʹ� ���ƿ�! ���� ���� �̴ϴ�.', type: '0'},
			{answer: 'b. ���� �� ����׿�... �ʿ��� ���� �ƴϸ� ���� ���� ���� �ʽ��ϴ�.', type: '1'},
			]
	},
	{
		q: '5. ��Ű� �ٸ� ����� ���� ����� �� ���� ����� �Ʒ� ���� �� � ������ ������?',
		a: [
			{answer: 'a. �׷� ���� ����! ���ϰ� �޾Ƶ��Դϴ�.', type: '0'},
			{answer: 'b. �����δ� �ƹ����� ���� ô �ص� ������ �޾Ƶ��̱� ��ƽ��ϴ�...', type: '1'},
			]
	},
	{
		q: '6. ����� �Բ� �̼����� ���� �Ǿ����ϴ�. ����� ��� ������ ������?',
		a: [
			{answer: 'a. ���� ������ ���� ���� ������ ��ٸ��ϴ�.', type: '0'},
			{answer: 'b. �� ��ǰ �� ��ǰ �ڼ��ϰ� ���캾�ϴ�.', type: '1'},
			]
	},
	{
		q: '7. ����� ���̴� ��� �ǽó���?',
		a: '�������!'
	}
	]
const resList = [
	{
		dog_or_cat: '�����ϰ� Ȱ���Ͻ� ���! �ݷ������� �������� ��õ�帳�ϴ�!',
		desc: '�������� Ű��� ������� ����� ��︮�� ���� �����ϰ� ������ ������ ������ Ư¡�� �־��.<br>�������� Ű��Ŵٸ� ���� �� ū �������� ������ �� ���� �� �����ϴ�!<br>���� ����� �ݷ������� ��� ���� ������ �����ϴ�.',
		img: '/final_project_Bteam/resources/animalimage/dog.jpg'
	},
	{
		dog_or_cat: '�����ϰ� ������ �ŷ��� �ִ� ���! �ݷ������� ����̸� ��õ�帳�ϴ�!',
		desc: '����̸� Ű��� ������� ����� ȥ�� �ִ� �ð��� �����ϰ� �����ϴٴ� Ư¡�� �־��.<br>����̸� Ű��Ŵٸ� ��� �Ҽ��� ��̿� ������ ��ȭ�� ��  ������ �� ���� �� �����ϴ�!<br>���� ����� �ݷ������� ��� ���� ������ �����ϴ�.',
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
		age.setAttribute("placeholder", "1~99 ������ ���ڸ� �Է��ϼ���.");
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
 7. ����� ���� :
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


