<%--
  Created by IntelliJ IDEA.
  User: hyojin
  Date: 2019-12-03
  Time: 오후 5:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="content-header">
    <div class="container">
        <div class="row mb-2">
            <div class="col-md-6">
                <h1 class="m-0 text-dark"> 그룹 목록 <small></small></h1>
            </div><!-- /.col -->
            <!-- 초대코드 -->
            <div class="input-group mb-3 col-md-4 col-8">
                <input id="inviteCodeInput" type="text" class="form-control" placeholder="초대코드">
                <div class="input-group-append">
                    <button id="inviteCodeSubmit" type="button" class="btn btn-primary">등록</button>
                </div>
            </div>
            <!-- 그룹 생성 -->
            <!-- Modal button -->
            <div class="col-md-2 col-4">
                <button type="button" class="btn btn-secondary btn-block"  data-toggle="modal" data-target="#createGroup">그룹 생성</button>
            </div>
            <%@include file="insertGroupModal.jsp"%><%--그룹 생성 modal--%>
            <!-- ./그룹 생성 -->
        </div><!-- /.row -->
    </div><!-- /.container-fluid -->
</div>