<%@ page import="com.hj.gboardex.main.domain.MainVO" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="ko">
<head>
  <%@include file="/include/head.jsp"%>
</head>
<body class="hold-transition layout-top-nav">
<div class="wrapper">
  <%@include file="/include/main_navbar.jsp"%>
  <div class="content-wrapper">
    <%@include file="content_header.jsp"%>
    <%@include file="content.jsp"%>
  </div>
  <%@include file="/include/controll_sidebar.jsp"%>
  <%@include file="/include/main_footer.jsp"%>
</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->

<!-- jQuery -->
<script src="../../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/adminlte.min.js"></script>
<!-- 이미지 미리보기 js -->
<script>
  var sel_file;

  $(document).ready(function() {
  });
</script>
<!-- ./이미지 미리보기 js -->
<%@include file="script.jsp"%>
</body>
</html>
