<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var="mycontext" value="${pageContext.request.contextPath}" />
  <style>
  	.nav li {width:100%;}
  </style>
    <body class="nav-md">
      <div class="container body">
        <div class="main_container">
          <div class="col-md-3 left_col">
            <div class="left_col scroll-view">
              <div class="navbar nav_title" style="border: 0;">
                <a href="../main/index" class="site_title"><i class="fa fa-paw"></i> <span>관리페이지</span></a>
              </div>

              <div class="clearfix"></div>

              <!-- menu profile quick info -->
              <div class="profile clearfix">
                <div class="profile_pic">
                  <img src="../resources/static/bootstrap/images/강형욱.png" alt="..." class="img-circle profile_img">
                </div>
                <div class="profile_info">
                <br>
                  <h2>강형욱</h2>
                </div>
              </div>
              <!-- /menu profile quick info -->

              <br />


              <!-- sidebar menu -->
              <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                <div class="menu_section">
                  <h3>General</h3>
                  <ul class="nav side-menu">
                    <li><a><i class="fa fa-edit"></i> 사용자 <span class="fa fa-chevron-down"></span></a>
                      <ul class="nav child_menu">
                        <li><a href="../member/adminMemberList">사용자 목록</a></li>
                      </ul>
                    </li>
                    <li><a><i class="fa fa-desktop"></i> 쇼핑 <span class="fa fa-chevron-down"></span></a>
                      <ul class="nav child_menu">
                        <li><a href="../adminorders/orderlist">주문 배송 관리</a></li>
                      </ul>
                    </li>
                    <li><a><i class="fa fa-table"></i> 동물 리스트 관리 <span class="fa fa-chevron-down"></span></a>
                      <ul class="nav child_menu">
                        <li><a href="../cate/list"> 동물 리스트 </a></li>
                      </ul>
                    </li>
                    <li><a><i class="fa fa-clone"></i>데이터 게시판 <span class="fa fa-chevron-down"></span></a>
                      <ul class="nav child_menu">
                        <li><a href="../chart/wordcloud"> 워드 클라우드 </a></li>
                      </ul>
                    </li>
                  </ul>
                </div>
                </div>

              </div>
              <!-- /sidebar menu -->

              <!-- /menu footer buttons -->
            <div class="sidebar-footer hidden-small">
              <a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Logout" >
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
              </a>
            </div>
            <!-- /menu footer buttons -->
          </div>
        </div>

          <!-- top navigation -->
        <div class="top_nav">
          <div class="nav_menu">
              <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>
              <nav class="nav navbar-nav">
              <ul class=" navbar-right">
                <li class="nav-item dropdown open" style="padding-left: 15px;">
                  <a href="javascript:;" class="user-profile dropdown-toggle" aria-haspopup="true" id="navbarDropdown" data-toggle="dropdown" aria-expanded="false">
                    <img src="../resources/static/bootstrap/images/강형욱.png" alt="">강형욱
                  </a>
                
                </li>
                  </ul>
                </li>
              </ul>
            </nav>
          </div>
        </div>
        <!-- /top navigation -->

    <!-- page content -->
    <div class="right_col" role="main">
      <!-- top tiles -->
      

      <!-- /top tiles -->
      <!-- jQuery -->
      <script src="../resources/static/bootstrap/vendors/jquery/dist/jquery.min.js"></script>
      <!-- Bootstrap -->
      <script src="../resources/static/bootstrap/vendors/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
      <!-- FastClick -->
      <script src="../resources/static/bootstrap/vendors/fastclick/lib/fastclick.js"></script>
      <!-- NProgress -->
      <script src="../resources/static/bootstrap/vendors/nprogress/nprogress.js"></script>
      <!-- Chart.js -->
      <script src="../resources/static/bootstrap/vendors/Chart.js/dist/Chart.min.js"></script>
      <!-- gauge.js -->
      <script src="../resources/static/bootstrap/vendors/gauge.js/dist/gauge.min.js"></script>
      <!-- bootstrap-progressbar -->
      <script src="../resources/static/bootstrap/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
      <!-- iCheck -->
      <script src="../resources/static/bootstrap/vendors/iCheck/icheck.min.js"></script>
      <!-- Skycons -->
      <script src="../resources/static/bootstrap/vendors/skycons/skycons.js"></script>
      <!-- Flot -->
      <script src="../resources/static/bootstrap/vendors/Flot/jquery.flot.js"></script>
      <script src="../resources/static/bootstrap/vendors/Flot/jquery.flot.pie.js"></script>
      <script src="../resources/static/bootstrap/vendors/Flot/jquery.flot.time.js"></script>
      <script src="../resources/static/bootstrap/vendors/Flot/jquery.flot.stack.js"></script>
      <script src="../resources/static/bootstrap/vendors/Flot/jquery.flot.resize.js"></script>
      <!-- Flot plugins -->
      <script src="../resources/static/bootstrap/vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
      <script src="../resources/static/bootstrap/vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
      <script src="../resources/static/bootstrap/vendors/flot.curvedlines/curvedLines.js"></script>
      <!-- DateJS -->
      <script src="../resources/static/bootstrap/vendors/DateJS/build/date.js"></script>
      <!-- JQVMap -->
      <script src="../resources/static/bootstrap/vendors/jqvmap/dist/jquery.vmap.js"></script>
      <script src="../resources/static/bootstrap/vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
      <script src="../resources/static/bootstrap/vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
      <!-- bootstrap-daterangepicker -->
      <script src="../resources/static/bootstrap/vendors/moment/min/moment.min.js"></script>
      <script src="../resources/static/bootstrap/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>

      <!-- Custom Theme Scripts -->
      <script src="../resources/static/bootstrap/build/js/custom.min.js"></script>

      </body>