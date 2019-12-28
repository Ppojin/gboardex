<%--
  Created by IntelliJ IDEA.
  User: hwanghyojin
  Date: 2019/12/25
  Time: 10:24 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<jsp:useBean id="login" scope="request" type="com.hj.gboardex.user.domain.UserVO"/>--%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <%@include file="/include/head.jsp"%>
    <%-- summernote --%>
    <link rel="stylesheet" href="/plugins/summernote/summernote-bs4.css">
    <%-- Theme style --%>
    <link rel="stylesheet" href="/plugins/jquery-ui/jquery-ui.min.css">
    <%-- Ekko Lightbox --%>
    <link rel="stylesheet" href="/plugins/ekko-lightbox/ekko-lightbox.css">
</head>
<body class="hold-transition layout-top-nav">
<div class="wrapper">
    <%@include file="/include/group_navbar.jsp"%>
    <div class="content-wrapper">
        <div class="content-header">
            <div class="container">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0 text-dark">그룹 관리</h1>
                    </div><%-- /.col --%>
                </div><%-- /.row --%>
            </div><%-- /.container-fluid --%>
        </div>
        <section class="content">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-md-10 col-xl-8">
                        <div class="card">
                            <!-- /.card-header -->
                            <div class="card-body">
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" placeholder="${currentGroup.groupName}">
                                    <div class="input-group-append">
                                        <button type="button" class="btn btn-default">그룹명 변경</button>
                                    </div>
                                </div>
                                <div>그룹과 그룹의 모든 게시물 삭제.</div>
                                <button id="groupDeleteBtn" class="btn btn-danger">그룹 삭제</button>
                            </div>
                            <!-- /.card-body -->
                        </div>
                        <!-- /.card -->
                    </div>
                    <!-- /.col -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </section>
    </div>
    <%@include file="/include/controll_sidebar.jsp"%>
    <%@include file="/include/main_footer.jsp"%>
</div>
<%@include file="script.jsp"%>
</body>
</html>
