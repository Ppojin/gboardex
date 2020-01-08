<%--
  Created by IntelliJ IDEA.
  User: hyojin
  Date: 2019-12-09
  Time: 오후 4:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>AdminLTE 3 | Calendar</title>
    <%-- Tell the browser to be responsive to screen width --%>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%-- Font Awesome --%>
    <link rel="stylesheet" href="/plugins/fontawesome-free/css/all.min.css">
    <%-- Ionicons --%>
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <%-- fullCalendar --%>
    <link rel="stylesheet" href="/plugins/fullcalendar/main.min.css">
    <link rel="stylesheet" href="/plugins/fullcalendar-daygrid/main.min.css">
    <link rel="stylesheet" href="/plugins/fullcalendar-timegrid/main.min.css">
    <link rel="stylesheet" href="/plugins/fullcalendar-bootstrap/main.min.css">
    <%-- Theme style --%>
    <link rel="stylesheet" href="/dist/css/adminlte.min.css">
    <%-- Google Font: Source Sans Pro --%>
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
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
<%-- ./wrapper --%>
<%@include file="script.jsp"%>
</body>
</html>
