<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <c:choose>
        <c:when test="${empty login}" >
            <a href="/user/login">로그인</a><br>
            <a href="/user/register">회원가입</a>
        </c:when>
        <c:when test="${not empty login}"> <a href="/main">그룹 목록으로</a> </c:when>
    </c:choose>

</body>
</html>
