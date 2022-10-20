<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="mycontext" value="${pageContext.request.contextPath}" />

<section class="path">
   <div class="container">Home <span>&nbsp;>&nbsp;</span> 마이페이지 <span>&nbsp;>&nbsp;</span> <b>내 반려동물</b></div>
</section>

<section class="container content">
	<form method="post" action="reFormForm" enctype="multipart/form-data"
		id="upform">

		<input type="text" value="${vo.animal_num}" name="animal_num"
			readonly="readonly" />


		<div class="row mb-3">
			<label class="col-sm-2 col-form-label">반려동물 이름</label>
			<div class="col-sm-10">
				<input type="text" name="animal_name" id="animal_name"
					value="${vo.animal_name}" readonly class="form-control">
			</div>
		</div>

		<div class="row mb-3">
			<label class="col-sm-2 col-form-label">반려동물 나이</label>
			<div class="col-sm-10">
				<input type="text" name="animal_age" id="animal_age"
					value="${vo.animal_age}" readonly class="form-control">
			</div>
		</div>

		<div class="row mb-3">
			<label class="col-sm-2 col-form-label">반려동물 성별</label>
			<div class="col-sm-10" style="width: 30%;">
				<select class="form-select" name="animal_gender" id="animal_gender">
					<option selected="selected">${vo.animal_gender}</option>
				</select>
			</div>
		</div>

		<div class="row mb-3">
			<label class="col-sm-2 col-form-label">나의 반려동물은?</label>
			<div class="col-sm-10" style="width: 30%;">
				<select class="form-select" name="cate_species" id="cate_species">
					<option selected="selected">${vo.cate_species}</option>
				</select>
			</div>
		</div>

		<div class="row mb-3">
			<label class="col-sm-2 col-form-label">종</label>
			<div class="col-sm-10" style="width: 30%;">
				<select class="form-select" name="cate_kind" id="cate_kind">
					<option selected="selected">${vo.cate_kind}</option>
				</select>
			</div>
		</div>

		<div class="row mb-3">
			<label class="col-sm-2 col-form-label">이미지 업로드</label>
			<div class="col-sm-10 mb-3">
				<input type="file" name="mfile" id="mfile" readonly="readonly" class="form-control">
				<input type="hidden" name="animal_img1" value="${vo.animal_img1}">
			</div>
			<div class="text-center">
				<img src="${mycontext}/resources/animalimage/${vo.animal_img1}" name="mfile" id="imgx">
			</div>
		</div>
		<div class="row mb-3">
			<label class="col-sm-2 col-form-label">이미지 업로드2</label>
			<div class="col-sm-10 mb-3">
				<input type="file" name="mfile2" id="mfile2" readonly="readonly" class="form-control">
				<input type="hidden" name="animal_img2" value="${vo.animal_img2}">
			</div>
			<div class="text-center">
				<img src="${mycontext}/resources/animalimage/${vo.animal_img2}" name="mfile2" id="imgx2">
			</div>
		</div>
		<div class="row mb-3">
			<label class="col-sm-2 col-form-label">이미지 업로드3</label>
			<div class="col-sm-10 mb-3">
				<input type="file" name="mfile3" id="mfile3" readonly="readonly" class="form-control">
				<input type="hidden" name="animal_img3" value="${vo.animal_img3}">
			</div>
			<div class="text-center">
				<img src="${mycontext}/resources/animalimage/${vo.animal_img3}" name="mfile3" id="imgx3">
			</div>
		</div>

		<div class="row mb-3">
			<label class="col-sm-2 col-form-label">반려동물 상세 소개</label>
			<div class="col-sm-10 form-floating">
				<textarea name="animal_detail" id="animal_detail" readonly
					class="form-control" style="height: 200px; padding-top: 1rem;">${vo.animal_detail}</textarea>
			</div>
		</div>

		<div class="d-flex justify-content-end">
			<!-- ${mycontext}/animal/reForm?anum=${vo.animal_num} -->
			<input type="submit" value="수정" class="btn btn-primary" />&nbsp; <input
				type="button" value="삭제"
				onclick="location='${mycontext}/animal/delet?anum=${vo.animal_num}'"
				class="btn btn-primary" />&nbsp; <input type="button" value="취소"
				onclick="location='${mycontext}/animal/animalList'"
				class="btn btn-danger" />
		</div>
	</form>
</section>