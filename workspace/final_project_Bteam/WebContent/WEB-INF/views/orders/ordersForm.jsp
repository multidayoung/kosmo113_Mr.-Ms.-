<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="mycontext" value="${pageContext.request.contextPath}" />

<section class="path">
   <div class="container">Home <span>&nbsp;>&nbsp;</span> ���θ� <span>&nbsp;>&nbsp;</span> <b>�����ϱ�</b></div>
</section>

<section class="container content">
   <form method="post" id="orderform" action="orderIn">
      <input type="hidden" id="i_category" name="i_category" value="${detail.i_category}">
      <input type="hidden" id="i_gender" name="i_gender" value="${detail.i_gender}">
      <input type="hidden" id="i_no" name="i_no" value="${detail.i_no}">
   
      <div class="orderprd">
          <div><img src="${detail.i_img}"></div>
          <div>${detail.i_name}</div>
       </div>
       
       <div class="orderform">
            <div class="tit">�ֹ���</div>
            <div>
               <input type="text" class="form-control" id="ord_name" name="ord_name" required="required"> 
            </div>
         </div>
         <div class="orderform">
            <div class="tit">�ּ�</div>
            <div>
               <input type="text" class="form-control" id="ord_address" name="ord_address" required="required">
            </div>
         </div>
       
       <div class="orderform2">
            <div class="tit">����</div>
            <div>
               <input type="text" class="form-control" id="number" name="number" value="${stock}" readonly="readonly">
            </div>
         </div>
       <div class="orderform2">
            <div class="tit">�ݾ�</div>
            <div>
               <input type="text" class="form-control" id="i_price" name="i_price" readonly="readonly" value="${total}">
            </div>
         </div>
         <div class="orderform2">
            <div class="tit">����� ����Ʈ | �� ����Ʈ ${point}P</div>
            <div>
               <input type="number" class="form-control" id="point" name="point" value="0" min="0" max="">
            </div>
         </div>
         
      <div id="target2" class="totalprice">
         total()
      </div>
      
      <!-- ��ư -->
      <div class="form-group" style="text-align: right; margin-top: 10px;">
         <button type="submit" class="btn btn-primary" id="purBtn">����</button>
         <button type="button" class="btn btn-secondary" onclick="location.href='${mycontext}/item/itemDetail?s_no=${detail.i_no}'">���</button>
      </div>
   </form>
</section>

<script>
<%-- �������������� �ѱݾ�  --%>
$(function total() {
   let total = ${price * stock}
   $('#target2').html('�� �ݾ� : <span>' + total.toLocaleString('ko-KR') + "</span> ��");
});

$(function() {
   var total = ${price * stock}
   var point = ${point}

   if (total < point) {
      $('#point').attr('max', total);
   } else if (total > point) {
      $('#point').attr('max', point);
   } else {
      $('#point').attr('max', 0);
   }
   
   $('#point').change(
      function() {
         var pointchange = document.getElementById('point').value;
         var minuspoint = total - pointchange;
         //var minuspoint = total - point;
         $('#target2').html('�� �ݾ� : <span>'+minuspoint.toLocaleString('ko-KR')+"</span> ��");
      });
   });

$(function() {
   $('#purBtn').click(function() {
      var name = document.getElementById('ord_name').value;
      var address = document.getElementById('ord_address').value;
      var point = document.getElementById('point').value;
      //var total = ${total};
      var minuspoint = total - point;

      if (name != '' && address != '' && minuspoint >= 0) {
         alert("���Ű� �Ϸ�Ǿ����ϴ�.");
         return true;
      }
   });
});
</script>