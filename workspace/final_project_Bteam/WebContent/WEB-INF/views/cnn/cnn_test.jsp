<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<style>
.file-upload {
   padding: 10% 3%;
   margin: auto;
   border-radius: 10px;
   border: solod 1.5px #f6f7fa;
   background-color: #f6f7fa;
}

img {
   vertical-align: center;
   border: none;
}

.image-upload-wrap {
   width: 60%;
   height: 50%;
   margin: 0 auto;
   position: relative;
   object-fit: contain;
   border-radius: 10px;
   border: dashed 1.5px #35465d;
   background-color: white;
}

button, input {
   overflow: visible;
}

.image-upload-input {
   position: absolute;
   margin: 0;
   padding: 0;
   width: 100%;
   height: 100%;
   opacity: 0%;
   cursor: pointer;
}

.upload {
   width: 20%;
}

.drage-text h3 {
   font-weight: 500;
   text-transform: uppercase;
}

.upload-text {
   width: 80%;
   font-size: 1.5rem;
   lign-height: 1.5;
   text-align: center;
   margin: 0 auto;
   color: #35465d;
}

.file-upload-image {
   max-height: 60%;
   max-width: 60%;
   margin: auto;
   padding: 10px;
}

.sk-cube-grid {
  width: 30px;
  height: 30px;
  margin: 1px auto;
}

.sk-cube-grid .sk-cube {
  width: 33%;
  height: 33%;
  background-color: #333;
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
   <div class="container">Home <span>&nbsp;>&nbsp;</span> <b>품종찾기</b></div>
</section>
<section class="container content">
<section class="header">
   <h1 style="text-align: center;">얘, 넌 누구니?</h1>
   <h2 style="text-align: center; color: #35465d">인공지능으로 보는 반려동물 품종 분석</h2>
</section>


<form method="post" id="form1" name="form1"
   enctype="multipart/form-data" class="mt-3 container file-upload">
   <div class="image-upload-wrap">
      <input type="file" name="file1" id="file1" class="image-upload-input" />
      <div class="drag-text" style="text-align: center;">
         <img src="/final_project_Bteam/resources/image/pet_upload_icon.jpg"
            class="mt-5 pt-5 upload" alt="upload-image">
         <h3 class="mb-5 pb-5 pt-4  upload-text">반려동물의 사진을 올려놓거나 눌러서
            업로드하세요!</h3>
      </div>
   </div>
   <div class="file-upload-content"
      style="text-align: center; display: block;">
      <img src="" class="file-upload-image img-fluid" id="pet-image" />
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
         <p style="font: 22px;" class="text-center">AI가 반려동물을 분석중입니다.</p>
      </div>
      <h2 id="result-msg" class="my-3"></h2>
      <div class="cnn-button">
         <p style="text-align: center">
            <input type="button" value="사진 바꾸기" id="chgBtn" class="btn btn-success" style="color: white; border-radius:25px;">
            <input type="button" value="결과보기" id="wrtBtn" class="btn btn-info" style="color: white; border-radius:25px;">
         </p>
      </div>
      

   </div>
   <!--  img src="resources/image/noimage.png" id="imgx" /-->
   <!-- p style="text-align: right">
            <input type="button" value="결과보기" id="wrtBtn">
         </p-->
   <div id="target"></div>
</form>
</section>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
cnnResList={
      golden: '이 강아지는 골든 리트리버입니다!',
      schnauzer: '이 강아지는 슈나우저입니다!',
      maltis: '이 강아지는 말티즈입니다!',
      puddle: '이 강아지는 푸들입니다!',
      docs: '이 강아지는 닥스 훈트입니다!',
      sichu: '이 강아지는 시츄입니다!',
      welshcogy: '이 강아지는 웰시코기입니다!',
      chiwawa: '이 강아지는 치와와입니다!',
      scottish: '이 고양이는 스코티쉬 폴드입니다!',
      reckdoll: '이 고양이는 렉돌고양이입니다!',
      russian: '이 고양이는 러시안 블루입니다!',
      persian: '이 고양이는 페르시안 고양이입니다!',
      sham: '이 고양이는 샴 고양이입니다!',
	  korean: '이 고양이는 코리안 숏헤어입니다!',
	  abyssinian: '이 고양이는 아비시니안입니다!',
	  spinx: '이 고양이는 스핑크스 고양이입니다!'
      
}
   function readURL(input) {
      if (input.files && input.files[0]) {
         //자바스크립트 I/O
         var reader = new FileReader();
         reader.onload = function(e) { //읽어왔다면 이렇게 하거라
            $(".image-upload-wrap").hide();
            $("#pet-image").attr("src", e.target.result);
            $('.file-upload-content').show();
            console.log("Path: " + e.target.result);
            $('#result-msg').hide();
            $('#wrtBtn').show();
            //$(".wrtBtn").attr("hidden","false");
         }
         reader.readAsDataURL(input.files[0]);
      }
   }
   $(function() {
      $('.file-upload-content').hide();
      $('.loading').hide();
      $('#file1').change(function() {
         readURL(this);
      });
      $('#chgBtn').click(function(){
         $('#file1').click();
      });
      $('#wrtBtn').click(function() {
         const imageInput = $("#file1")[0];
         // 파일을 여러개 선택할 수 있으므로 files 라는 객체에 담긴다.
         console.log("imageInput: ", imageInput.files)

         if (imageInput.files.length === 0) {
            alert("파일은 선택해주세요");
            return;
         }
         $('#wrtBtn').hide();
         $('#result-msg').html("");
         $('#loading').show();
         
         const formData = new FormData();
         formData.append("file1", imageInput.files[0]);
         $.ajax({
            url : "http://192.168.0.113:9003/cnn_guess/res",
            type : "POST",
            processData : false,
            contentType : false,
            enctype : 'multipart/form-data',
            data : formData,
            success : function(data) {
               var result = data.cnn_res;
               console.log(cnnResList[result])
               setTimeout(() => {
                  $('#loading').hide();
                  $('#result-msg').show();
                  $('#result-msg').html(cnnResList[result]);
               }, 1000);
            },
            error : function(err) {
               console.log('Error => '+err);
            }
         });
      });
   });
</script>