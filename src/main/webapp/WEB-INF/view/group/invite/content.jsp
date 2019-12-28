<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: hyojin
  Date: 2019-11-30
  Time: 오후 4:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<section class="content">
<div class="col-12">
  <div class="card">
      <div class="card-body table-responsive p-0">
        <table class="table table-hover">
          <thead>
            <tr>
              <th>코드</th>
              <th>생성일</th>
              <th>가입일</th>
              <th>가입자</th>
<%--              <th>링크 복사</th>--%>
            </tr>
          </thead>
          <tbody>
            <c:forEach items="${subscribeList}" var="subscribe">
              <tr>
                <td>${subscribe.inviteCode}</td>
                <td>${subscribe.inviteDate}</td>
                <td>${subscribe.joinDate}</td>
                <td>${subscribe.userName}</td>
<%--                <td><i class="far fa-copy"></i></td>--%>
              </tr>
            </c:forEach>
          </tbody>
        </table>
      </div>
      <!-- /.card-body -->
  </div>
</div>
</section>