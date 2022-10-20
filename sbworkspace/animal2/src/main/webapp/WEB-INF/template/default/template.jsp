<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
            <c:set var="mycontext" value="${pageContext.request.contextPath}" />

            <!DOCTYPE html>
            <html>

            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <!-- Meta, title, CSS, favicons, etc. -->
                <meta charset="utf-8">
                <meta http-equiv="X-UA-Compatible" content="IE=edge">
                <meta name="viewport" content="width=device-width, initial-scale=1">
                <link rel="icon" href="images/favicon.ico" type="image/ico" />

                <title>Gentelella Alela! | </title>

                <!-- Bootstrap -->
                <link href="../resources/static/bootstrap/vendors/bootstrap/dist/css/bootstrap.min.css"
                    rel="stylesheet">
                <!-- Font Awesome -->
                <link href="../resources/static/bootstrap/vendors/font-awesome/css/font-awesome.min.css"
                    rel="stylesheet">
                <!-- NProgress -->
                <link href="../resources/static/bootstrap/vendors/nprogress/nprogress.css" rel="stylesheet">
                <!-- iCheck -->
                <link href="../resources/static/bootstrap/vendors/iCheck/skins/flat/green.css" rel="stylesheet">

                <!-- bootstrap-progressbar -->
                <link
                    href="../resources/static/bootstrap/vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css"
                    rel="stylesheet">
                <!-- JQVMap -->
                <link href="../resources/static/bootstrap/vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet" />
                <!-- bootstrap-daterangepicker -->
                <link href="../resources/static/bootstrap/vendors/bootstrap-daterangepicker/daterangepicker.css"
                    rel="stylesheet">

                <!-- Custom Theme Style -->
                <link href="../resources/static/bootstrap/build/css/custom.min.css" rel="stylesheet">
            </head>

            <body>
                <!-- header -->
                <tiles:insertAttribute name="header" />

                <!-- body -->
                <tiles:insertAttribute name="body" ignore="true" />

                <!-- footer -->
                <tiles:insertAttribute name="footer" />
            </body>

            </html>