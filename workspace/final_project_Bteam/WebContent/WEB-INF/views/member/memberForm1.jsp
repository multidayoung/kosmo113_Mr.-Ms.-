<section class="path">
   <div class="container">Home <span>&nbsp;>&nbsp;</span> 회원가입 <span>&nbsp;>&nbsp;</span> <b>약관동의</b></div>
</section>

<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<title> 털 달린 자식들 </title>
<meta name="Generator" content="EditPlus">
<meta name="Author" content="">
<meta name="Keywords" content="">
<meta name="Description" content="">

<!-- 스타일시트 파일 링크처리 -->
<link rel="stylesheet" type="text/css" href="css/style.css">

<!-- 자바스크립트 파일 링크처리 -->
<script language="JavaScript" src="js/flash.js" type="text/javascript"></script>
<script language="JavaScript" src="js/flash_new.js" type="text/javascript"></script>
<script language="JavaScript" src="js/coupon.js" type="text/javascript"></script>
<script language="javascript" src="js/mEmbed.js"></script>
<script language="javascript" src="js/default.js"></script>
<script language="javascript" src="js/sub_tap.js"></script>
<script language="javascript" src="js/cate_menupan.js"></script>
<script language="javascript" src="js/happy_member.js"></script>
<script language="javascript" src="js/change_menu.js" type="text/javascript"></script>
<SCRIPT language='JavaScript' src='js/jquery_min.js'></SCRIPT>

<!-- 통계트래킹 -->
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-78896715-1', 'auto');
  ga('send', 'pageview');

</script>
</head>

<body>

<!-- <hr>
<style>
h1 {
text-align: center;
 padding: 25px;
}
</style>
<p>
<h1>이용약관</h1>
</p> -->

<div id="dhtmltooltip" style="display:none;"></div>
<script type="text/javascript" src="js/happy_main.js"></script>
<!-- 핸드폰 인증을 위한 DIV START-->
<SCRIPT language='JavaScript' src='js/glm-ajax.js'></SCRIPT>

<!-- 핸드폰 인증을 위한 DIV END -->

<div id="wrap" >
	<!--상단 시작-->

<tr>
	<td valign="top">
		<table cellspacing="0">
		<tr>
		
			

			<td valign="top" style="padding:4px 0 0 10px; z-index:1000;">
				
			</td>
		</tr>
		</table>
	</td>


		</div>
	</div>

		

	<table style="width:1000px; margin:0 auto; margin-top:50px; margin-bottom: 55px;"  cellspacing="0">
	<tr>
        
        

	
	</table>
    <table style="width:100%; margin-top: -24px;" cellspacing="0"> <!--section올라올때 수정-->
    <tr>
	  
			<table cellspacing="0">
			<tr>
				<td>
					<table cellspacing="0">
					<tr>
						<td align="left"><script type="text/javascript">
<!--
    //자동완성 레이어영역 설정	
    var line_nums = 10;  //표시될 단어(줄)수
//-->
</script>

<style>
    @import url(https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css);

     .searchRankTxt {
         color:#114b92;
         width:25%;
         font-family:  'NanumSquare', sans-serif;
     }
    .searchRankNum {
        color:#114b92; 
        width:10%; 
        font-size:16px; 
        padding-left:8px; 
        line-height:35px;
        font-family:  'NanumSquare', sans-serif;
    }
    .searchRankName {
        width:55%; 
        color:#222222; 
        font-family:  'NanumSquare', sans-serif;
    }
</style>

<script type="text/javascript" src="js/searchWord.js"></script>
<script language="JavaScript" src="js/flash.js" type="text/javascript"></script>
<script language="JavaScript" src="js/flash_new.js" type="text/javascript"></script>
<script>
var bDisplay = true;

	function go_search(word)
	{
		if ( word != undefined )
		{
			searchform.search_word.value = word;
		}

		var names = new Array("get_si", "kind");
		for ( i=0, max=names.length ; i<max ; i++ )
		{
			now_name	= names[i];
			if ( document.searchform[now_name] )
			{
				if ( document.searchform[now_name].selectedIndex != 0 )
				{
					document.searchform.action = "price_search.php";
				}
			}
		}

		searchform.submit();
	}

	function test()
	{
		document.getElementById("autoSearchPart").style.display = "none";
	}

	function die_search()
	{
		var get_att =  document.getElementsByTagName("body")[0];
		get_att.setAttribute("onmousedown","");
	}

	function open_search()
	{
		var get_att =  document.getElementsByTagName("body")[0];
		get_att.setAttribute("onmousedown","alter('111')");
	}


	function live_search()
	{
		document.getElementById("autoSearchPart").style.display = "block";
	}

	function live_search_check()
	{
		var check = document.getElementById("autoSearchPart").style.display;
		if( check == "block" )
		{
			document.getElementById("autoSearchPart").style.display = "none";
			return false;
		}
		else
		{
			document.getElementById("autoSearchPart").style.display = "block";
			return false;
		}
	}


	function go_search_map()
	{
		objForm = document.searchform;
		objForm.action = "search_map.php";

		obj = document.getElementsByName("search_word");
		if ( obj[1] != undefined )
		{
			obj[1].value = obj[0].value;
		}
		if ( objForm.search_word.value != "" )
		{
			objForm.search_metor.value = "";
		}
		objForm.submit();
	}

/*
	function go_search()
	{
		var names = new Array("get_si", "kind");
		for ( i=0, max=names.length ; i<max ; i++ )
		{
			now_name	= names[i];
			if ( document.searchform[now_name] )
			{
				if ( document.searchform[now_name].selectedIndex != 0 )
				{
					document.searchform.action = "price_search.php";
				}
			}
		}
	}
*/
    //전체메뉴보기 자바스트립트
    function showLayer( showId )
    {
        obj					= document.getElementById(showId);
        obj.style.display		= obj.style.display == 'none'? 'block' : 'none';
    }
</script>

<style type="text/css">
    .all_search_box{border:5px solid #333333}

/* 검색자동완성 CSS */
                                              #autoSearchPartWrap
                                              {
                                                  position:absolute;
                                                  width:301px;
	
                                              }

    #autoSearchPart
    {
        background-color:#ffffff;
    border:2px solid #1c8dff;
                                border-top:none;
                                display:none;
                                height:300px;
                                            overflow:hidden;
                                            overflow-y:auto;
                                            width:278px;
                                                       }

                                                       .listIn
                                                       {
                                                           background-color:#f5f5f5;
                                                           cursor:pointer;
                                                       }

    #autoposition{
        position:relative;
        margin-left:0px;
        z-index:1000;
	
    }
    div:hover{
        onmouseover:block;
    }
    search{
        display:block;
        overflow:hidden;
        position:relative;
    }

</style>

<div style="width:1000px; margin:0 auto; ">
<table cellspacing="0" style="position:relative;  ">
<tr>
	<td align="left" valign="top">
		<table cellspacing="0" >
		<tr>
			<td class="smfont4"  alt="통합검색" title="통합검색">
				<table cellspacing="0" >
				<tr>
					<td id="input_style_6_7" style="width:750px; height:46px; padding-right: 10px;">
                        
                       
                                
        
                                <!--더보기 레이어창 열고닫기 레이어-->
                                <div id='room2_text_1' style="clear:both; display:none; position:relative; left:0; top:0; z-index:999;">
                                    <div style="position:absolute; top: -40px; z-index:0;">
                                        <!--전체카테고리보기 시작-->
                                        <table style="width:100%;">
                                        <tr>
                                            <td style="padding:12px 0 12px 10px; background:#424242; border:1px solid #353535;">
                                                <table style="width:100%"  cellspacing="0">
                                                <tr>
                                                    <td align="left" ><a><img src="img/title_main_service_total.png" alt="서비스 전체보기" title="서비스 전체보기" style="width:68px; height:14px; cursor:pointer;" class="png24"></a></td>
                                                    <td align="right" style="padding-right:10px;"><img src="img/btn_close_layer.gif" align="absmiddle" onClick="change2_text('room2_text_1','category1_on','category1_off','1', 'on')" style="cursor:pointer;"></td>
                                                </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" style="padding:10px 0; width:100%; margin:0 auto; background:#fff; border:1px solid #888d95; border-top:none;">
                                                <table align='left' valign='top' width='998' border='0' cellpadding='0' cellspacing='0'>
<tr>
<td  valign='top'  align='center' style='width:;'><table style="margin-bottom:10px;" cellpadding="0" cellspacing="0" width="100%">
<tr>
	<td align="left" style="padding-left:8px;">
		<table  cellpadding="0" cellspacing="0" width="150">
		<tr>
			<td align="left" style="background:url('img/category_layer_title.gif') no-repeat; width:150px;height:22px; padding:2px 0 0 5px;" class="category"><a href='bbs_index.php?file1=bbs_index_default_shoplist_2.html&file2=bbs_index_shoplist_2.html' target=''>쇼핑</a></td>
		</tr>
		<tr>
			<td align="left" class="category_sub" style="padding:5px 0 0 10px; "><table align='center' width='100%' border='0' cellpadding='0' cellspacing='0'>
<tr>
<td style='width:;'><table style="height:18px; width:100%;">
	<tr>
		<td align="left" ><div style='display:inline; margin:0 5px 0 0;'><img src="img/icon_list_bullet.gif" alt="" title="" style="margin-bottom:3px;"></div><a href='list.php?category=2331' target=''  style="" >사료</a></td>
	</tr>
</table>
<!-- 3차 메뉴 출력 -->
<table align='left' valign='top' width='100%%' border='0' cellpadding='0' cellspacing='0'>
<tr>
</tr>
</table>
<!-- 3차 메뉴 출력 -->
</td>
</tr><tr>
<td style='width:;'><table style="height:18px; width:100%;">
	<tr>
		<td align="left" ><div style='display:inline; margin:0 5px 0 0;'><img src="img/icon_list_bullet.gif" alt="" title="" style="margin-bottom:3px;"></div><a href='list.php?category=2345' target=''  style="" >간식/영양제</a></td>
	</tr>
</table>
<!-- 3차 메뉴 출력 -->
<table align='left' valign='top' width='100%%' border='0' cellpadding='0' cellspacing='0'>
<tr>
</tr>
</table>
<!-- 3차 메뉴 출력 -->
</td>
</tr><tr>
<td style='width:;'><table style="height:18px; width:100%;">
	<tr>
		<td align="left" ><div style='display:inline; margin:0 5px 0 0;'><img src="img/icon_list_bullet.gif" alt="" title="" style="margin-bottom:3px;"></div><a href='list.php?category=2355' target=''  style="" >급식기/식수기</a></td>
	</tr>
</table>
<!-- 3차 메뉴 출력 -->
<table align='left' valign='top' width='100%%' border='0' cellpadding='0' cellspacing='0'>
<tr>
</tr>
</table>
<!-- 3차 메뉴 출력 -->
</td>
</tr><tr>
<td style='width:;'><table style="height:18px; width:100%;">
	<tr>
		<td align="left" ><div style='display:inline; margin:0 5px 0 0;'><img src="img/icon_list_bullet.gif" alt="" title="" style="margin-bottom:3px;"></div><a href='list.php?category=2362' target=''  style="" >미용용품</a></td>
	</tr>
</table>
<!-- 3차 메뉴 출력 -->
<table align='left' valign='top' width='100%%' border='0' cellpadding='0' cellspacing='0'>
<tr>
</tr>
</table>
<!-- 3차 메뉴 출력 -->
</td>
</tr><tr>
<td style='width:;'><table style="height:18px; width:100%;">
	<tr>
		<td align="left" ><div style='display:inline; margin:0 5px 0 0;'><img src="img/icon_list_bullet.gif" alt="" title="" style="margin-bottom:3px;"></div><a href='list.php?category=2371' target=''  style="" >패션용품</a></td>
	</tr>
</table>
<!-- 3차 메뉴 출력 -->
<table align='left' valign='top' width='100%%' border='0' cellpadding='0' cellspacing='0'>
<tr>
</tr>
</table>
<!-- 3차 메뉴 출력 -->
</td>
</tr><tr>
<td style='width:;'><table style="height:18px; width:100%;">
	<tr>
		<td align="left" ><div style='display:inline; margin:0 5px 0 0;'><img src="img/icon_list_bullet.gif" alt="" title="" style="margin-bottom:3px;"></div><a href='list.php?category=9' target=''  style="" >목욕/위생용품</a></td>
	</tr>
</table>
<!-- 3차 메뉴 출력 -->
<table align='left' valign='top' width='100%%' border='0' cellpadding='0' cellspacing='0'>
<tr>
</tr>
</table>
<!-- 3차 메뉴 출력 -->
</td>
</tr><tr>
<td style='width:;'><table style="height:18px; width:100%;">
	<tr>
		<td align="left" ><div style='display:inline; margin:0 5px 0 0;'><img src="img/icon_list_bullet.gif" alt="" title="" style="margin-bottom:3px;"></div><a href='list.php?category=2249' target=''  style="" >이동장/철장/하우스</a></td>
	</tr>
</table>
<!-- 3차 메뉴 출력 -->
<table align='left' valign='top' width='100%%' border='0' cellpadding='0' cellspacing='0'>
<tr>
</tr>
</table>
<!-- 3차 메뉴 출력 -->
</td>
</tr><tr>
<td style='width:;'><table style="height:18px; width:100%;">
	<tr>
		<td align="left" ><div style='display:inline; margin:0 5px 0 0;'><img src="img/icon_list_bullet.gif" alt="" title="" style="margin-bottom:3px;"></div><a href='list.php?category=2282' target=''  style="" >애견줄</a></td>
	</tr>
</table>
<!-- 3차 메뉴 출력 -->
<table align='left' valign='top' width='100%%' border='0' cellpadding='0' cellspacing='0'>
<tr>
</tr>
</table>
<!-- 3차 메뉴 출력 -->
</td>
</tr><tr>
<td style='width:;'><table style="height:18px; width:100%;">
	<tr>
		<td align="left" ><div style='display:inline; margin:0 5px 0 0;'><img src="img/icon_list_bullet.gif" alt="" title="" style="margin-bottom:3px;"></div><a href='list.php?category=2283' target=''  style="" >장난감/훈련용품</a></td>
	</tr>
</table>
<!-- 3차 메뉴 출력 -->
<table align='left' valign='top' width='100%%' border='0' cellpadding='0' cellspacing='0'>
<tr>
</tr>
</table>
<!-- 3차 메뉴 출력 -->
</td>
</tr><tr>
<td style='width:;'><table style="height:18px; width:100%;">
	<tr>
		<td align="left" ><div style='display:inline; margin:0 5px 0 0;'><img src="img/icon_list_bullet.gif" alt="" title="" style="margin-bottom:3px;"></div><a href='list.php?category=2284' target=''  style="" >의약부외품</a></td>
	</tr>
</table>
<!-- 3차 메뉴 출력 -->
<table align='left' valign='top' width='100%%' border='0' cellpadding='0' cellspacing='0'>
<tr>
</tr>
</table>
<!-- 3차 메뉴 출력 -->
</td>
</tr><tr>
</tr>
</table></td>
		</tr>
		</table>
	</td>
</tr>
</table>

</td>
<td  valign='top'  align='center' style='width:;'><table style="margin-bottom:10px;" cellpadding="0" cellspacing="0" width="100%">
<tr>
	<td align="left" style="padding-left:8px;">
		<table  cellpadding="0" cellspacing="0" width="150">
		<tr>
			<td align="left" style="background:url('img/category_layer_title.gif') no-repeat; width:150px;height:22px; padding:2px 0 0 5px;" class="category"><a href='bbs_list.php?tb=board_clinicinfo' target=''>펫노트</a></td>
		</tr>
		<tr>
			<td align="left" class="category_sub" style="padding:5px 0 0 10px; "><table align='center' width='100%' border='0' cellpadding='0' cellspacing='0'>
<tr>
</tr>
</table></td>
		</tr>
		</table>
	</td>
</tr>
</table>

</td>
<td  valign='top'  align='center' style='width:;'><table style="margin-bottom:10px;" cellpadding="0" cellspacing="0" width="100%">
<tr>
	<td align="left" style="padding-left:8px;">
		<table  cellpadding="0" cellspacing="0" width="150">
		<tr>
			<td align="left" style="background:url('img/category_layer_title.gif') no-repeat; width:150px;height:22px; padding:2px 0 0 5px;" class="category"><a href='http://petnu.com/knowledge' target=''>스마트지식</a></td>
		</tr>
		<tr>
			<td align="left" class="category_sub" style="padding:5px 0 0 10px; "><table align='center' width='100%' border='0' cellpadding='0' cellspacing='0'>
<tr>
<td style='width:;'><table style="height:18px; width:100%;">
	<tr>
		<td align="left" ><div style='display:inline; margin:0 5px 0 0;'><img src="img/icon_list_bullet.gif" alt="" title="" style="margin-bottom:3px;"></div><a href='bbs_list.php?tb=board_knowledge_smart_all' target=''  style="" >종합지식</a></td>
	</tr>
</table>
<!-- 3차 메뉴 출력 -->
<table align='left' valign='top' width='100%%' border='0' cellpadding='0' cellspacing='0'>
<tr>
</tr>
</table>
<!-- 3차 메뉴 출력 -->
</td>
</tr><tr>
<td style='width:;'><table style="height:18px; width:100%;">
	<tr>
		<td align="left" ><div style='display:inline; margin:0 5px 0 0;'><img src="img/icon_list_bullet.gif" alt="" title="" style="margin-bottom:3px;"></div><a href='bbs_list.php?tb=board_knowledge_expert_all' target=''  style="" >전문가지식</a></td>
	</tr>
</table>
<!-- 3차 메뉴 출력 -->
<table align='left' valign='top' width='100%%' border='0' cellpadding='0' cellspacing='0'>
<tr>
<td  align='center' style='width:;'><table cellspacing="0" style="width:100%; height:18px;">
	<tr>
		<td style="font:12px '돋움'; color:#323232;" align="left"><img src="img/icon_sub_menu_2.gif" style="margin:0px 5px 0px 5px; vertical-align:middle;"><a href='bbs_list.php?tb=board_knowledge_expert_all&b_category=%BC%F6%C0%C7%BB%E7%C1%F6%BD%C4&u=1464849038&id=' target=''  style="" >수의사지식</a></td>
	</tr>
</table>
</td>
</tr><tr>
<td  align='center' style='width:;'><table cellspacing="0" style="width:100%; height:18px;">
	<tr>
		<td style="font:12px '돋움'; color:#323232;" align="left"><img src="img/icon_sub_menu_2.gif" style="margin:0px 5px 0px 5px; vertical-align:middle;"><a href='bbs_list.php?tb=board_knowledge_expert_all&b_category=%C8%C6%B7%C3%BB%E7%C1%F6%BD%C4&u=1464849044&id=' target=''  style="" >훈련사지식</a></td>
	</tr>
</table>
</td>
</tr><tr>
<td  align='center' style='width:;'><table cellspacing="0" style="width:100%; height:18px;">
	<tr>
		<td style="font:12px '돋움'; color:#323232;" align="left"><img src="img/icon_sub_menu_2.gif" style="margin:0px 5px 0px 5px; vertical-align:middle;"><a href='bbs_list.php?tb=board_knowledge_expert_all&b_category=%B9%CC%BF%EB%BB%E7%C1%F6%BD%C4&u=1464849072&id=' target=''  style="" >미용사지식</a></td>
	</tr>
</table>
</td>
</tr><tr>
<td  align='center' style='width:;'><table cellspacing="0" style="width:100%; height:18px;">
	<tr>
		<td style="font:12px '돋움'; color:#323232;" align="left"><img src="img/icon_sub_menu_2.gif" style="margin:0px 5px 0px 5px; vertical-align:middle;"><a href='bbs_list.php?tb=board_knowledge_expert_all&b_category=%BA%EA%B8%AE%B4%F5%C1%F6%BD%C4&u=1464849122&id=' target=''  style="" >브리더지식</a></td>
	</tr>
</table>
</td>
</tr><tr>
</tr>
</table>
<!-- 3차 메뉴 출력 -->
</td>
</tr><tr>
</tr>
</table></td>
		</tr>
		</table>
	</td>
</tr>
</table>

</td>
<td  valign='top'  align='center' style='width:;'><table style="margin-bottom:10px;" cellpadding="0" cellspacing="0" width="100%">
<tr>
	<td align="left" style="padding-left:8px;">
		<table  cellpadding="0" cellspacing="0" width="150">
		<tr>
			<td align="left" style="background:url('img/category_layer_title.gif') no-repeat; width:150px;height:22px; padding:2px 0 0 5px;" class="category"><a href='http://petnu.com/magazine' target=''>매거진</a></td>
		</tr>
		<tr>
			<td align="left" class="category_sub" style="padding:5px 0 0 10px; "><table align='center' width='100%' border='0' cellpadding='0' cellspacing='0'>
<tr>
<td style='width:;'><table style="height:18px; width:100%;">
	<tr>
		<td align="left" ><div style='display:inline; margin:0 5px 0 0;'><img src="img/icon_list_bullet.gif" alt="" title="" style="margin-bottom:3px;"></div><a href='http://petnu.com/bbs_index.php?file1=bbs_index_default_breed_1.html&file2=bbs_index_breed_1.html' target=''  style="" >인기견</a></td>
	</tr>
</table>
<!-- 3차 메뉴 출력 -->
<table align='left' valign='top' width='100%%' border='0' cellpadding='0' cellspacing='0'>
<tr>
</tr>
</table>
<!-- 3차 메뉴 출력 -->
</td>
</tr><tr>
<td style='width:;'><table style="height:18px; width:100%;">
	<tr>
		<td align="left" ><div style='display:inline; margin:0 5px 0 0;'><img src="img/icon_list_bullet.gif" alt="" title="" style="margin-bottom:3px;"></div><a href='bbs_list.php?tb=board_breeding' target=''  style="" >번식</a></td>
	</tr>
</table>
<!-- 3차 메뉴 출력 -->
<table align='left' valign='top' width='100%%' border='0' cellpadding='0' cellspacing='0'>
<tr>
</tr>
</table>
<!-- 3차 메뉴 출력 -->
</td>
</tr><tr>
<td style='width:;'><table style="height:18px; width:100%;">
	<tr>
		<td align="left" ><div style='display:inline; margin:0 5px 0 0;'><img src="img/icon_list_bullet.gif" alt="" title="" style="margin-bottom:3px;"></div><a href='bbs_list.php?tb=board_showring' target=''  style="" >핸들링</a></td>
	</tr>
</table>
<!-- 3차 메뉴 출력 -->
<table align='left' valign='top' width='100%%' border='0' cellpadding='0' cellspacing='0'>
<tr>
</tr>
</table>
<!-- 3차 메뉴 출력 -->
</td>
</tr><tr>
<td style='width:;'><table style="height:18px; width:100%;">
	<tr>
		<td align="left" ><div style='display:inline; margin:0 5px 0 0;'><img src="img/icon_list_bullet.gif" alt="" title="" style="margin-bottom:3px;"></div><a href='bbs_list.php?tb=board_mydogstory' target=''  style="" >탑독</a></td>
	</tr>
</table>
<!-- 3차 메뉴 출력 -->
<table align='left' valign='top' width='100%%' border='0' cellpadding='0' cellspacing='0'>
<tr>
</tr>
</table>
<!-- 3차 메뉴 출력 -->
</td>
</tr><tr>
<td style='width:;'><table style="height:18px; width:100%;">
	<tr>
		<td align="left" ><div style='display:inline; margin:0 5px 0 0;'><img src="img/icon_list_bullet.gif" alt="" title="" style="margin-bottom:3px;"></div><a href='bbs_list.php?tb=board_study' target=''  style="" >길라잡이</a></td>
	</tr>
</table>
<!-- 3차 메뉴 출력 -->
<table align='left' valign='top' width='100%%' border='0' cellpadding='0' cellspacing='0'>
<tr>
</tr>
</table>
<!-- 3차 메뉴 출력 -->
</td>
</tr><tr>
<td style='width:;'><table style="height:18px; width:100%;">
	<tr>
		<td align="left" ><div style='display:inline; margin:0 5px 0 0;'><img src="img/icon_list_bullet.gif" alt="" title="" style="margin-bottom:3px;"></div><a href='bbs_list.php?tb=board_health' target=''  style="" >건강관리</a></td>
	</tr>
</table>
<!-- 3차 메뉴 출력 -->
<table align='left' valign='top' width='100%%' border='0' cellpadding='0' cellspacing='0'>
<tr>
</tr>
</table>
<!-- 3차 메뉴 출력 -->
</td>
</tr><tr>
<td style='width:;'><table style="height:18px; width:100%;">
	<tr>
		<td align="left" ><div style='display:inline; margin:0 5px 0 0;'><img src="img/icon_list_bullet.gif" alt="" title="" style="margin-bottom:3px;"></div><a href='bbs_list.php?tb=board_interview' target=''  style="" >클로즈업</a></td>
	</tr>
</table>
<!-- 3차 메뉴 출력 -->
<table align='left' valign='top' width='100%%' border='0' cellpadding='0' cellspacing='0'>
<tr>
</tr>
</table>
<!-- 3차 메뉴 출력 -->
</td>
</tr><tr>
<td style='width:;'><table style="height:18px; width:100%;">
	<tr>
		<td align="left" ><div style='display:inline; margin:0 5px 0 0;'><img src="img/icon_list_bullet.gif" alt="" title="" style="margin-bottom:3px;"></div><a href='bbs_list.php?tb=board_wildlife' target=''  style="" >야생동물</a></td>
	</tr>
</table>
<!-- 3차 메뉴 출력 -->
<table align='left' valign='top' width='100%%' border='0' cellpadding='0' cellspacing='0'>
<tr>
</tr>
</table>
<!-- 3차 메뉴 출력 -->
</td>
</tr><tr>
<td style='width:;'><table style="height:18px; width:100%;">
	<tr>
		<td align="left" ><div style='display:inline; margin:0 5px 0 0;'><img src="img/icon_list_bullet.gif" alt="" title="" style="margin-bottom:3px;"></div><a href='bbs_list.php?tb=board_dogshow' target=''  style="" >도그쇼</a></td>
	</tr>
</table>
<!-- 3차 메뉴 출력 -->
<table align='left' valign='top' width='100%%' border='0' cellpadding='0' cellspacing='0'>
<tr>
</tr>
</table>
<!-- 3차 메뉴 출력 -->
</td>
</tr><tr>
</tr>
</table></td>
		</tr>
		</table>
	</td>
</tr>
</table>

</td>
<td  valign='top'  align='center' style='width:;'><table style="margin-bottom:10px;" cellpadding="0" cellspacing="0" width="100%">
<tr>
	<td align="left" style="padding-left:8px;">
		<table  cellpadding="0" cellspacing="0" width="150">
		<tr>
			<td align="left" style="background:url('img/category_layer_title.gif') no-repeat; width:150px;height:22px; padding:2px 0 0 5px;" class="category"><a href='bbs_list.php?tb=board_animalhospital' target=''>동물병원</a></td>
		</tr>
		<tr>
			<td align="left" class="category_sub" style="padding:5px 0 0 10px; "><table align='center' width='100%' border='0' cellpadding='0' cellspacing='0'>
<tr>
</tr>
</table></td>
		</tr>
		</table>
	</td>
</tr>
</table>

</td>
<td width='166.33333333333' style='width:;'>&nbsp;</td>
</tr>
</table>
                                            </td>
                                        </tr>
                                        </table>
                                        <!--전체카테고리보기 끝-->
                                    </div>
                                </div><!--room2_text_1-->
                                <!--더보기 레이어창 열고닫기 레이어-->
                        </div >
                        <!--메뉴바-->
                    </td>
				</tr>
				</table>
			</td>
		</tr>
        </table>
	</td>
    
    
    
    
    
    
    
    
                                <td align="left" style="" valign="top">
                                    <table cellspacing="0">
                                        <tr>
                                            <td onmouseOver="Func_pick_img_change(1)">
                                                <a href=""><img id="pick_img_small_id_1" style="width:100%; display:none;"></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td onmouseOver="Func_pick_img_change(2)" >
                                                <a href=""><img id="pick_img_small_id_2" style="width:100%; display:none;"></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td onmouseOver="Func_pick_img_change(3)">
                                                <a href=""><img id="pick_img_small_id_3" style="width:100%; display:none;"></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td onmouseOver="Func_pick_img_change(4)" >
                                                <a href=""><img id="pick_img_small_id_4" style="width:100%; display:none;"></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td onmouseOver="Func_pick_img_change(5)">
                                                <a href=""><img id="pick_img_small_id_5" style="width:100%; display:none;"></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td onmouseOver="Func_pick_img_change(6)" >
                                                <a href=""><img id="pick_img_small_id_6" style="width:100%; display:none;"></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td onmouseOver="Func_pick_img_change(7)">
                                                <a href=""><img id="pick_img_small_id_7" style="width:100%; display:none;"></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td onmouseOver="Func_pick_img_change(8)">
                                                <a href=""><img id="pick_img_small_id_8" style="width:100%; display:none;"></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td onmouseOver="Func_pick_img_change(9)">
                                                <a href=""><img  id="pick_img_small_id_9" style="width:100%; display:none;"></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td onmouseOver="Func_pick_img_change(10)">
                                                <a href=""><img id="pick_img_small_id_10" style="width:100%; display:none;"></a>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <!--슬라이드배너끝-->
                </td>
                
            </tr>
        </table>
    </td>
    <!--실시간검색어 끝-->
    
   </tr>
</table>


<!--더보기 레이어창 열고닫기 레이어-->
<div id="all_layer_1" style="clear:both; display:none; position:relative; left:0; top:0; z-index:999;  width:100%">
    <div align="center" style="right:0px; top:0px; z-index:0; width:300px; height:415px; border:1px solid #e7e7e7; margin:0 auto; position: absolute">
        <!--전체카테고리보기 시작-->
        <table cellspacing="0" style="width:100%; ">
		
            <tr>
                <td align="left" style="background:#fff; ">
                    <table cellspacing="0" cellpadding="0" style="width:95%;">
                        <tr>
                            <td align="left"  class="font_st_16" style="color:#37a6ed; padding-left:12px; height:37px;"> 실시간검색어</td>
                        </tr>
				
				
                    </table>
                </td>
            </tr>
            <tr>
                <td align="center" style="background:#fff; ">
                    <table cellspacing="0" cellpadding="0" style="width:95%;">
                
				
                        <tr>
                            <td id="real_search_keyword_1">
                                <a href="all_search.php?search_word=%B9%E8%BA%AF%C8%C6%B7%C3&x=0&y=0">
                                    <table cellspacing="0" cellpadding="0" style="width:100%; height:35px; border-bottom:1px solid #f1f1f1;">
                                        <tr>
                                            <td align="center" valign="middle" style="color:#37a6ed; width:5%; font-size:16px;">1</td>
                                            <td align="left"  style="width:83%; color:#555555; ">&nbsp; 배변훈련</td><td align="center" style="color:#ff0000; font-size:11px;">NEW</td>
                                        </tr>
                                    </table>
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td id="real_search_keyword_2">
                                <a href="all_search.php?search_word=%B8%AE%C6%AE%B8%AE%B9%F6&x=0&y=0">
                                    <table cellspacing="0" cellpadding="0" style="width:100%; height:35px; border-bottom:1px solid #f1f1f1;">
                                        <tr>
                                            <td align="center" valign="middle" style="color:#37a6ed; width:5%; font-size:16px;">2</td><td align="left" style="width:83%; color:#555555;">&nbsp; 리트리버</td><td align="center" style="color:#ff0000; font-size:11px;">NEW</td>
                                        </tr>
                                    </table>
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td id="real_search_keyword_3">
                                <a href="all_search.php?search_word=%BA%F1%BC%F5%C7%C1%B8%AE%C1%A6&x=0&y=0">
                                    <table cellspacing="0" cellpadding="0" style="width:100%; height:35px; border-bottom:1px solid #f1f1f1;">
                                        <tr>
                                            <td align="center" valign="middle" style="color:#37a6ed; width:5%; font-size:16px;">3</td><td align="left" style="width:83%; color:#555555;">&nbsp; 비숑프리제</td><td align="center" style="color:#ff0000; font-size:11px;">NEW</td>
                                        </tr>
                                    </table>
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td id="real_search_keyword_4">
                                <a href="all_search.php?search_word=%B0%F1%B5%E7%B8%AE%C6%AE%B8%AE%B9%F6&x=26&y=24">
                                    <table cellspacing="0" cellpadding="0" style="width:100%; height:35px; border-bottom:1px solid #f1f1f1;">
                                        <tr>
                                            <td align="center" valign="middle" style="color:#37a6ed; width:5%; font-size:16px;">4</td><td align="left" style="width:83%; color:#555555;">&nbsp; 골든리트리버</td><td align="center" style="color:#ff0000; font-size:11px;">NEW</td>
                                        </tr>
                                    </table>
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td id="real_search_keyword_5">
                                <a href="all_search.php?search_word=%B8%BB%C6%BC%C1%EE&x=0&y=0">
                                    <table cellspacing="0" cellpadding="0" style="width:100%; height:35px; border-bottom:1px solid #f1f1f1;">
                                        <tr>
                                            <td align="center" valign="middle" style="color:#37a6ed; width:5%; font-size:16px;">5</td><td align="left" style="width:83%; color:#555555;">&nbsp; 말티즈</td><td align="center" style="color:#ff0000; font-size:11px;">NEW</td>
                                        </tr>
                                    </table>
                                </a>
                    	
                            </td>
                        </tr>
                        <tr>
                            <td id="real_search_keyword_6">
                                <a href="all_search.php?search_word=%B0%AD%BE%C6%C1%F6%C1%FA%BA%B4&x=0&y=0">
                                    <table cellspacing="0" cellpadding="0" style="width:100%; height:35px; border-bottom:1px solid #f1f1f1;">
                                        <tr>
                                            <td align="center" valign="middle" style="color:#37a6ed; width:5%; font-size:16px;">6</td><td align="left" style="width:83%; color:#555555;">&nbsp; 강아지질병</td><td align="center" style="color:#ff0000; font-size:11px;">NEW</td>
                                        </tr>
                                    </table>
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td id="real_search_keyword_7">
                                <a href="all_search.php?search_word=%C6%DB%B9%CC%B3%D7%C0%CC%C5%CD&x=0&y=0">
                                    <table cellspacing="0" cellpadding="0" style="width:100%; height:35px; border-bottom:1px solid #f1f1f1;">
                                        <tr>
                                            <td align="center" valign="middle" style="color:#37a6ed; width:5%; font-size:16px;">7</td><td align="left" style="width:83%; color:#555555;">&nbsp; 퍼미네이터</td><td align="center" style="color:#ff0000; font-size:11px;">NEW</td>
                                        </tr>
                                    </table>
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td id="real_search_keyword_8">
                                <a href="all_search.php?search_word=%B0%FC%C0%FD%BF%B5%BE%E7%C1%A6&x=0&y=0">
                                    <table cellspacing="0" cellpadding="0" style="width:100%; height:35px; border-bottom:1px solid #f1f1f1;">
                                        <tr>
                                            <td align="center" valign="middle" style="color:#37a6ed; width:5%; font-size:16px;">8</td><td align="left" style="width:83%; color:#555555;">&nbsp; 관절영양제</td><td align="center" style="color:#ff0000; font-size:11px;">NEW</td>
                                        </tr>
                                    </table>
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td id="real_search_keyword_9">
                                <a href="all_search.php?search_word=%BB%E7%B7%E1&x=0&y=0">
                                    <table cellspacing="0" cellpadding="0" style="width:100%; height:35px; border-bottom:1px solid #f1f1f1;">
                                        <tr>
                                            <td align="center" valign="middle" style="color:#37a6ed; width:5%; font-size:16px;">9</td><td align="left" style="width:83%; color:#555555;">&nbsp; 사료</td><td align="center" style="color:#ff0000; font-size:11px;">NEW</td>
                                        </tr>
                                    </table>
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td id="real_search_keyword_10">
                                <a>
                                    <table cellspacing="0" cellpadding="0" style="width:100%; height:35px; border-bottom:1px solid #f1f1f1;">
                                        <tr>
                                            <td align="center" valign="middle" style="color:#37a6ed; width:10%; font-size:16px;"></td>
                                            <td align="left" style="width:77%; color:#555555;"></td>
                                            <td align="center" style="color:#ff0000; font-size:11px;"></td>
                                        </tr>
                                    </table>
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" onClick="showLayer('all_layer_1')" style="padding-right:10px; " >
                                <table cellspacing="0" style="height:35px;" >
                                    <tr>
							
                                        <td style="color:#555555; padding-left:5px; cursor:pointer;" >닫기</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <!--전체카테고리보기 끝-->
    </div>
</div>
<!--더보기 레이어창 열고닫기 레이어-->
<script language="javascript" src="js/jquery-1.11.2.min.js" type="text/javascript"></script> 
<div>
    <script>
        var searchform = document.searchform;
        document.onclick = test;
        document.getElementById("autoSearchPart").style.display = "none";

        // 실시간을 위해 파싱
        function SetRealKeyword() {
            $.get("/q_rank.php",
                function(data, status) {
                    for (var i = 1; i <= 10; i++) {
                        document.getElementById("pick_img_big_id" + i).innerHTML =
                            '<a href="all_search.php?search_word=' + data[i].keyword + '&x=0&y=0">' +
                            '<div style="width:100%; height:35px;">' +
                                '<div class="searchRankTxt" style="float:left;width:20%;line-height:35px;">실시간</div>'+
                                '<div class="searchRankNum" style="float:left;width:15%;">'+i+'</div>'+
                                '<div class="searchRankName" style="float:left;width:60%;line-height:35px;">' + data[i].keyword+'</div>'+
                            '</div>'+
                            '</a>';
                        document.getElementById('real_search_keyword_' + i).innerHTML =
                            '<a href="all_search.php?search_word=' + data[i].keyword + '&x=0&y=0">' +
                            '<div style="width:100%; height:35px; border-bottom:1px solid #f1f1f1;">' +
                                '<div class="searchRankTxt" style="float:left;width:10%;line-height:35px;font-size:16px;#37a6ed;text-align:center;color:#37a6ed;">'+i+'</div>'+
                                '<div class="searchRankName" style="float:left;width:60%;line-height:35px;color:#555555;">' + data[i].keyword+'</div>'+
                        '<div class="searchRankNum" style="float:right;width:15%;color:#ff0000;font-size:11px;text-align:center;">' + data[i].rank_icon.toUpperCase()+'</div>'+
                            '</div>'+
                            '</a>';
                    }
                });
        }

        $(document).ready(function() {
            SetRealKeyword();
        });
    </script>
    <script>

//imagepreload 이미지 미리 읽도록 개선함.
        var PICK_BIG_IMG_ARRAY		= new Array();
        var PICK_BIG_IMG_ARRAY2		= new Array();
        var PICK_BIG_IMG_ARRAY3		= new Array();

        function imagepreload(ary,arr_name) {
            try{
                if (!ary) return;
                arv = ary.split('|');

                for(var i=0; i<arv.length; i++){
                    arr_name[i] = new Image();
                    arr_name[i].src = arv[i];
                }
            }catch(e){}

        }
        imagepreload('img/noimg/noimg_w752h409.gif|img/noimg/noimg_w752h409.gif|img/noimg/noimg_w752h409.gif|img/noimg/noimg_w752h409.gif|img/noimg/noimg_w752h409.gif|img/noimg/noimg_w752h409.gif|img/noimg/noimg_w752h409.gif|img/noimg/noimg_w752h409.gif|img/noimg/noimg_w752h409.gif|img/noimg/noimg_w752h409.gif',PICK_BIG_IMG_ARRAY);

        imagepreload('img/noimg/noimg_w200h100.gif|img/noimg/noimg_w200h100.gif|img/noimg/noimg_w200h100.gif|img/noimg/noimg_w200h100.gif|img/noimg/noimg_w200h100.gif|img/noimg/noimg_w200h100.gif|img/noimg/noimg_w200h100.gif|img/noimg/noimg_w200h100.gif|img/noimg/noimg_w200h100.gif|img/noimg/noimg_w200h100.gif',PICK_BIG_IMG_ARRAY2);

        imagepreload('img/noimg/noimg_w200h100.gif|img/noimg/noimg_w200h100.gif|img/noimg/noimg_w200h100.gif|img/noimg/noimg_w200h100.gif|img/noimg/noimg_w200h100.gif|img/noimg/noimg_w200h100.gif|img/noimg/noimg_w200h100.gif|img/noimg/noimg_w200h100.gif|img/noimg/noimg_w200h100.gif|img/noimg/noimg_w200h100.gif',PICK_BIG_IMG_ARRAY3);
//imagepreload 이미지 미리 읽도록 개선함.

        var before_menu	= 1;
        function Func_pick_img_change(menu_number)
        {
            startRoll	= false;

            //작은이미지
            if(before_menu != "" && before_menu != menu_number)
            {
                small_img_url		= PICK_BIG_IMG_ARRAY3[before_menu - 1].src;
                //document.getElementById("pick_img_small_id_"+before_menu).src = small_img_url;
                small_over_img_url	= PICK_BIG_IMG_ARRAY2[menu_number - 1].src;
                switch(menu_number)
                {
                case 1:
                    link_url			= '';
                    break;
                case 2:
                    link_url			= '';
                    break;
                case 3:
                    link_url			= '';
                    break;
                case 4:
                    link_url			= '';
                    break;
                case 5:
                    link_url			= '';
                    break;
                case 6:
                    link_url			= '';
                    break;
                case 7:
                    link_url			= '';
                    break;
                case 8:
                    link_url			= '';
                    break;
                case 9:
                    link_url			= '';
                    break;
                case 10:
                    link_url			= '';
                    break;																								
                }

                small_img_url		= PICK_BIG_IMG_ARRAY3[before_menu - 1].src;
                link_url_onClick = (link_url != null)?"<a >":"";
                //document.getElementById("pick_img_small_id_"+menu_number).src = small_over_img_url;
            }


            //큰이미지
            view_div = 'pick_img_big_id'+menu_number;
            document.getElementById(view_div).style.display = "";
            for ( i=1;i<=10;i++ )
            {
                hide_div= 'pick_img_big_id'+i;
                if ( view_div != hide_div )
                {
                    document.getElementById(hide_div).style.display = "none";
                }
            }


            before_menu = menu_number;
        }

        menu_count		= PICK_BIG_IMG_ARRAY.length;
        rolling_time	= 2000;
        clearTime		= '';
        startRoll		= true;
        function rolling_main_pick()
        {
            roll_number		= before_menu + 1;
            roll_number		= roll_number > menu_count? 1 : roll_number;

            Func_pick_img_change(roll_number);

            clearTime		= setTimeout("rolling_main_pick()", rolling_time);
        }

        function mainRollStart()
        {
            if ( startRoll == true )
            {
                setTimeout("rolling_main_pick()", rolling_time);
            }
        }

        function starRollFunction()
        {
            setTimeout("mainRollStart()", 1000);
        }

        window.onload = starRollFunction;
    </script>

</div>

</td>
					</tr>
					</table>
				</td>
			</tr>
			</table>
		</td>
	</tr>
    </table>
</div>

<!--로고 / 검색 / 날씨/날짜-->




	</div>
	<!--상단  끝-->

	<!--중앙 시작-->
	<div id="content">
		<div>
			<!-- 약관 / 개인정보 보호정책 동의 JS [ start ] -->
<SCRIPT LANGUAGE="JavaScript">
<!--

function chk_form()
{
	var chkok;
	var form;

	form = document.getElementById("chkform");
	chkok = document.getElementById("chk_ok").checked;
	chkok1 = document.getElementById("chk_ok1").checked;
	chkok2 = document.getElementById("chk_ok2").checked;

	if (form.chk_ok.checked == false)
	{
		alert("이용약관에 동의를 하셔야지만 가입하실수 있습니다.");
		form.chk_ok.focus();
		return false;
	}

	if (form.chk_ok1.checked == false)
	{
		alert("개인정보 보호정책에 동의를 하셔야지만 가입하실수 있습니다.");
		form.chk_ok1.focus();
		return false;
	}

	if (form.chk_ok2.checked == false)
	{
		alert("개인정보 수집 이용에 동의를 하셔야지만\n가입하실수 있습니다.");
		form.chk_ok2.focus();
		return false;
	}

	/*
	if (form.name.value == '') {
		alert("실명인증을 위해 이름을 입력하세요.");
		form.name.focus();
		return false;
	}

	if (form.joomin1.value == '' || form.joomin2.value == '') {
		alert("실명인증을 위해 주민번호를 입력하세요.");
		form.joomin1.focus();
		return false;
	}
	*/

	

	//form.action = "member_etc.php?mode=joinus2&file2=default2.html";
	form.action = "?mode=joinus2&member_group="+ form.member_group.value;
	form.method = "post";
	form.submit();
}

//-->
</SCRIPT>
<!-- 약관 / 개인정보 보호정책 동의 JS [ end ] -->

<!-- 책갈피 -->
<a name="MemberRegistOK"></a>


<form name="chkform" id="chkform">
<input type='hidden' name='member_group' value=''>

<input type='hidden' name='joinSite' value=''>

		<!-- 아이핀추가 hun -->

<div style="width:1000px; margin:0 auto;">
	<table cellspacing="0" style="width:100%; margin:0 auto;">
		<tr>
			
			<td style="" align="right"><img src="../resources/image/title_joinus_step_01.gif" align="absmiddle" alt="이용약관 및 개인보호정책 동의" title="이용약관 및 개인보호정책 동의"></td>
		</tr>
		<tr>
			<td colspan="2" style="height:2px; background:#1c8dff; width:100%;"></td>
		</tr>
	</table>
</div>

<!-- 회원이용약관 [ start ] -->
<a name="stipulation"></a>
<div style="width:1000px; margin:0 auto;">
<table cellspacing="0" style="width:100%; margin:20px 0 20px 0">
	<tr>
		<td>
			<table cellspacing="0" >
			<tr>
				<td style="padding-left:5px; font:bold 14px '돋움'; color:#343535; ">사이트이용약관</td>
			</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td >
			<div style="overflow-y:scroll; width:998px; height:300px;  margin:5px 0 3px 0; border-width:1px; border-style:solid; border-color:#dbdbdb; background-color:#white;">
			<table cellspacing="0" >
			<tr>
				<td style="padding:15px 15px 15px 15px; font:12px '돋움'; line-height:19px;color:#5c5c5c;"><span style="font-size: 14px">
<p><span style="font-size: 13px">[&nbsp;털 달린 친구들 이용약관 ]</span></p>
<p><span style="font-size: 13px">제1장 총칙</span></p>
<span style="font-size: 13px">
<p><br />
제 1 조(목적)</p>
<p>이 약관은 주식회사 스마일아이템 (&quot;회사&quot; 또는 &quot;펫앤유&quot;)가 운영하는 인터넷사이트(이하 &ldquo;사이트&rdquo;라 한다)에서 제공하는 인터넷 관련 서비스(이하 &ldquo;서비스&rdquo;라 한다)를 이용함에 있어 회원의 권리&bull;의무 및 책임사항을 규정함을 목적으로 합니다.</p>
<p>*「인터넷, 정보통신망, 모바일 및 스마트 장치 등을 이용하는 전자상거래에 대하여도 그 성질에 반하지 않는 한 이 약관을 준용합니다」</p>
<p><br />
제 2 조 (용어의 정의)</p>
<p>1. &ldquo;사이트&rdquo;란 회사가 상품 또는 쿠폰(이하 &ldquo;상품 등&rdquo;이라 함)을 회원에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 상품 등을 거래할 수 있도록 설정한 가상의 영업장을 의미합니다.</p>
<p>2. &ldquo;회원&rdquo;이라 함은 사이트에 회원등록을 한 자로서, 계속적으로 사이트에서 제공하는 서비스를 이용할 수 있는 자를 말합니다.</p>
<p>3. &ldquo;아이디(ID)&rdquo;라 함은 회원의 식별과 서비스 이용을 위하여 회원이 설정하고 회사가 승인하여 등록된 전자우편주소를 말합니다.</p>
<p>4. &ldquo;비밀번호(Password)&rdquo;라 함은 회원의 동일성 확인과 회원의 권익 및 비밀보호를 위하여 회원 스스로가 설정하여 사이트에 등록한 문자와 숫자의 조합을 말합니다.</p>
<p>5. &quot;유료서비스&quot;라 함은 &quot;회사&quot;가 유료로 제공하는 각종 온라인디지털콘텐츠(각종 정보콘텐츠, VOD, 아이템 기타 유료콘텐츠를 포함) 및 제반 서비스를 의미합니다.</p>
<p>6. &quot;포인트&quot;라 함은 서비스의 효율적 이용을 위해 회사가 임의로 책정 또는 지급, 조정할 수 있는 재산적 가치가 없는 &quot;서비스&quot; 상의 가상 데이터를 의미합니다. <br />
&nbsp;<br />
7. &quot;게시물&quot;이라 함은 &quot;회원&quot;이 &quot;서비스&quot;를 이용함에 있어 &quot;서비스상&quot;에 게시한 부호ㆍ문자ㆍ음성ㆍ음향ㆍ화상ㆍ동영상 등의 정보 형태의 글, 사진, 동영상 및 각종 파일과 링크 등을 의미합니다.</p>
<p>6. &ldquo;할인쿠폰&rdquo;이라 함은 상품 등을 구매할 때나 사이트가 제공하는 서비스를 이용할 때 표시된 금액 또는 비율만큼 할인 받을 수 있는 쿠폰(온라인 또는 오프라인)을 말합니다.</p>
<p><br />
제 3 조 (약관의 명시와 설명 및 개정)</p>
<p>1. 회사는 이 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 주소를 포함), 전화번호, 모사전송번호, 전자우편주소, 사업자등록번호, 통신판매업신고번호, 개인정보관리책임자 등을 회원이 쉽게 확인할 수 있도록 사이트의 초기 서비스 화면에 게시합니다. 다만, 약관의 구체적 내용은 회원이 연결화면을 통하여 볼 수 있도록 할 수 있습니다.</p>
<p>2. 회사는 『전자상거래 등에서의 소비자보호에 관한 법률』, 『약관의 규제에 관한 법률』, 『전자문서 및 전자거래기본법』, 『전자금융거래법』, 『전자서명법』, 『정보통신망 이용촉진 및 정보보호 등에 관한 법률』, 『소비자기본법』 등 관련법령을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.</p>
<p>3. 회사가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행 약관과 함께 사이트의 초기화면에 그 적용일자 7일(다만, 회원에게 불리한 내용으로 변경하는 경우에는 30일) 이전부터 적용일자 전일까지 공지합니다.</p>
<p>4. 제3항에 의해 변경된 약관은 법령에 특별한 규정 기타 부득이한 사유가 없는 한 그 적용일자 이전으로 소급하여 적용되지 아니합니다.</p>
<p>5. 제3항에 따라 공지된 적용일자 이후에 회원이 명시적으로 거부의사를 표명하지 않을 경우에는 개정된 약관에 동의하는 것으로 봅니다.</p>
<p>6. 회사는 제공하는 서비스 내의 개별 서비스에 대한 별도의 약관 및 이용조건을 둘 수 있으며 개별 서비스에서 별도로 적용되는 약관에 대한 동의는 회원이 개별 서비스를 최초로 이용할 경우 별도의 동의절차를 거치게 됩니다. 이 경우 개별 서비스에 대한 이용약관 등이 이 약관에 우선합니다.</p>
<p>7. 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 전자상거래 등에서의 소비자 보호에 관한 법률, 약관의 규제에 관한 법률, 공정거래위원회가 정하는 전자상거래 등에서의 소비자 보호지침 및 관계법령 및 상관례에 따릅니다.</p>
<p><br />
제 4 조 (서비스의 제공 및 변경)</p>
<p>1. 회사는 다음과 같은 서비스를 제공합니다.</p>
<p>&nbsp;&nbsp; 가. 전자상거래 서비스(통신판매중개서비스 포함) 및 부수 서비스</p>
<p>&nbsp;&nbsp; 나. 기타 회사가 정하는 서비스 또는 업무</p>
<p>2. 회사는 상품 등의 품절 또는 기술적 사양의 변경 등의 경우에는 장차 체결되는 계약에 의해 제공할 상품 등의 내용을 변경할 수 있습니다. 이 경우에는 변경된 상품 등의 내용 및 제공일자를 명시하여 현재의 상품 등의 내용을 게시한 곳에 즉시 공지합니다.</p>
<p>3. 회사가 제공하기로 회원과 계약을 체결한 서비스의 내용을 상품 등의 품절 또는 기술적 사양의 변경 등의 사유로 변경할 경우에는 그 사유를 회원에게 통지 가능한 주소로 즉시 통지합니다.</p>
<p>4. 전항의 경우 회사는 이로 인하여 회원이 입은 인과관계가 입증된 실제 손해를 배상합니다. 다만, 회사가 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.</p>
<p><br />
제 5 조 (서비스의 중단)</p>
<p>1. 회사는 컴퓨터 등 정보통신설비의 보수점검&bull;교체 및 고장, 통신의 두절 등의 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할 수 있습니다.</p>
<p>2. 회사는 제1항의 사유로 서비스의 제공이 일시적으로 중단됨으로 인하여 이용자 또는 제3자가 입은 손해에 대하여 배상합니다. 단, 회사가 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.</p>
<p>3. 사업종목의 전환, 사업의 포기, 업체간의 통합 등의 이유로 서비스를 제공할 수 없게 되는 경우에는 회사는 제8조에 정한 방법으로 이용자에게 통지하고 당초 회사에서 제시한 조건에 따라 소비자에게 보상합니다. 다만, 회사가 보상기준 등을 고지하지 아니한 경우에는 이용자들의 마일리지 또는 적립금 등을 회사에서 통용되는 통화가치에 상응하는 현물 또는 현금으로 이용자에게 지급합니다.</p>
<p><br />
제 6 조 (회원가입)</p>
<p>1. 이용자는 회사가 정한 가입양식에 따라 회원정보를 기입한 후 이 약관에 동의한다는 의사표시를 함으로써 회원가입을 신청합니다. 회사는 이러한 신청에 있어 전문기관을 통한 실명확인 및 본인인증을 요청할 수 있습니다.</p>
<p>2. 회사는 제1항과 같이 회원으로 가입할 것을 신청한 이용자 중 다음 각 호에 해당하지 않는 한 회원으로 등록합니다. 회사가 회원가입신청의 승인을 거부하거나 유보하는 경우 원칙적으로 이를 회원에게 알립니다.</p>
<p>&nbsp;&nbsp; 가. 가입신청자가 이 약관 제7조 제3항에 의하여 이전에 회원자격을 상실한 적이 있는 경우. 다만, 제7조 제3항에 의한 회원자격 상실 후 3년이 경과한 자로서 회사의 회원 재가입 승낙을 얻은 경우에는 예외로 한다.</p>
<p>&nbsp;&nbsp; 나. 등록내용에 허위, 기재누락, 오기가 있는 경우</p>
<p>&nbsp;&nbsp; 다. 기타 회원으로 등록하는 것이 쇼핑몰의 기술상 현저히 지장이 있다고 판단되는 경우</p>
<p>&nbsp;&nbsp; 라. 회원가입 및 전자상거래상의 계약에 관한 서비스는 만 14세 이상인 자에 한함</p>
<p>3. 회원가입계약의 성립시기는 회사의 승낙이 이용신청자에게 도달한 시점으로 합니다.</p>
<p>4. 회원은 회원가입시 등록한 사항에 변경이 있는 경우 상당한 기간 이내에 회사에 대하여 회원정보 수정 등의 방법으로 그 변경사항을 알려야 합니다.</p>
<p>5. 회사는 회원에 대하여 『영화 및 비디오물의 진흥에 관한 법률』 및 『청소년 보호법』 등에 따른 등급 및 연령준수를 위해 이용제한이나 등급별 제한을 할 수 있습니다.</p>
<p><br />
제 7 조 (회원 탈퇴 및 자격 상실 등)</p>
<p>1. 회원은 회사에 언제든지 탈퇴를 요청할 수 있으며, 회사는 즉시 회원탈퇴를 처리합니다. 단, 회원탈퇴시 적립금 등 회원으로서의 모든 혜택을 소멸됩니다.</p>
<p>2. 회원이 다음 각 호의 사유에 해당하는 경우, 회사는 회원자격을 제한 및 정지시킬 수 있습니다.</p>
<p>&nbsp;&nbsp; 가. 가입신청시에 허위 내용을 등록하거나 타인의 정보를 도용한 경우</p>
<p>&nbsp;&nbsp; 나. 사이트를 이용하여 구입한 재화 등의 대금, 기타 사이트 이용에 관련하여 회원이 부담하는 채무를 기일에 지급하지 않는 경우</p>
<p>&nbsp;&nbsp; 다. 다른 사람의 사이트 이용을 방해하거나 그 정보를 도용하는 등 전자상거래 질서를 위협하는 경우</p>
<p>&nbsp;&nbsp; 라. 사이트를 이용하여 법령 또는 이 약관이 금지하거나 공서양속에 반하는 행위를 하는 경우</p>
<p>3. 회사가 회원 자격을 제한&bull;정지 시킨 후 동일한 행위가 2회 이상 반복되거나 30일 이내에 그 사유가 시정되지 아니하는 경우 회사는 회원자격을 상실시킬 수 있습니다.</p>
<p>4. 회사가 회원자격을 상실시키는 경우에는 회원등록을 말소합니다. 이 경우 회원에게 이를 통지하고, 회원등록 말소 전에 최소한 30일 이상의 기간을 정하여 소명할 기회를 부여합니다.</p>
<p><br />
제 8 조 (회원에 대한 통지)</p>
<p>1. 회사가 회원에 대한 통지를 하는 경우, 회원이 미리 약정하여 지정한 전자우편주소나 SMS 등으로 할 수 있습니다.</p>
<p>2. 회사는 불특정다수 회원에 대한 통지의 경우 1주일 이상 사이트의 공지사항(고객센터)에 게시함으로써 개별 통지에 갈음할 수 있습니다. 다만, 회원 본인의 거래에 관련하여 중대한 영향을 미치는 사항에 대하여는 개별 통지합니다.</p>
<p><br />
제 9 조 (정보의 제공 및 광고의 게재)</p>
<p>1. 회사는 회원이 서비스 이용 중 필요하다고 인정되는 다양한 정보를 공지사항 또는 전자우편이나 서신우편, SMS, 전화 등의 방법으로 회원에게 제공할 수 있습니다. 다만, 회원은 관련법에 따른 거래관련정보 및 고객문의 등에 대한 답변 등을 제외하고는 언제든지 전자우편 등에 대해서 수신 거절을 할 수 있습니다.</p>
<p>2. 회사는 서비스의 운영과 관련하여 서비스 화면, 홈페이지, 전자우편 등에 광고를 게재할 수 있습니다. 광고가 게재된 전자우편 등을 수신한 회원은 수신거절의 의사표시를 할 수 있으며, 회사는 수신거절을 위한 방법을 회원에게 제공합니다.</p>
<p><br />
제 10 조 (회사의 의무)</p>
<p>1. 회사는 법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하지 않으며 이 약관이 정하는 바에 따라 지속적이고, 안정적으로 상품 등을 제공하는데 최선을 다하여야 합니다.</p>
<p>2. 회사는 회원이 안전하게 서비스를 이용할 수 있도록 회원의 개인정보(신용정보 포함)보호를 위한 보안시스템을 갖추어야 하며, 개인정보취급방침을 공시하고 준수합니다.</p>
<p>3. 회사는 이용자가 원하지 않는 영리목적의 광고성 전자우편을 발송하지 않습니다.</p>
<p>4. 회사는 회원으로부터 제기되는 의견이나 불만이 정당하다고 객관적으로 인정될 경우에는 적절한 절차를 거쳐 즉시 처리하여야 합니다. 다만, 즉시 처리가 곤란한 경우에는 회원에게 그 사유와 처리일정을 통보하여야 합니다.</p>
<p><br />
제 11 조 (회원의 ID 및 비밀번호에 대한 의무)</p>
<p>1. ID와 비밀번호에 관한 관리책임은 회원에게 있으며, 이를 소홀히 하여 발생한 모든 민&#8729;형사상의 책임은 회원 자신에게 있습니다.</p>
<p>2. 회원은 자신의 ID 및 비밀번호를 제3자에게 이용하게 해서는 안됩니다.</p>
<p>3. 회원이 자신의 ID 및 비밀번호를 도난당하거나 제3자가 사용하고 있음을 인지한 경우에는 즉시 회사에 통보하고 회사의 안내가 있는 경우에는 그에 따라야 합니다.</p>
<p>4. 회원이 제3항에 따른 통지를 하지 않거나 회사의 조치에 응하지 아니하여 발생하는 모든 불이익에 대한 책임은 회원에게 있습니다.</p>
<p><br />
제 12 조 (회원의 의무)</p>
<p>1. 회원은 관련법령, 이 약관의 규정, 이용안내 등 회사가 통지하는 사항을 준수하여야 하며, 기타 회사 업무에 방해되는 행위를 하여서는 안됩니다.</p>
<p>2. 회원은 다음 각 호의 행위를 하여서는 안 됩니다.</p>
<p>&nbsp;&nbsp; 가. 신청 또는 변경시 허위 내용의 등록</p>
<p>&nbsp;&nbsp; 나. 타인의 정보도용</p>
<p>&nbsp;&nbsp; 다. 사이트에 게시된 정보의 변경</p>
<p>&nbsp;&nbsp; 라. 회사가 정한 정보 이외의 정보(컴퓨터 프로그램 등)의 송신 또는 게시</p>
<p>&nbsp;&nbsp; 마. 회사 기타 제3자의 저작권 등 지식재산권에 대한 침해</p>
<p>&nbsp;&nbsp; 바. 회사 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위</p>
<p>&nbsp;&nbsp; 사. 외설 또는 폭력적인 메시지&#8729;화상&#8729;음성 기타 공서양속에 반하는 정보를 사이트에 공개 또는 게시하는 행위</p>
<p>&nbsp;&nbsp; 아. 회사의 동의 없이 영리를 목적으로 서비스를 사용하는 행위</p>
<p>&nbsp;&nbsp; 자. 회원의 포인트를 제3자와 유상으로 거래하거나 현금으로 전환하는 행위</p>
<p><br />
제 13 조 (개인정보보호)</p>
<p>1. 회사는 회원의 개인정보 수집시 서비스제공을 위하여 필요한 범위에서 최소한의 개인정보를 수집합니다.</p>
<p>2. 회사는 회원가입시 구매계약이행에 필요한 정보를 미리 수집하지 않습니다. 다만, 관련 법령상 의무이행을 위하여 구매계약 이전에 본인확인이 필요한 경우로서 최소한의 특정 개인정보를 수집하는 경우에는 그러하지 아니합니다.</p>
<p>3. 회사는 회원의 개인정보를 수집&bull;이용하는 때에는 당해 회원에게 그 목적을 고지하고 동의를 받습니다.</p>
<p>4. 회사는 수집된 개인정보를 목적외의 용도로 이용할 수 없으며, 새로운 이용목적이 발생한 경우 또는 제3자에게 제공하는 경우에는 이용&bull;제공단계에서 당해 회원에게 그 목적을 고지하고 동의를 받습니다. 다만, 관련 법령에 달리 정함이 있는 경우에는 예외로 합니다.</p>
<p>5. 회사가 제2항과 제3항에 의해 회원의 동의를 받아야 하는 경우에는 개인정보 관리 책임자의 신원(소속, 성명 및 전화번호, 기타 연락처), 정보의 수집목적 및 이용목적, 제3자에 대한 정보제공 관련사항(제공받은 자, 제공목적 및 제공할 정보의 내용) 등 『정보통신망 이용촉진 및 정보보호 등에 관한 법률』 에서 규정한 사항을 미리 명시하거나 고지해야 하며 회원은 언제든지 이 동의를 철회할 수 있습니다.</p>
<p>6. 회원은 언제든지 회사가 가지고 있는 자신의 개인정보에 대해 열람 및 오류 정정을 요구할 수 있으며 회사는 이에 대해 지체 없이 필요한 조치를 취할 의무를 집니다. 회원이 오류의 정정을 요구한 경우에는 회사는 그 오류를 정정할 때까지 당해 개인정보를 이용하지 않습니다.</p>
<p>7. 회사는 개인정보 보호를 위하여 회원의 개인정보를 취급하는 자를 최소한으로 제한하여야 하며 신용카드, 은행계좌 등을 포함한 회원의 개인정보의 분실, 도난, 유출, 동의 없는 제3자 제공, 변조 등으로 인한 이용자의 손해에 대하여 모든 책임을 집니다.</p>
<p>8. 회사 또는 그로부터 개인정보를 제공받은 제3자는 개인정보의 수집목적 또는 제공받은 목적을 달성한 때에는 당해 개인정보를 지체 없이 파기합니다.</p>
<p>9. 회사는 개인정보의 수집&bull;이용&bull;제공에 관한 동의란을 미리 선택한 것으로 설정해두지 않습니다. 또한 개인정보의 수집&bull;이용&bull;제공에 관한 동의거절시 제한되는 서비스를 구체적으로 명시하고, 필수수집항목이 아닌 개인정보의 수집&bull;이용&bull;제공에 관한 회원의 동의 거절을 이유로 회원가입 등 서비스 제공을 제한하거나 거절하지 않습니다.</p>
<p>10. 회사의 사이트(제2조 제1항에서 정한 범위 내) 이외의 링크된 사이트에서는 회사의 개인정보취급방침이 적용되지 않습니다. 링크된 사이트 및 상품 등을 제공하는 제3자의 개인정보 취급과 관련하여서는 해당 사이트 및 제3자의 개인정보취급방침을 확인할 책임이 회원에게 있으며, 회사는 이에 대하여 책임을 부담하지 않습니다.</p>
<p>11. 회사는 다음과 같은 경우에 법이 허용하는 범위 내에서 회원의 개인정보를 제3자에게 제공할 수 있습니다.</p>
<p>&nbsp;&nbsp; 가. 수사기관이나 기타 정부기관으로부터 정보제공을 요청 받은 경우</p>
<p>&nbsp;&nbsp; 나. 회원이 법령을 위반하는 등의 부정행위를 확인하기 위해 필요한 경우</p>
<p>&nbsp;&nbsp; 다. 판매자 또는 배송업체 등에게 거래 및 배송 등에 필요한 최소한의 회원의 정보(성명, 주소, 전화번호)를 제공하는 경우</p>
<p>&nbsp;&nbsp; 라. 구매가 성사된 때에 그 이행을 위하여 필요한 경우와 구매가 종료된 이후에도 반품, 교환, 환불, 취소 등을 위하여 필요한 경우</p>
<p>&nbsp;&nbsp; 마. 기타 법률에 의해 요구되는 경우</p>
<p><br />
제 14 조 (지급방법)</p>
<p>1. 사이트에서 구매한 상품 등에 대한 대금지급방법은 다음 각 호의 방법 중 가용한 방법으로 할 수 있습니다. 단, 회사는 회원의 지급방법에 대하여 상품 등의 대금에 어떠한 명목의 수수료도 추가하여 징수할 수 없습니다.</p>
<p>&nbsp;&nbsp; 가. 폰뱅킹, 인터넷뱅킹, 메일 뱅킹 등의 각종 계좌이체</p>
<p>&nbsp;&nbsp; 나. 선불카드, 직불카드, 신용카드 등의 각종 카드 결제</p>
<p>&nbsp;&nbsp; 다. 온라인 무통장입금</p>
<p>&nbsp;&nbsp; 라. 전자화폐에 의한 결제</p>
<p>&nbsp;&nbsp; 마. 수령시 대금지급</p>
<p>&nbsp;&nbsp; 바. 마일리지 등 회사가 지급한 적립금에 의한 결제</p>
<p>&nbsp;&nbsp; 사. 회사가 계약을 맺었거나 회사가 인정한 상품권에 의한 결제</p>
<p>&nbsp;&nbsp; 아. 기타 전자적 지급 방법에 의한 대금 지급 등</p>
<p>2. 회원이 구매대금의 결제와 관련하여 입력한 정보 및 그 정보와 관련하여 발생한 책임과 불이익은 전적으로 회원이 부담합니다.</p>
<p><br />
제 15 조 (할인쿠폰)</p>
<p>1. 할인쿠폰은 회사가 무상으로 발행하는 쿠폰으로, 발행대상, 발행경로, 사용대상 등에 따라 구분될 수 있으며, 할인쿠폰의 세부구분, 할인금액(할인율), 사용방법, 사용기한 및 제한에 대한 사항은 할인쿠폰 또는 서비스화면에 표시됩니다. 할인쿠폰의 종류 및 내용과 발급여부에 관하여는 회사의 각 사이트에 대한 정책에 따라 달라질 수 있습니다.</p>
<p>2. 할인쿠폰은 현금으로 출금될 수 없으며, 할인쿠폰에 표시된 유효기간이 만료되거나 이용계약이 종료되면 소멸합니다.</p>
<p>3. 할인쿠폰은 회사에서 별도로 명시한 경우를 제외하고는 타인에게 양도할 수 없으며, 부정한 목적이나 용도로 사용할 수 없습니다. 이를 위반한 경우 회사는 할인쿠폰을 소멸시키거나 회원자격을 정지할 수 있습니다.</p>
<p>4. 회원이 부정한 방법으로 펫앤유 포인트, 할인쿠폰을 획득한 사실이 확인될 경우 회사는 회원의 포인트, 할인쿠폰 회수, ID 삭제 및 형사고발 등 기타 조치를 취할 수 있습니다.</p>
<p><br />
제 16 조 (지역할인서비스)</p>
<p>1. 지역할인서비스란 회원이 특정지역에서 특정서비스를 이용할 수 있는 상품을 말합니다.</p>
<p>2. 회사는 회원이 위 서비스를 이용할 수 있도록 지역할인서비스 제공업체가 발행한 증거증권을 회원에게 판매합니다.</p>
<p>3. 회원은 서비스제공업체가 지정한 방법으로 본인확인 절차를 거쳐(단, 구매 확인 목적으로 전달되는 이메일, 문자메시지, 기타 영수증으로는 본인확인을 대신할 수 없습니다), 개별조건 상에 명시된 유효기간 내에서만 지역할인서비스를 이용할 수 있으며, 이를 타인에게 양도할 수 없습니다.</p>
<p>4. 회원은 유효기간 이내에 제1항의 서비스를 이용하지 못한 경우, 회사의 정책에 따라 유상의 쿠팡캐시로 환급을 받을 수 있습니다.</p>
<p>5. 회원은 회사 홈페이지에 명시된 내용 및 개별 주의사항(이용조건)을 확인하여야 할 책임이 있으며, 명시된 이용조건에 따라서만 본 서비스를 사용하실 수 있습니다.</p>
<p><br />
제 17 조 (모바일 상품권 등의 이용)</p>
<p>1. 회사는 제15조 및 제16조 등과 구별하여, 상품권을 구매한 회원이 언제든지 타인에게 양도할 수 있고, 소지만 하면 사용에 제한이 없는 전자적 형태의 온라인&middot;모바일 상품권 등(이하 &lsquo;모바일 상품권&rsquo;이라 합니다)을 서비스 제공업체로부터 발행 받아 회원에게 판매할 수 있습니다. 회원은 본 조의 모바일 상품권을 구매하였을 경우, 상품권에서 지정하는 바에 따라 서비스 제공업체 또는 서비스 제공업체가 지정한 다른 업체에서 이를 사용할 수 있습니다.</p>
<p>2. 회원은 회사의 홈페이지에 명시된 내용 및 모바일 상품권에 기재된 주의사항을 확인하여야 할 책임이 있으며, 명시된 이용 조건에 따라 상품권을 사용할 수 있습니다.</p>
<p>3. 본 조에 따라 판매되는 모바일 상품권에 대해서는 본 약관에도 불구하고, 다음 각호의 내용이 우선하는 것으로 합니다.</p>
<p>&nbsp;&nbsp; 가. 회원이 모바일 상품권을 사용할 수 있는 유효기간은 공정거래위원회의 &lsquo;신유형 상품권 표준약관(표준약관 제10073호) 제5조 및 개정될 경우 그 개정약관에 따르며, 회원은 1회(3개월)이상 유효기간 연장을 협력업체에게 요청할 수 있습니다</p>
<p>&nbsp;&nbsp; 나. 회원은 공정거래위원회의 &lsquo;신유형 상품권 표준약관(표준약관 제10073호) 제7조 및 개정될 경우 그 개정 약관에 따라 모바일 상품권을 환불 받거나 일부 잔액을 반환 받을 수 있습니다</p>
<p>&nbsp;&nbsp; 다. 모바일 상품권의 표시사항, 지급보증 또는 피해보상보험계약 등 그 밖의 모바일 상품권에 관한 내용은 공정거래위원회의 &lsquo;신유형 상품권 표준약관(표준약관 제10073호) 및 개정될 경우 그 개정약관의 각 해당 내용에 따르며, 회원은 언제든지 위 표준약관의 내용을 본 약관의 일부로 주장할 수 있습니다</p>
<p><br />
제 18 조 (펫앤유 포인트)</p>
<p>1. 펫앤유 포인트는 회사가 운영하는 사이버 화폐로서 사이트에서 상품 등을 구매할 때 결제 수단으로 사용할 수 있습니다.</p>
<p>2. 펫앤유 포인트는 전자금융거래법령에 따라 그 합계가 최대 200만 원을 초과하여 충전 및 적립되지 아니하고, 전자금융거래법 등 관련 법령에 따라 그 보유한도가 달라질 수 있습니다.</p>
<p>3. 유상으로 발행된 포인트의 유효 기간은 그 충전일 혹은 지급일로부터 5년입니다.</p>
<p>4. 무상으로 제공되는 포인트의 유효기간은 그 적립일로부터 12개월입니다. 단, 무상의 포인트를 사용하여 제품 등을 구매하였다가 구매취소로 인하여 재 지급 되는 무상의 포인트 유효기간은 재 지급 시점을 기준으로 12개월이고, 기타 마케팅 및 프로모션을 통하여 지급되는 무상의 포인트 유효기간은 각각 별도로 설정될 수 있습니다.</p>
<p>5. 무상의 포인트 유효기간은 월별로 관리되고 지급된 월로부터 12개월이 지난 후 해당 월의 말일에 자동적으로 소멸됩니다. 회사는 이벤트 등을 통해 무상으로 적립된 포인트의 적립 사유가 취소되는 경우에는 이를 환수할 수 있습니다.</p>
<p>6. 회원은 무상의 포인트를 그 사용 기간 이내에 사용하여야 하고, 유효 기간 이내에 사용하지 않을 경우 소멸됩니다.</p>
<p>7. 회원은 보유 중인 포인트의 환급을 회사에 요구할 수 있으나, 환급의 대상이 되는 포인트는 회원이 유상으로 충전하여 보유하고 있는 것에 한정되며, 무상으로 제공받은 것은 포함되지 않습니다.</p>
<p>&nbsp;</p>
<p>제2장 전자상거래 서비스</p>
<p><br />
제1절 리테일 서비스</p>
<p><br />
제 19 조 (구매신청)</p>
<p>1. 회원은 사이트상에서 다음 또는 이와 유사한 방법에 의하여 구매를 신청하며, 회사는 회원이 구매신청을 함에 있어서 다음의 각 내용을 알기 쉽게 제공하여야 합니다.</p>
<p>&nbsp;&nbsp; 가. 상품 등의 검색 및 선택</p>
<p>&nbsp;&nbsp; 나. 받는 사람의 성명, 주소, 전화번호, 전자우편주소(또는 이동전화번호) 등의 입력</p>
<p>&nbsp;&nbsp; 다. 약관내용, 청약철회권이 제한되는 서비스, 배송료, 설치비 등의 비용부담과 관련한 내용에 대한 확인</p>
<p>&nbsp;&nbsp; 라. 이 약관에 동의하고 위 다호의 사항을 확인하거나 거부하는 표시(예. 마우스 클릭)</p>
<p>&nbsp;&nbsp; 마. 상품 등의 구매신청 및 이에 관한 확인 또는 회사의 확인에 대한 동의</p>
<p>&nbsp;&nbsp; 바. 결제방법의 선택</p>
<p>2. 회사가 제3자에게 구매자 개인정보를 제공&bull;위탁할 필요가 있는 경우 실제 구매신청시 구매자의 동의를 받아야 하며, 회원가입시 미리 포괄적으로 동의를 받지 않습니다. 이때 회사는 제공되는 개인정보 항목, 제공받는 자, 제공받는 자의 개인정보 이용목적 및 보유&bull;이용기간 등을 구매자에게 명시하여야 합니다. 다만, 『정보통신망이용촉진 및 정보보호 등에 관한 법률』 제25조 제1항에 의한 개인정보 취급위탁의 경우 동 관련 법령에 달리 정함이 있는 경우에는 그에 따릅니다.</p>
<p><br />
제 20 조 (계약의 성립)</p>
<p>1. 회사는 제19조와 같은 구매신청에 대하여 다음 각 호에 해당하면 승낙하지 않을 수 있습니다. 다만, 미성년자와 계약을 체결하는 경우에는 법정대리인의 동의를 얻지 못하면 미성년자 본인 또는 법정대리인이 계약을 취소할 수 있다는 내용을 고지하여야 합니다.</p>
<p>&nbsp;&nbsp; 가. 신청내용에 허위, 기재누락, 오기가 있는 경우</p>
<p>&nbsp;&nbsp; 나. 미성년자가 담배, 주류 등 청소년보호법에서 금지하는 재화 등을 구매하는 경우</p>
<p>&nbsp;&nbsp; 다. 기타 구매신청에 승낙하는 것이 회사의 기술상 현저히 지장이 있다고 판단하는 경우</p>
<p>&nbsp;&nbsp; 라. 구매신청 고객이 제7조에 따른 회원 자격이 제한, 정지 또는 상실된 회원으로 확인되었을 경우</p>
<p>&nbsp;&nbsp; 마. 구매신청 고객이 재판매의 목적으로 상품 등을 중복 구매하는 등 사이트의 거래질서를 방해한 경우</p>
<p>2. 회사의 승낙이 제21조 제1항의 수신확인통지형태로 회원에게 도달한 시점에 계약이 성립한 것으로 봅니다.</p>
<p>3. 회사의 승낙의 의사표시에는 회원의 구매신청에 대한 확인 및 판매가능여부, 구매신청의 정정, 취소 등에 관한 정보 등을 포함하여야 합니다.</p>
<p>4. 계약이 성립한 후 회사가 제1항 각 호의 사유를 발견한 경우 회사는 즉시 계약을 취소할 수 있으며, 계약 취소시 고객이 결제한 상품 대금은 즉시 환불처리 됩니다.</p>
<p><br />
제 21 조 (수신확인통지&bull;구매신청 변경 및 취소)</p>
<p>1. 회사는 회원의 구매신청이 있는 경우 회원에게 수신확인통지를 합니다.</p>
<p>2. 수신확인통지를 받은 회원은 의사표시의 불일치 등이 있는 경우에는 수신확인통지를 받은 후 즉시 구매신청 변경 및 취소를 요청할 수 있고, 회사는 배송 전에 회원의 요청이 있는 경우에는 지체 없이 그 요청에 따라 처리하여야 합니다. 다만, 이미 대금을 지불한 경우에는 제24조의 청약철회 등에 관한 규정에 따릅니다.</p>
<p><br />
제 22 조 (상품 등의 공급)</p>
<p>1. 회사는 회원과 상품 등의 공급시기에 관하여 별도의 약정이 없는 이상, 회원이 청약을 한 날로부터 7일 이내에 상품 등을 배송할 수 있도록 주문제작, 포장 등 기타의 필요한 조치를 취합니다. 다만, 회사가 이미 상품 등의 대금의 전부 또는 일부를 받은 경우에는 대금의 전부 또는 일부를 받은 날부터 3영업일 이내에 조치를 취합니다. 이때 회사는 회원이 상품 등의 공급절차 및 진행사항을 확인할 수 있도록 적절한 조치를 합니다.</p>
<p>2. 회사는 회원이 구매한 상품 등에 대해 배송수단, 수단별 배송비용, 부담자, 수단별 배송예상기간 등을 명시합니다.</p>
<p>3. 회사와 고객간에 상품의 인도시기 및 쿠폰의 제공시기에 관하여 별도의 약정이 있는 경우에는 이 약관에 우선합니다.</p>
<p><br />
제 23 조 (환급)</p>
<p>회사는 회원이 구매 신청한 상품 등이 품절 등의 사유로 인도 또는 제공할 수 없을 때에는 지체 없이 그 사유를 회원에게 통지하고, 사전에 상품 등의 대금을 받은 경우에는 대금을 받은 날로부터 3영업일 이내에 환급하거나 환급에 필요한 조치를 취합니다.</p>
<p><br />
제 24 조 (청약철회 등)</p>
<p>1. 회사의 상품 등의 구매취소 및 환불 규정은 『전자상거래 등에서의 소비자보호에 관한 법률』 등 관련 법령을 준수합니다.</p>
<p>2. 회사는 회원이 구매 신청한 쿠폰 판매수량이 해당 서비스가 정한 개별 조건 상의 목표수량을 달성하지 못해 공동구매 자체가 성사되지 않는 경우에는, 그 사유를 회원에게 통지하고, 사유발생일 다음날 오전 0시부터 3영업일 이내에 계약해지 및 환급절차를 취합니다. 단, 회원이 구매한 상품이 이미 주문 접수된 경우에는 개별조건상의 최소 판매수량에 미달하더라도 취소 없이 상품을 배송 처리합니다.</p>
<p>3. 회사와 상품 등의 구매에 관한 계약을 체결한 회원은 『전자상거래 등에서의 소비자보호에 관한 법률』 제12조 제2항에 따른 계약내용에 관한 서면(구매확인의 전자우편 또는 SMS 통지 등)을 받은 날(그 서면을 받은 때보다 상품 등의 공급이 늦게 이루어진 경우에는 상품 등을 공급받거나 상품 등의 공급이 시작된 날을 말합니다)부터 7일 이내에는 청약을 철회할 수 있습니다. 다만, 청약철회에 관하여 『전자상거래 등에서의 소비자보호에 관한 법률』에 달리 정함이 있는 경우에는 동 법 규정에 따릅니다.</p>
<p>4. 회원은 상품 등을 배송 받은 경우 다음 각 호의 1에 해당하는 경우에는 반품 및 교환을 할 수 없습니다.</p>
<p>&nbsp;&nbsp; 가. 회원에게 책임 있는 사유로 상품 등이 멸실 또는 훼손된 경우(다만, 상품 등의 내용을 확인하기 위하여 포장 등을 훼손한 경우는 제외함)</p>
<p>&nbsp;&nbsp; 나. 회원의 사용 또는 일부 소비에 의하여 상품 등의 가치가 현저히 감소한 경우</p>
<p>&nbsp;&nbsp; 다. 시간의 경과에 의하여 재판매가 곤란할 정도로 상품 등의 가치가 현저히 감소한 경우</p>
<p>&nbsp;&nbsp; 라. 같은 성능을 가진 상품 등으로 복제가 가능한 경우 그 원본인 상품 등의 포장을 훼손한 경우</p>
<p>&nbsp;&nbsp; 마. 회사가 상품 등의 청약철회 등의 제한에 관해 사전에 고지한 경우</p>
<p>5. 회원은 제3항 및 제4항의 규정에 불구하고 상품 등의 내용이 표시&#8729;광고 내용과 다르거나 계약내용과 다르게 이행된 때에는 당해 상품 등을 공급받은 날부터 3월 이내, 그 사실을 안 날 또는 알 수 있었던 날부터 30일 이내에 청약철회 등을 할 수 있습니다.</p>
<p>6. 공동구매하는 상품 등의 판매시한을 기준으로 공동구매가 성사된 이상, 추후 청약철회로 인하여 당초 정한 최소 구매인원에 미달되더라도, 이미 성사된 공동구매에는 아무런 영향을 미치지 아니합니다.</p>
<p><br />
제 25 조 (청약철회 등의 효과)</p>
<p>1. 회사는 회원으로부터 쿠폰취소 요청 또는 상품 등을 반환 받은 경우 3영업일 이내에 이미 지급받은 상품 등의 대금을 환급합니다. 이 경우 회사가 회원에게 상품 등의 환급을 지연한 때에는 그 지연기간에 대하여 『전자상거래 등에서의 소비자보호에 관한 법률 시행령』 제21조의2에서 정하는 지연이자율을 곱하여 산정한 지연이자를 지급합니다.</p>
<p>2. 회사는 위 대금을 환급함에 있어서 회원이 신용카드 또는 전자화폐 등의 결제수단으로 상품 등의 대금을 지급한 때에는 지체없이 당해 결제수단을 제공한 사업자로 하여금 상품 등의 대금의 청구를 정지 또는 취소하도록 요청합니다.</p>
<p>3. 회사는 이미 쿠폰 또는 상품 등이 일부 사용 또는 일부 소비된 경우에는 일부 소비에 의하여 회원이 얻은 이익 또는 그 쿠폰 또는 상품 등의 공급에 소요된 비용에 상당하는 금액으로서 아래의 각 호에 해당하는 금액의 지급을 회원에게 청구할 수 있습니다.</p>
<p>&nbsp;&nbsp; 가. 상품 등의 사용으로 인하여 소모성 부품의 재판매가 곤란하거나 재판매가격이 현저히 하락하는 경우에는 당해 소모성 부품의 공급에 소요된 비용</p>
<p>&nbsp;&nbsp; 나. 다수의 동일한 가분물로 구성된 상품 등의 경우에는 회원의 일부 소비로 인하여 소비된 부분의 공급에 소요된 비용</p>
<p>4. 청약철회 등의 경우 공급받은 상품 등의 반환에 필요한 비용은 회원이 부담합니다. 회사는 이용자에게 청약철회 등을 이유로 위약금 또는 손해배상을 청구하지 않습니다. 다만, 상품 등의 내용이 표시&#8729;광고 내용과 다르거나 계약내용과 다르게 이행되어 청약철회 등을 하는 경우 상품 등의 반환에 필요한 비용은 회사가 부담합니다.</p>
<p>5. 회원의 단순변심에 의한 취소일 경우 환불처리에 발생하는 수수료와 기타 제반 비용은 회원이 부담합니다.</p>
<p>6. 기타 이 약관 및 사이트의 이용안내에 규정되지 않은 취소 및 환불에 대한 사항에 대해서는 소비자분쟁해결기준에서 정한 바에 따릅니다.</p>
<p><br />
제 26 조 (상품 등의 취소 및 환불의 특칙)</p>
<p>상품의 반품에 따른 환불은 반품하는 상품이 판매자에게 도착되고, 반품사유 및 반품배송비 부담자가 확인된 이후에 이루어집니다.</p>
<p><br />
제 27 조 (회사의 면책)</p>
<p>1. 회사는 천재지변 또는 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 서비스 제공에 관한 책임이 면제됩니다.</p>
<p>2. 회사 또는 제조사의 사정으로 인하여 상품 등의 수량을 확보하지 못하여 상품 등을 공급하지 못할 수 있으며, 이 경우 회사는 회원에게 상품공급이 어렵다는 점을 3회 이상 고지한 후 환불 및 회사에서 정한 추가보상을 진행합니다.</p>
<p>3. 회사는 회원의 귀책사유로 인한 서비스 이용의 장애에 대하여 책임을 지지 않습니다.</p>
<p>4. 회사는 회원이 서비스를 이용하여 기대하는 수익을 상실한 것에 대하여 책임을 지지 않으며, 그 밖의 서비스를 통하여 얻은 자료로 인한 손해에 관하여 책임을 지지 않습니다.</p>
<p>5. 회사는 회원이 게재한 정보, 자료, 사실의 신뢰도, 정확성 등 내용에 관해서는 책임을 지지 않습니다.</p>
<p>6. 회사는 회원간 또는 회원과 제3자 상호간에 회사의 서비스를 매개로 하여 거래 등을 한 경우에는 책임이 면제됩니다.</p>
<p>7. 회사는 무료로 제공되는 서비스 이용과 관련하여 관련법에 특별한 규정이 없는 한 책임을 지지 않습니다.</p>
<p><br />
제2절 오픈마켓 서비스</p>
<p><br />
제 28 조 (구매자의 서비스 이용)</p>
<p>1. 회사는 통신판매중개자로서 구매자와 판매자 간의 자유로운 상품의 거래를 위한 시스템을 운영 및 관리, 제공할 뿐이므로, 구매자는 상품을 구매하기 전에 반드시 판매자가 사이트 내에 작성한 상품의 상세 내용과 거래의 조건을 정확하게 확인해야 합니다. 구매하려는 상품의 내용과 거래의 조건을 확인하지 않고 구매하여 발생한 모든 손실과 손해는 구매자 본인이 부담합니다.</p>
<p>2. 구매자는 구매의사 없이 판매자의 판매상품에 구매의사를 표시하여서는 아니 되고, 판매자의 상품판매 기회를 방해하거나 다른 구매자의 구매기회를 방해하여서는 아니 됩니다.</p>
<p>3. 회사는 구매자가 제2항을 위반한 경우에는 구매자의 해당 아이디(ID)[해당 아이디(ID)와 동일인 소유로 확인되는 아이디(ID) 포함]대하여 회원자격을 정지하는 등의 조치를 할 수 있습니다.</p>
<p>4. 구매자는 이 약관 및 회사가 서비스 화면에서 공지하는 내용을 준수하여야 하고, 이 약관 및 공지 내용을 위반하거나 이행하지 않아서 발생하는 모든 손실과 손해에 대하여 책임을 집니다.</p>
<p>5. 구매자는 구매한 상품에 청약철회의 원인이 발생하면 수령한 상품을 임의로 사용하거나 훼손되도록 방치해서는 아니 되고, 청약철회 상품의 임의사용이나 상품보관의 미흡으로 상품이 훼손되었을 때에는 그에 합당한 비용을 부담하여야 합니다.</p>
<p>6. 구매자는 판매자와 상품매매 절차에서 분쟁이 발생하면 분쟁의 해결을 위하여 성실히 임해야 하며, 분쟁해결의 불성실로 판매자와 회사에 손실과 손해가 발생하면 그에 대한 모든 책임을 부담하여야 합니다.</p>
<p>7. 구매자는 상품을 구매할 경우에는 본인 명의의 결제수단을 사용하여야 하고, 타인의 결제수단을 임의로 사용하여서는 아니 되며, 타인의 결제수단을 임의로 사용하여 회사, 판매자 및 해당 결제수단 소유자에게 발생하는 손실 또는 손해 등에 대한 모든 책임을 부담합니다.</p>
<p>8. 구매자는 매매대금의 결제와 관련하여 구매자가 입력한 정보 및 그 정보와 관련하여 발생하는 제반 문제에 대한 모든 책임을 부담합니다.</p>
<p>9. 회사는 구매자가 상품을 주문한 후 5영업일(토요일과 공휴일 제외) 이내에 매매대금을 결제하지 아니하는 경우에는 해당 주문을 취소한 것으로 간주하여 이를 자동으로 취소할 수 있습니다.</p>
<p>10. 회사는 구매자의 매매대금 결제 시 해당 결제수단에 대하여 정당한 사용권한이 있는지 확인할 수 있고, 이에 대한 확인이 완료될 때까지 해당 거래의 진행을 중지하거나 해당 거래를 취소할 수 있습니다.</p>
<p>11. 회사는 구매자에게 서비스가 안전하게 제공될 수 있도록 각종 설비와 자료를 관리하고, 서비스가 제공 목적에 맞게 이용되고 있는지 확인합니다. 이 경우 구매자에게 이용 목적에 위반되는 부분이 있는 것으로 확인되면 사유의 소명을 요청할 수 있고, 주문취소 등 필요한 조치를 할 수 있습니다.</p>
<p>12. 구매자는 회사가 구매자의 서비스 이용 편의를 높이기 위하여 판매자 등으로부터 상품 관련 정보를 제공받아 게재하거나 제3자가 제공하는 방식으로 사이트를 통하여 참조용 상품정보나 관련 콘텐츠를 제공하는 경우에도 상품 구매와 관련하여 자신의 판단과 책임으로 결정하여야 합니다. 이 경우 회사는 어떠한 경우에도 구매자의 구매결정에 대하여 책임을 부담하지 아니 합니다.</p>
<p>13. 미성년자가 사이트를 통하여 상품을 구매하는 경우에 법정대리인이 해당 계약에 대하여 동의하지 아니하면, 미성년자 본인 또는 법정대리인은 그 계약을 취소할 수 있습니다.</p>
<p><br />
제 29 조 (결제대금예치서비스 이용)</p>
<p>1. &ldquo;결제대금예치서비스&rdquo;라 함은 매매계약이 체결되고 구매자가 대금을 결제하는 경우에, 구매자의 결제대금 보호를 위하여 회사가 일정 기간 동안 결제대금을 예치하는 서비스를 말합니다.</p>
<p>2. 회사는 구매자와 판매자 간에 이루어지는 상품매매의 안전성과 신뢰성을 높이고, 상품을 인수하기 전에 대금을 결제해야 하는 구매자를 보호하기 위하여 결제대금예치서비스를 제공합니다.</p>
<p>3. 회사는 결제대금예치서비스의 제공과 관련하여 판매자 또는 구매자를 대리하는 것이 아닌 것은 물론 상품의 매매와 관련하여 판매자 또는 구매자의 의무를 대행하는 것도 아닙니다.</p>
<p>4. 구매자는 결제대금예치서비스를 통하여 구매대금을 결제하는 과정에서 발생하는 송금수수료 등을 부담하여야 합니다.</p>
<p>5. 구매자는 회사가 결제대금예치서비스를 제공하는 과정에서 발생하는 이자 등에 대하여 회사에게 그 반환을 청구할 수 없습니다.</p>
<p>6. 구매자는 결제대금예치서비스를 이용한 경우에는 해당 상품 배송이 완료되었을 때 회사에 대하여 구매확정, 교환 또는 반품의 의사표시를 하여야 합니다.</p>
<p>7. 회사는 배송완료가 되었음에도 불구하고 구매확정기간 내에 구매자가 교환 또는 반품의 의사표시를 하지 아니하는 경우에는 구매자에게 구매확정의 의사가 있다고 간주합니다.</p>
<p>8. 결제대금예치서비스는 제6항에 따른 의사표시가 있거나 제7항에 따른 구매확정의 의사가 있는 것으로 간주되는 상황이 발생한 경우에 종료됩니다.</p>
<p>9. 구매자는 결제대금예치서비스가 종료된 이후에 해당 구매 건에 대하여 청약철회, 취소, 해제, 무효 등의 사유가 발생한 경우에는 판매자와 직접 청약철회, 취소, 해제 및 환불 등에 관한 절차를 진행해야 합니다.</p>
<p><br />
제 30 조 (배송 및 거래완료)</p>
<p>1. 회사는 배송과 관련하여 판매자, 구매자, 배송업체 등 관련 당사자 사이에 분쟁 등이 발생하는 경우에는 이에 관여하지 않으며 어떠한 책임도 부담하지 아니합니다. 이 경우 해당 분쟁 등은 관련 당사자가 직접 해결하여야 합니다.</p>
<p>2. 회사는 구매확정이 이루어진 이후에 상품의 하자 등 결제대금의 환불사유가 발생하는 경우에는 이에 개입하지 아니 합니다.</p>
<p>3. 구매확정 이후에 발생하는 판매자와 구매자 간 모든 분쟁은 거래 당사자인 판매자와 구매자가 해결하여야 합니다.</p>
<p>4. 회사는 구매확정 기간 내에 구매확정, 교환 또는 반품에 대한 의사표시가 없는 경우에는 해당 거래에 대하여 구매자의 구매확정 의사표시가 있는 것으로 간주하여 자동구매확정으로 처리할 수 있습니다.</p>
<p>5. 회사는 구매확정의 의사표시가 있거나 자동구매확정 처리가 완료되는 경우에는 예치 중인 결제대금 중 판매자에게 정산하여야 할 금액을 판매자와 사이에 정해진 방법에 따라 판매자에게 지급할 수 있습니다.</p>
<p>6. 구매자는 구매확정 등의 의사표시를 하였거나 자동구매확정이 이루어진 경우에는 회사에 대하여 상품 미수령, 반품 등의 사유로 이의를 제기할 수 없습니다. 이 경우 상품구매대금의 환불, 상품의 교환 등 모든 문제는 판매자와 직접 해결해야 합니다.</p>
<p><br />
제 31 조 (청약철회 등)</p>
<p>1. 구매자는 『전자상거래 등에서의 소비자보호에 관한 법률』 등 관련 법령에 따라 상품을 배송받은 날로부터 7일 이내에 청약철회 등을 할 수 있습니다. 다만, 청약철회에 관하여 『전자상거래 등에서의 소비자보호에 관한 법률』에 달리 정함이 있는 경우에는 동 법 규정에 따릅니다.</p>
<p>2. 구매자는 제1항에도 불구하고 다음 각 호의 어느 하나에 해당하는 경우에는 반품이나 교환을 요청할 수 없습니다.</p>
<p>&nbsp;&nbsp; 가. 구매자의 책임 있는 사유로 상품이 멸실 또는 훼손된 경우</p>
<p>&nbsp;&nbsp; 나. 구매자의 사용 또는 일부 소비로 인하여 상품의 가치가 현저히 감소한 경우</p>
<p>&nbsp;&nbsp; 다. 시간의 경과에 의하여 재판매가 곤란할 정도로 상품의 가치가 현저히 감소한 경우</p>
<p>&nbsp;&nbsp; 라. 복제 가능한 상품의 포장을 훼손한 경우</p>
<p>&nbsp;&nbsp; 마. 주문에 따라 개별적으로 생산되는 상품 등 판매자에게 회복할 수 없는 중대한 피해가 예상되는 경우로서 사전에 해당 거래에 대하여 별도로 그 사실을 고지하고 구매자의 서면(전자문서를 포함)에 의한 동의를 받은 경우</p>
<p>&nbsp;&nbsp; 바. 그 밖에 법령에 따른 반품 제한 사유에 해당되는 경우</p>
<p>3. 구매자는 제1항 및 제2항에도 불구하고 상품의 내용이 표시&#8729;광고 내용과 다르거나 계약내용과 다르게 이행된 경우에는 해당 상품을 공급받은 날부터 3월 이내, 그 사실을 안 날 또는 알 수 있었던 날부터 30일 이내에 청약철회 등을 할 수 있습니다.</p>
<p>4. 회사는 구매자로부터 교환 또는 반품의 의사표시를 받은 경우에는 즉시 그 사실을 판매자에게 통보합니다.</p>
<p>5. 구매자는 제1항 또는 제3항에 따라 교환신청을 하더라도 판매자에게 교환할 상품의 재고가 없는 경우에는 해당 상품의 교환을 받을 수 없습니다. 이 경우 해당 교환신청은 반품으로 처리됩니다.</p>
<p>6. 반품이나 교환에 필요한 배송비 및 그 밖에 필요 비용은 귀책사유가 있는 당사자가 부담합니다. 이 경우 상품하자 또는 오배송의 경우에는 판매자가 그 비용을 부담하나 구매자의 단순 변심의 경우에는 구매자가 그 비용을 부담합니다.</p>
<p>7. 판매자는 구매자가 배송상의 문제로 손해를 입은 경우에는 그에 대한 책임을 부담합니다.</p>
<p>8. 회사는 판매자가 구매자의 결제완료에 대한 통지를 받은 이후에도 상당 기간 배송 절차 등을 이행하지 아니하여 구매자로부터 주문취소 요청를 받거나 개별적인 정책으로 미리 정한 자동환불처리 사안에 해당하는 경우에는 해당 거래를 취소하고 결제대금예치서비스 이용 중인 결제대금을 구매자에게 환불할 수 있습니다.</p>
<p>9. 회사는 판매자가 구매자의 교환 또는 반품신청에 대하여 적극적으로 임하지 않거나 지연하는 경우에는 구매자에게 그 사유를 파악하여 정당한 사유가 있는 경우에는 해당 거래를 취소하는 한편 구매자에게 예치 중인 결제대금을 환불할 수 있습니다. 다만 구매자의 교환 또는 반품신청이 정당하지 않다고 판단되는 경우에는 그러하지 아니합니다.</p>
<p>10. 회사는 구매자가 교환 또는 반품신청을 한 날로부터 14일이 지날 때까지 이미 수령한 상품을 판매자에게 반환하지 아니 하거나 전화, 이메일 등으로 연락되지 아니하는 경우에는 해당 구매자의 교환 또는 반품신청은 효력을 상실합니다.</p>
<p>11. 회사는 거래가 취소되어 결제대금을 환불하는 경우에는 그 취소된 날로부터 2영업일 이내에 환불에 필요한 조치를 합니다. 이 경우 신용카드로 결제가 이루어진 경우에는 해당 신용카드 결제취소를 통해서만 가능하고, 어떠한 경우에도 현금으로 환불되지는 아니합니다.</p>
<p>12. 구매자가 상품준비 중 상태에서 해당 주문을 취소하는 경우에 해당 주문 및 결제는 즉시 취소처리되는 것이 원칙이나, 이미 상품이 발송된 경우에는 취소가 아닌 반품절차에 따라야 하고, 발송된 상품의 왕복배송비는 구매자가 부담하여야 합니다.</p>
<p><br />
제 32 조 (금지행위)</p>
<p>1. 판매자와 구매자가 회사가 제공하는 서비스를 이용하지 아니하고 직접 거래하는 행위(직거래)는 거래의 안전을 위하여 금지됩니다. 이 경우 직거래를 통하여 발생한 제반 문제에 대한 책임은 거래 당사자에게 있으며 회사는 이에 대해 어떠한 책임도 부담하지 아니 합니다.</p>
<p>2. 회사가 제공하는 서비스 이용방법을 따르지 아니하고 비정상적인 방법으로 서비스를 이용하거나 시스템에 접근하는 행위는 금지됩니다.</p>
<p>3. 타인의 명의, 카드정보, 계좌정보 등을 무단으로 사용하여 회사가 제공하는 서비스를 이용하는 행위는 금지됩니다.</p>
<p>4. 물품판매 또는 용역제공을 가장하여 자금을 융통하는 것과 같이 여신전문금융업법 등 법령에 따라 금지된 방법으로 비정상적인 결제 행위는 금지됩니다.</p>
<p>5. 실제 상품의 배송이 없는 등 상품의 실질적인 구매의사가 없는 구매행위와 회사가 제공하는 할인율 등을 이용하여 비정상적인 거래를 하는 것은 금지됩니다.</p>
<p>6. 회사는 회원의 부당한 이용행위 또는 시스템 부정행위 등이 있는 경우에는 해당 회원에게 부가적으로 제공한 혜택의 일부 또는 전부의 회수, 서비스의 이용 제한, 이용계약 해지 등의 조치를 할 수 있습니다.</p>
<p><br />
제 33 조 (분쟁조정)</p>
<p>1. 회사는 회원 상호 간 또는 회원과 제3자 간의 분쟁이 발생하는 경우에 이를 합리적이고 원활히 조정하기 위한 분쟁조정센터를 운영합니다.</p>
<p>2. 회원은 분쟁조정센터의 조정에 신의칙에 입각하여 성실히 응하여야 합니다.</p>
<p><br />
제 34 조 (회사의 면책)</p>
<p>1. 회사는 통신판매중개자로서 구매자와 판매자 간의 자유로운 상품의 거래를 위한 시스템을 운영 및 관리, 제공할 뿐이므로 구매자 또는 판매자를 대리하지 않으며, 회원 사이에 성립된 거래와 관련된 책임과 회원이 제공한 정보에 대한 책임은 해당 회원이 직접 부담하여야 합니다.</p>
<p>2. 회사는 판매자가 등록한 상품의 내용과 거래조건에 대해서 어떠한 보증이나 대리를 하지 않습니다. 따라서 구매자는 스스로 책임지고 상품을 구매해야 합니다.</p>
<p>3. 회사는 회원 간의 모든 행위(거래행위 포함)와 관련하여 판매의사 또는 구매의사의 존부 및 진정성, 등록 상품의 품질, 완전성, 안정성, 적법성 및 타인의 권리에 대한 비침해성, 구매자 또는 판매자가 입력하는 정보 및 그 정보를 통하여 링크된 URL에 게재된 자료의 진실성 또는 적법성 등 일체에 대하여 보증하지 아니하며, 이와 관련된 일체의 위험과 책임은 해당 당사자가 부담합니다.</p>
<p>4. 회사는 이용자의 귀책사유로 서비스 이용에 장애가 발생하는 것에 대하여 책임을 부담하지 아니합니다.</p>
<p>5. 회사는 이용자가 자신의 개인정보를 타인에게 유출하거나 제공하여 발생하는 피해에 대하여 책임을 부담하지 아니합니다.</p>
<p>6. 회사는 천재지변, 컴퓨터 등 정보통신설비의 보수, 점검, 교체, 고장 및 통신두절 등의 사유가 발생한 경우에는 서비스 제공을 일시적으로 중단할 수 있으며, 이와 관련하여 고의 또는 중대한 과실이 없는 한 어떠한 책임도 부담하지 아니합니다.</p>
<p>&nbsp;</p>
<p>제3장 기타 사항</p>
<p><br />
제 35 조 (연결몰과 피연결몰의 관계)</p>
<p>1. 상위 사이트와 하위 사이트가 하이퍼링크(예 : 하이퍼링크의 대상에는 문자, 그림 및 동화상 등이 포함됨)방식 등으로 연결된 경우, 전자를 연결몰(웹사이트)이라고 하고, 후자를 피연결몰(웹사이트)이라고 합니다.</p>
<p>2. 연결몰은 피연결몰이 독자적으로 제공하는 상품 등에 의하여 이용자와 행하는 거래에 대해서 보증책임을 지지 않는다는 뜻을 연결몰의 초기화면 또는 연결되는 시점의 팝업화면으로 명시한 경우에는 그 거래에 대한 보증책임을 지지 않습니다.</p>
<p><br />
제 36 조 (저작권의 귀속 및 이용제한)</p>
<p>1. 회사가 작성한 저작물에 대한 저작권 및 기타 지식재산권은 회사에 귀속합니다.</p>
<p>2. 회사는 서비스와 관련하여 회원에게 회사가 정한 이용조건에 따라 계정, ID, 콘텐츠 등을 이용할 수 있는 이용권만을 부여하며, 회원은 서비스를 이용함으로써 얻은 정보 중 회사에게 지식재산권이 귀속된 정보를 회사의 사전 승낙 없이 복제, 송신, 출판, 배포, 방송 기타 방법에 의하여 영리 목적으로 이용하거나 제3자에게 이용하게 하여서는 안됩니다.</p>
<p>3. 회원이 부정한 방법으로 포인트, 할인쿠폰을 획득한 사실이 확인될 경우 회사는 회원의 포인트, 할인쿠폰 회수, ID 삭제 및 형사고발 등 기타 조치를 취할 수 있습니다.</p>
<p><br />
제 37 조 (회원의 게시물)</p>
<p>1. 회원이 작성한 게시물에 대한 모든 권리 및 책임은 이를 게시한 회원에게 있으며, 회사는 회원이 게시하거나 등록하는 서비스의 내용물이 다음 각 항에 해당한다고 판단되는 경우에 사전통지 없이 삭제할 수 있고, 이에 대하여 회사는 어떠한 책임도 지지 않습니다.</p>
<p>&nbsp;&nbsp; 가. 다른 회원 또는 제3자를 비방하거나 중상모략으로 명예를 손상시키는 내용인 경우</p>
<p>&nbsp;&nbsp; 나. 공서양속에 위반되는 내용일 경우</p>
<p>&nbsp;&nbsp; 다. 범죄적 행위에 결부된다고 인정되는 경우</p>
<p>&nbsp;&nbsp; 라. 회사의 저작권, 제3자의 저작권 등 기타 권리를 침해하는 내용인 경우</p>
<p>&nbsp;&nbsp; 마. 회원이 사이트와 게시판에 음란물을 게재하거나 음란사이트를 링크하는 경우</p>
<p>&nbsp;&nbsp; 바. 회사로부터 사전 승인 받지 아니한 상업광고, 판촉내용을 게시하는 경우</p>
<p>&nbsp;&nbsp; 사. 해당 상품과 관련 없는 내용인 경우</p>
<p>&nbsp;&nbsp; 아. 정당한 사유 없이 당사의 영업을 방해하는 내용을 기재하는 경우</p>
<p>&nbsp;&nbsp; 자. 기타 관련법령에 위반된다고 판단되는 경우</p>
<p>2. 회원 탈퇴 이후 회원이 작성하였던 게시물 및 댓글 등은 삭제되지 않으며, 회원 탈퇴로 인하여 회원 정보가 삭제되어 작성자 본인을 확인할 수 없어 게시물 편집 및 삭제가 원천적으로 불가합니다. 회원이 작성한 게시물의 삭제를 원할 경우에는 회원 탈퇴 이전에 게시물을 모두 삭제하여야 합니다.</p>
<p><br />
제 38 조 (게시물의 관리)</p>
<p>1. 회원의 게시물이 『정보통신망 이용촉진 및 정보보호 등에 관한 법률』, 『개인정보보호법』 및 『저작권법』등 관련법령에 위반되는 내용을 포함하는 경우, 권리자는 관련법령이 정한 절차에 따라 해당 게시물의 게시중단 및 삭제 등을 요청할 수 있으며, 회사는 관련법령에 따라 조치를 취하여야 합니다.</p>
<p>2. 회사는 전항에 따른 권리자의 요청이 없는 경우라도 권리침해가 인정될 만한 사유가 있거나 기타 회사 정책 및 관련법에 위반되는 경우에는 관련법에 따라 해당 게시물에 대해 임시조치 등을 취할 수 있습니다.</p>
<p>3. 이 조에 따른 세부절차는 『정보통신망 이용촉진 및 정보보호 등에 관한 법률』, 『개인정보보호법』 및 『저작권법』이 규정한 범위 내에서 회사가 정한 게시중단요청서비스에 따릅니다.</p>
<p><br />
제 39 조 (분쟁해결)</p>
<p>1. 회사는 회원이 제기하는 정당한 의견이나 불만을 반영하고 그 피해를 보상처리하기 위해서 피해보상처리기구를 설치&bull;운영합니다.</p>
<p>2. 회사는 회원으로부터 제출되는 불만사항 및 의견은 우선적으로 그 사항을 처리합니다. 다만, 신속한 처리가 곤란한 경우에는 회원에게 그 사유와 처리일정을 즉시 통보합니다.</p>
<p>3. 만약 본 약관의 환불 등 일부 규정이 대한민국의 강행법규와 상충되는 경우에는 그 강행법규에 따르기로 하고, 이로 인해 본 약관 중 일부 조항의 효력이 정지되는 경우에도 다른 조항의 효력에는 영향을 미치지 아니합니다.</p>
<p><br />
제 40 조 (재판권 및 준거법)</p>
<p>1. 이 약관의 해석 및 회사와 회원간의 분쟁에 대하여는 대한민국의 법률을 적용합니다.</p>
<p>2. 이 약관 및 서비스 이용과 관련하여 회사와 회원 사이에 분쟁이 발생하여 소송이 제기되는 경우에는 『민사소송법』에 따라 관할법원을 정합니다.</p>
<p>&nbsp;</p>
<p>부칙</p>
<p>1. 이 약관은 2013년 9월 26일부터 시행합니다.</p>
<p><span style="font-size: 13px"><br />
</span></p>
</span></span></td>
			</tr>
			</table>
			</div>
		</td>
	</tr>

	<tr>
		<td align="right">
			<table cellspacing="0" style="margin-top:5px;">
			<tr>
				<td><input type="checkbox" name="chk_ok" id="chk_ok" TabIndex="1"></td>
				<td style="padding-left:5px; font:bold 12px '돋움'; color:#5c5c5c; "><label for="chk_ok" style="cursor:pointer;">사이트이용약관에 동의합니다.</label></td>
			</tr>
			</table>
		</td>
	</tr>
</table>
</div>
<!-- 회원이용약관 [ end ] -->


<!-- 개인정보보호정책 [ start ] -->
<a NAME="security"></a>

<div style="width:1000px; margin:0 auto;">
<table cellspacing="0" style="width:100%; margin:35px 0 20px 0">
	<tr>
		<td>
			<table cellspacing="0" >
			<tr>
				<td style="padding-left:5px; font:bold 14px '돋움'; color:#343535; ">개인정보 보호정책</td>
			</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td >
			<div style="overflow-y:scroll; width:998px; height:300px;  margin:5px 0 3px 0; border-width:1px; border-style:solid; border-color:#dbdbdb; background-color:#white;">
			<table cellspacing="0" >
			<tr>
				<td style="padding:15px 15px 15px 15px; font:12px '돋움'; line-height:19px; color:#5c5c5c;"><p><span style="font-size: 12px; font-family: 돋움">(주)스마일아이템(이하 &quot;회사&quot;라 함)는 회사가 운영하는 펫앤유(이하 &quot;사이트&quot;라 함)를 이용하는 이용자들의 개인정보보호를 매우 중요시하며, 이용자가 회사의 웹서비스(이하 &quot;서비스&quot;라 함)를 이용함과 동시에 온라인상에서 회사에 제공한 개인정보가 보호 받을 수 있도록 최선을 다하고 있습니다. 이에 회사는 통신비밀보호법, 전기통신사업법, 정보통신망이용촉진등에관한법률 등 정보통신서비스제공자가 준수하여야 할 관련 법규상의 개인정보보호 규정 및 정보통신부가 제정한 개인정보보호지침을 준수하고 있습니다. 회사는 개인정보 보호정책을 통하여 이용자들이 제공하는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다.<br />
</span></p>
<p><span style="font-family: 돋움"><span style="font-size: 12px">회사는 개인정보 보호정책을 사이트 첫 화면에 공개함으로써 이용자들이 언제나 용이하게 보실 수 있도록 조치하고 있습니다.</span> <span style="font-size: 12px">회사의 개인정보 보호정책은 정부의 법률 및 지침 변경이나 회사의 내부 방침 변경 등으로 인하여 수시로 변경될 수 있고, 이에 따른 개인정보 보호정책의 지속적인 개선을 위하여 필요한 절차를 정하고 있습니다. 그리고 개인정보 보호정책을 개정하는 경우 회사는 그 변경사항에 대하여 즉시 사이트를 통하여 게시하고 버전번호 및 개정일자 등을 부여하여 개정된 사항을 이용자들이 쉽게 알아볼 수 있도록 하고 있습니다. 이용자들께서는 사이트 방문시 수시로 확인하시기 바랍니다.<br />
</span></span><span style="font-family: 맑은 고딕" /></p>
<p><span style="font-size: 12px; font-family: 돋움">회사의 개인정보 보호정책은 다음과 같은 내용을 담고 있습니다.</span></p>
<p><span style="font-size: 12px; font-family: 돋움">가. 개인정보 수집에 대한 동의<br />
나. 개인정보의 수집목적 및 이용목적<br />
다. 개인정보 항목 및 수집방법<br />
라. 개인정보의 보유 및 이용기간<br />
마. 이용자 자신의 개인정보 관리(열람,정정,삭제 등)에 관한 사항<br />
바. 쿠키(cookie)의 운영에 관한 사항<br />
사. 개인정보관련 기술적-관리적 대책</span></p>
<p><span style="font-size: 12px; font-family: 돋움"><br />
<strong>가. 개인정보 수집에 대한 동의<br />
</strong><br />
회사는 이용자들이 회사의 개인정보 보호정책 또는 이용약관의 내용에 대하여 「동의함」버튼 또는 「동의안함」버튼을 클릭할 수 있는 절차를 마련하여, 「동의함」버튼을 클릭하면 개인정보 수집에 대해 동의한 것으로 봅니다.</span></p>
<p><span style="font-size: 12px; font-family: 돋움"><br />
<strong>나. 개인정보의 수집목적 및 이용목적 <br />
<br />
</strong>&quot;개인정보&quot;라 함은 생존하는 개인에 관한 정보로서 당해 정보에 포함되어 있는 성명, 주민등록번호 등의 사항에 의하여 당해 개인을 식별할 수 있는 정보(당해 정보만으로는 특정 개인을 식별할 수 없더라도 다른 정보와 용이하게 결합하여 식별할 수 있는 것을 포함)를 말합니다.</span></p>
<p><span style="font-size: 12px; font-family: 돋움">대부분의 회사 서비스는 별도의 사용자 등록이 없이 언제든지 사용할 수 있습니다. 그러나 회사는 회원서비스를 통하여 이용자들에게 맞춤식 서비스를 비롯한 보다 더 향상된 양질의 서비스를 제공하기 위하여 이용자 개인의 정보를 수집하고 있습니다.</span></p>
<p><span style="font-size: 12px; font-family: 돋움"><br />
<strong>다. 개인정보 항목 및 수집방법 </strong><br />
<br />
회사는 이용자들이 회원서비스를 이용하기 위해 회원으로 가입하실 때 서비스 제공을 위한 필수적인 정보들을 온라인상에서 입력 받고 있습니다. 회원 가입시에 받는 필수적인 정보는 성명, 주민등록번호, 주소, 전화번호 등입니다. 또한 양질의 서비스 제공을 위하여 이용자들이 선택적으로 입력할 수 있는 사항으로서 회사주소, 회사전화번호, 직업, 이메일주소 및 이메일 수신여부 항목을 입력 받고 있습니다.</span></p>
<p><span style="font-size: 12px; font-family: 돋움"><br />
<strong>라. 개인정보의 보유 및 이용기간 <br />
</strong><br />
이용자가 회사의 회원으로서 회사에 제공하는 서비스를 이용하는 동안 회사는 이용자들의 개인정보를 계속적으로 보유하며 서비스 제공 등을 위해 이용합니다. 다만, 아래의 &quot;마. 이용자 자신의 개인정보 관리(열람,정정,삭제 등)에 관한 사항&quot; 에서 설명한 절차와 방법에 따라 회원 본인이 직접 삭제하거나 수정한 정보, 가입해지를 요청한 경우에는 재생할 수 없는 방법에 의하여 디스크에서 완전히 삭제하며 추후 열람이나 이용이 불가능한 상태로 처리됩니다.</span></p>
<p><span style="font-size: 12px; font-family: 돋움"><br />
<strong>마. 이용자 자신의 개인정보 관리(열람,정정,삭제 등)에 관한 사항 <br />
</strong><br />
이용자는 언제든지 회사 홈페이지를 이용하여 회원등록되어 있는 자신의 개인정보를 조회하거나 수정할 수 있으며 회원등록 탈퇴를 요청할 수도 있습니다.</span></p>
<p><span style="font-size: 12px; font-family: 돋움">이용자들의 개인정보 조회 및 수정을 위해서는 사이트의 회원관리 메뉴에서 아이디와 비밀번호를 사용하여 로그인(LOG-IN)하면 되는데, 아이디(ID) 및 주민등록번호, 이름을 제외한 모든 입력사항을 수정할 수 있습니다. 또한, 비밀번호를 잊어버린 경우에는 회원 로그인 메뉴 하단에 있는 &quot;패스워드찾기&quot;를 클릭하여 본인 확인에 필요한 사항을 입력하시면, 본인여부 확인 후 email을 통하여 비밀번호를 알려 드립니다.</span></p>
<p><span style="font-size: 12px; font-family: 돋움">회원등록 탈퇴는 사이트에 있는 나의정보에서 &quot;회원탈퇴&quot;를 클릭하시면, 이용자 본인여부를 확인한 후 처리합니다.</span></p>
<p><span style="font-size: 12px; font-family: 돋움"><br />
<strong>바. 쿠키(cookie)의 운영에 관한 사항 </strong><br />
<br />
이용자들에게 특화된 맞춤서비스를 제공하기 위해서 회사는 이용자들의 정보를 저장하고 수시로 불러오는 '쿠키(cookie)'를 사용합니다. 쿠키는 웹사이트를 운영하는데 이용되는 서버(HTTP)가 이용자의 컴퓨터 브라우저에게 보내는 소량의 정보이며 이용자들의 PC 컴퓨터내의 하드디스크에 저장되기도 합니다.</span></p>
<p><span style="font-size: 12px; font-family: 돋움">이용자들이 회사에 접속한 후 로그인(LOG-IN)하여 마이페이지(My Page) 등의 서비스를 이용하기 위해서는 쿠키를 허용하셔야 합니다. 회사는 이용자들에게 적합하고 보다 유용한 서비스를 제공하기 위해서 쿠키를 이용하여 ID에 대한 정보를 찾아냅니다. 쿠키는 이용자의 컴퓨터는 식별하지만 이용자를 개인적으로 식별하지는 않습니다.</span></p>
<p><span style="font-size: 12px; font-family: 돋움">쿠키를 이용하여 이용자들이 방문한 사이트의 각 서비스와 이용형태, 이용자 규모 등을 파악하여 더욱 더 편리한 서비스를 만들어 제공할 수 있고 이용자에게 최적화된 정보를 제공할 수 있습니다. 이용자들은 쿠키에 대하여 사용여부를 선택할 수 있습니다. 웹브라우저에서 옵션을 설정함으로써 모든 쿠키를 허용할 수도 있고, 쿠키가 저장될 때마다 확인을 거치거나, 모든 쿠키의 저장을 거부할 수도 있습니다. 다만, 쿠키의 저장을 거부할 경우에는 로그인이 필요한 일부 서비스는 이용할 수 없습니다.</span></p>
<p><span style="font-size: 12px; font-family: 돋움"><br />
<strong>사. 개인정보관련 기술적-관리적 대책 </strong><br />
<br />
회사는 이용자들의 개인정보를 취급함에 있어 개인정보가 분실, 도난, 누출, 변조 또는 훼손되지 않도록 안전성 확보를 위하여 다음과 같은 기술적 대책을 강구하고 있습니다.</span></p>
<p><span style="font-size: 12px; font-family: 돋움">이용자들의 개인정보는 비밀번호에 의해 철저히 보호되고 있습니다. 회원 아이디(ID)의 비밀번호는 본인만이 알고 있으며, 개인정보의 확인 및 변경도 비밀번호를 알고 있는 본인에 의해서만 가능합니다. 따라서 이용자 여러분께서는 비밀번호를 누구에게도 알려주시면 안됩니다. 이를 위해 회사에서는 기본적으로 PC에서의 사용을 마치신 후 온라인상에서 로그아웃(LOG-OUT)하시고 웹브라우저를 종료하도록 권장합니다. 특히 다른 사람과 PC를 공유하여 사용하거나 공공장소(학교, 도서관, 인터넷 게임방 등)에서 이용한 경우에는 개인정보가 다른 사람에게 알려지는 것을 막기 위해 위와 같은 절차가 더욱 필요할 것입니다.</span></p>
<p><span style="font-size: 12px; font-family: 돋움">회사는 해킹이나 컴퓨터 바이러스 등에 의해 회원의 개인정보가 유출되거나 훼손되는 것을 막기 위해 최선을 다하고 있습니다. 개인정보의 훼손에 대비해서 자료를 수시로 백업하고 있고, 최신 백신프로그램을 이용하여 이용자들의 개인정보나 자료가 누출되거나 손상되지 않도록 방지하고 있으며, 암호알고리즘 등을 통하여 네트워크상에서 개인정보를 안전하게 전송할 수 있도록 하고 있습니다. 그리고 침입차단시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있으며, 기타 시스템적으로 안정성을 확보하기 위한 가능한 모든 기술적 장치를 갖추려 노력하고 있습니다.</span><br />
&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;</p></td>
			</tr>
			</table>
			</div>
		</td>
	</tr>
	<tr>
		<td align="right">
			<table cellspacing="0" style="margin-top:5px;">
			<tr>
				<td><input type="checkbox" name="chk_ok1" id="chk_ok1" value="on" TabIndex="2"></td>
				<td style="padding-left:5px; font:bold 12px '돋움'; color:#5c5c5c; "><label for="chk_ok1" style="cursor:pointer;" >개인정보 보호정책에 동의합니다.</label></td>
			</tr>
			</table>
		</td>
	</tr>
</table>
</div>
<!-- 개인정보보호정책 [ end ] -->

<div style="width:1000px; margin:0 auto;">
<table cellspacing="0" style="width:100%; margin:35px 0 20px 0">
	<tr>
		<td>
			<table cellspacing="0" >
			<tr>
				
				<td style="padding-left:5px; font:bold 14px '돋움'; color:#343535; ">개인정보 수집 이용 동의</td>
			</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td >
			<div style="overflow-y:scroll; width:998px; height:300px;  margin:5px 0 3px 0; border-width:1px; border-style:solid; border-color:#dbdbdb; background-color:#white;">
			<table cellspacing="0" >
			<tr>
				<td style="padding:15px 15px 15px 15px; font:12px '돋움'; line-height:19px; color:#5c5c5c;">------------------------------------------------------------------------------------------------<br />
>> 회원가입시 개인정보 수집 이용을 고치세요.<br />
------------------------------------------------------------------------------------------------<br />
<br />
<br />
■ 수집하는 개인정보 항목<br />
회사는 회원가입, 상담, 서비스 신청 등등을 위해 아래와 같은 개인정보를 수집하고 있습니다.<br />
<br />
ο 수집항목 : 이름 , 로그인ID , 비밀번호 , 이메일<br />
ο 개인정보 수집방법 : 홈페이지(회원가입)<br />
<br />
<br />
■ 개인정보의 수집 및 이용목적<br />
회사는 수집한 개인정보를 다음의 목적을 위해 활용합니다..<br />
<br />
ο 서비스 제공에 관한 계약 이행<br />
- 콘텐츠 제공<br />
ο 회원 관리<br />
- 회원제 서비스 이용에 따른 본인확인 , 개인 식별 , 불량회원의 부정 이용 방지와 비인가 사용 방지<br />
ο 마케팅 및 광고에 활용<br />
- 이벤트 등 광고성 정보 전달<br />
<br />
<br />
■ 개인정보의 보유 및 이용기간<br />
원칙적으로, 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다.<br />
단, 관계법령의 규정에 의하여 보존할 필요가 있는 경우 회사는 아래와 같이 관계시령에서 정한 일정한 기간 동안 회원정보를 보관합니다.<br />
<br />
보존 항목 : 이름 , 로그인ID , 이메일<br />
보존 근거 : 회원식별<br />
보존 기간 : 회원탈퇴시까지</td>
			</tr>
			</table>
			</div>
		</td>
	</tr>
	<tr>
		<td align="right">
			<table cellspacing="0" style="margin-top:5px;">
			<tr>
				<td><input type="checkbox" name="chk_ok2" id="chk_ok2" value="on" TabIndex="2"></td>
				<td style="padding-left:5px; font:bold 12px '돋움'; color:#5c5c5c; "><label for="chk_ok2" style="cursor:pointer;" >개인정보 수집 이용에 동의합니다.</label></td>
			</tr>
			</table>
		</td>
	</tr>
</table>
</div>

</form>

<%-- onclick="location='${pageContext.request.contextPath}/member/memberForm1'" --%>


<!-- 회원선택 -->

<div style="width:100%; margin:0 auto;">
	<table cellspacing="0" style="width:100%; margin:20px 0 30px 0;" >
	<tr>
		<td align="center"><table align='center' width='100' border='0' cellpadding='0' cellspacing='0'>
<tr>
<td><div  style="background:#1c8dff;"><a href='#join' onclick="location='${pageContext.request.contextPath}/member/memberForm1'"><img src='../resources/image/login.jpg' width='368' height='63' border='0' align='absmiddle' class='png24'></a></div>
</td>
</tr><tr>

</tr><tr>
</tr>
</table></td>
	</tr>
	</table>
</div>


</div>
<!-- 회원선택 -->




		</div>
	</div>
	<!--중앙 끝-->

	<!--카피라이터 시작-->
	<div id="footer">
		<div style="margin:0px auto; width:100%">
			

<table style="width:100%;">
<tr>
	<td>
		<table style="width:100%; height:40px; border-top:1px solid #7f94bb; border-bottom:1px solid #c2cfdd; border-left:none; border-right:none; margin:0px 0 20px 0;" >
		<tr>
			<td align="center">
				<table style="width:950px;margin-top:2px;">
				<tr>
					<td align="center" class="copyright_font_st"><a href="html_file.php?file=company.html&file2=default2.html" style="font-family: '나눔고딕';"><b>회사소개</b></a></td>
					<td align="center" style="font:12px '나눔고딕'; color:#e7e7e7; padding:0 10px;">|</td>
					<td align="center"  class="copyright_font_st"><a href="html_file.php?file=stipulation02.html&file2=default2.html" style="font-family: '나눔고딕';"><b>회원이용약관</b></a></td>
					<td align="center" style="font:12px '나눔고딕'; color:#e7e7e7; padding:0 10px;">|</td>
					<td align="center" class="copyright_font_st"><a href="html_file.php?file=stipulation01.html&file2=default2.html" style="font-family: '나눔고딕';"><b>개인정보취급방침</b></a></td>
					<td align="center" style="font:12px '나눔고딕'; color:#e7e7e7; padding:0 10px;">|</td>
					<td align="center" class="copyright_font_st"><a href="bbs_list.php?tb=board_notice" style="font-family: '나눔고딕';">공지사항</a></td>
					<td align="center" style="font:12px '나눔고딕'; color:#e7e7e7; padding:0 10px;">|</td>
					<td align="center" class="copyright_font_st"><a href="bbs_list.php?tb=board_ad" style="font-family: '나눔고딕';">광고문의</a></td>
					<td align="center" style="font:12px '나눔고딕'; color:#e7e7e7; padding:0 10px;">|</td>
					<td align="center" class="copyright_font_st"><a href="bbs_list.php?tb=board_partnership" style="font-family: '나눔고딕';">파트너십</a></td>
					<td align="center" style="font:12px '나눔고딕'; color:#e7e7e7; padding:0 10px;">|</td>
					<td align="center" class="copyright_font_st"><a href="bbs_list.php?tb=board_member" style="font-family: '나눔고딕';">회원정보관련문의</a></td>
					<!-- <td align="center" style="font:12px '돋움'; color:#e7e7e7; padding:0 10px;">|</td>
					<td align="center" class="copyright_font_st"><a href="#admin_memo" onclick="window.open('happy_message.php?mode=send&receiveid=petnu1&receiveAdmin=y','happy_message','width=700,height=700,toolbar=no,scrollbars=no')">관리자쪽지</a></td> -->
					<td align="center" style="font:12px '나눔고딕'; color:#e7e7e7; padding:0 10px;">|</td>
					<td align="center" class="copyright_font_st"><span style="position:relative; top:-2px" style="font-family: '나눔고딕';"><a href='happy_inquiry.php'>메인페이지에서 문의</a></span></td>
				</tr>
				</table>
			</td>
		</tr>
		</table>
	</td>
</tr>
<tr>
	<td align="center">
		<table cellspacing="0">
		<tr>
			<td align="left" style="padding-left:20px; font:12px '나눔고딕'; color:#333333; line-height:24px; padding-top: 2px;">
				(주)스마일아이템&nbsp;&nbsp;|&nbsp;&nbsp;대표자 코스모&nbsp;&nbsp;|&nbsp;&nbsp;서울특별시 강남구 선릉로620 쿨펫빌딩&nbsp;&nbsp;|&nbsp;&nbsp;FAX 02)777-7777&nbsp;&nbsp;|&nbsp;&nbsp;고객센터 02)777-7771</br>
				사업자등록번호 105-86-91848&nbsp;&nbsp;|&nbsp;&nbsp;통신판매업신고 제2017-서울강남-03890호&nbsp;&nbsp;|&nbsp;&nbsp;개인정보관리책임자 코스모113(kosmo113@naver.com)
			</td>
		</tr>
		</table>
	</td>
</tr>
<tr>
	<td align="center" style="padding:10px 0 20px 0;">
		<font style="color:#999999; font-family: '나눔고딕';">Copyright ⓒ 2022 <font style="font:bold 12px '나눔고딕'; color:#0168af;">펫포털 펫앤유</font> All rights reserved.</font>
	</td>
</tr>
</table>


		</div>
	</div>
	<!--카피라이터 끝-->

</div>

</body>
</html>

		<SCRIPT language="JavaScript">
			function setCookie( name, value, expiredays )
			{
				var todayDate = new Date();
				todayDate.setDate( todayDate.getDate() + expiredays );
				document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";"
			}
			function closeWin( cookie_name, formName, layerName )
			{
				if ( document.forms[formName].no_popup.checked )
					setCookie( cookie_name , "no" , 3);
				document.getElementById(layerName).style.visibility = 'hidden';
			}
			// 메인페이지 제네레이팅 By Kwak16
			function popupGetCookie(c_name)
			{
				var i,x,y,ARRcookies=document.cookie.split(';');
				for (i=0;i<ARRcookies.length;i++)
				{
					x=ARRcookies[i].substr(0,ARRcookies[i].indexOf('='));
					y=ARRcookies[i].substr(ARRcookies[i].indexOf('=')+1);
					x=x.replace(/^\s+|\s+$/g,'');
					if (x==c_name)
					{
						return unescape(y);
					}
				}
			}
		</SCRIPT>
	