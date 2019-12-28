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
      <%@include file="/include/main_navbar.jsp"%>
      <%@include file="/include/group_navbar.jsp"%>
      <div class="content-wrapper">
        <div class="content-header">
            <div class="container">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0 text-dark">게시판</h1>
                    </div><%-- /.col --%>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-right">
                            <button type="button" class="btn btn-primary btn-block"  data-toggle="modal" data-target="#insertArticle"><b>글쓰기</b></button>
                            <%@include file="insertArticle/_index.jsp"%>
                        </ol>
                    </div><%-- /.col --%>
                </div><%-- /.row --%>
            </div><%-- /.container-fluid --%>
        </div>
        <%@include file="content/_index.jsp"%>
      </div>
      <%@include file="/include/controll_sidebar.jsp"%>
      <%@include file="/include/main_footer.jsp"%>
    </div>
    <%-- ./wrapper --%>

    <%@include file="script.jsp"%>
  </body>
</html>
