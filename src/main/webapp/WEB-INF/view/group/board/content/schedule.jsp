<%--
  Created by IntelliJ IDEA.
  User: hyojin
  Date: 2019-12-13
  Time: 오후 8:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<h4 class="ml-3 mt-3 mr-3"><b>${articleVO.scheduleSubject}</b></h4>
<table class="table">
    <col width="100px">
    <col>
    <tr>
        <td><b class="d-flex justify-content-end mr-3">장소</b></td>
        <td>${articleVO.schedulePlace}</td>
    </tr>
    <tr>
        <td><b class="d-flex justify-content-end mr-3">일정</b></td>
        <td>${articleVO.scheduleStartDate}<c:if test="${articleVO.scheduleStartDate != articleVO.scheduleEndDate}"> ~ ${articleVO.scheduleEndDate}</c:if></td>
    </tr>
</table>
