<%--
  Created by IntelliJ IDEA.
  User: hyojin
  Date: 2019-11-22
  Time: 오후 10:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
    <div class="p-3">
<%--        <h5>Title</h5>--%>
<%--        <p>Sidebar content</p>--%>
        <ul>
            <li class="nav-item">
                <a href="/main" class="nav-link">그룹 목록으로</a>
            </li>
            <li class="nav-item">
                <a href="/user/logout" class="nav-link">로그아웃</a>
            </li>
<%--            Todo: 메인화면에서 작동하지 않도록 수--%>
<%--            <c:set var="myContextPath" value="${pageContext.request.contextPath}"/>--%>
<%--            <c:set var="groupURL" value="/${currentGroup.groupURL}"/>--%>
<%--            <c:if test="${currentGroup.groupManager == login.userID && groupURL == contextPath}">--%>
            <c:if test="${currentGroup.groupManager == login.userID}">
            <hr style="border-top: 2px dotted #999;"><!-- ========= -->
            <li class="nav-item">
                <a href="/group/${currentGroup.groupID}/admin" class="nav-link">그룹(${currentGroup.groupName}) 관리</a>
            </li>
            </c:if>
            <li>${currentGroup.groupManager}</li>
            <li>${login.userID}</li>
        </ul>
    </div>
</aside>