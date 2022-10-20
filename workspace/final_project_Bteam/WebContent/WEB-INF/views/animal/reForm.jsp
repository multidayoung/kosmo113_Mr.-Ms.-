<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="mycontext" value="${pageContext.request.contextPath}"/>

<section class="path">
   <div class="container">Home <span>&nbsp;>&nbsp;</span> ���������� <span>&nbsp;>&nbsp;</span> <b>�� �ݷ�����</b></div>
</section>

		<section class="container content">
			<form method="post" action="reForm" enctype="multipart/form-data" id="upform">
			 
			 
			 <input type="hidden" value="${vo.member_id}" name="member_id"/>
			
		    
		      <div class="row mb-3">
		         <label class="col-sm-2 col-form-label">�ݷ����� �̸�</label>
		         <div class="col-sm-10">
		               <input type="text" name="animal_name" id="animal_name" value="${vo.animal_name}" class="form-control">
		          </div>
		      </div>
		 
		  	  <%-- <div class="row mb-3">
		         <label class="col-sm-2 col-form-label">�ݷ����� ����</label>
		         <div class="col-sm-10">
		               <input type="text" name="animal_age" id="animal_age" value="${vo.animal_age}" class="form-control">
		          </div>
		      </div>
		      
		      <div class="row mb-3">
		         <label class="col-sm-2 col-form-label">�ݷ����� ����</label>
		         <div class="col-sm-10" style="width:30%;">
		            <select class="form-select" name="animal_gender" id="animal_gender">
		            	 
                        <option selected="selected">��</option>
                        <option>��</option>
		            </select>
		         </div>
		      </div>
		      
		      <div class="row mb-3">
		         <label class="col-sm-2 col-form-label">���� �ݷ�������?</label>
		         <div class="col-sm-10" style="width:30%;">
		            <select class="form-select" name="cate_species" id="cate_species">
		            
                         <option selected="selected">��</option>
                        <option>�����</option>
                       
		            </select>
		         </div>
		      </div>
		  
		      <div class="row mb-3">
		         <label class="col-sm-2 col-form-label">��</label>
		         <div class="col-sm-10" style="width:30%;">
		            <select class="form-select" name="cate_kind" id="cate_kind">
                        <c:forEach var="item" items="${list}">
                       		<option >${item.cate_kind}</option>
                    	</c:forEach>
		            </select>
		         </div>
		      </div>    --%>  
		      
		      	<div class="row mb-3">
					<label class="col-sm-2 col-form-label">�̹��� ���ε�1</label>
					<div class="col-sm-10 mb-3">
						<input type="file" name="mfile" id="mfile" class="form-control">
						<input type="hidden" name="animal_img1" value="${vo.animal_img1}">
					</div>
					<div class="text-center">
						<img src="${mycontext}/resources/animalimage/${vo.animal_img1}" id="imgx" width="200px;">
					</div>
				</div>
				<div class="row mb-3">
					<label class="col-sm-2 col-form-label">�̹��� ���ε�2</label>
					<div class="col-sm-10 mb-3">
						<input type="file" name="mfile2" id="mfile2" class="form-control">
						<input type="hidden" name="animal_img2" value="${vo.animal_img2}">
					</div>
					<div class="text-center">
						<img src="${mycontext}/resources/animalimage/${vo.animal_img2}" id="imgx2" width="200px;">
					</div>
				</div>

				<div class="row mb-3">
					<label class="col-sm-2 col-form-label">�̹��� ���ε�3</label>
					<div class="col-sm-10 mb-3">
						<input type="file" name="mfile3" id="mfile3" class="form-control">
						<input type="hidden" name="animal_img3" value="${vo.animal_img3}">
					</div>
					<div class="text-center">
						<img src="${mycontext}/resources/animalimage/${vo.animal_img3}" id="imgx3" width="200px;">
					</div>
				</div>
		      
		      <div class="row mb-3">
		         <label class="col-sm-2 col-form-label">�ݷ����� �� �Ұ�</label>
		         <div class="col-sm-10 form-floating">
		               <textarea name="animal_detail" id="animal_detail" class="form-control" style="height:200px; padding-top:1rem;">${vo.animal_detail}</textarea>
		          </div>
		      </div>
		      
		      <div class="d-flex justify-content-end">
		         <input type="submit" value="�Ϸ�" class="btn btn-primary"/>&nbsp;
		         <input type="button" value="���" onclick="location='${mycontext}/animal/animalList'" class="btn btn-danger"/>
		      </div>
		   </form>
		</section>