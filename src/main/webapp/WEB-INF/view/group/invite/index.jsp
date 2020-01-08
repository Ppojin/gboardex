<%--
  Created by IntelliJ IDEA.
  User: hyojin
  Date: 2019-12-03
  Time: 오전 10:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <%@include file="/include/head.jsp"%>
  </head>
  <body class="layout-top-nav">
    <div class="wrapper">
      <%@include file="/include/main_navbar.jsp"%>
      <%@include file="/include/group_navbar.jsp"%>
      <div class="content-wrapper">
        <div class="container">
          <%@include file="content_header.jsp"%>
          <%@include file="content.jsp"%>
        </div>
      </div>
      <%@include file="/include/controll_sidebar.jsp"%>
      <%@include file="/include/main_footer.jsp"%>
    </div>
    <!-- ./wrapper -->
    
    <!-- REQUIRED SCRIPTS -->
    
    <!-- jQuery -->
    <script src="/plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap 4 -->
    <script src="/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- AdminLTE App -->
    <script src="/dist/js/adminlte.min.js"></script>
    <!-- Summernote -->
    <script src="/plugins/summernote/summernote-bs4.min.js"></script>
    <%@include file="script.jsp"%>
  </body>
</html>
