
<%--
  Created by IntelliJ IDEA.
  User: hyojin
  Date: 2019-12-13
  Time: 오후 9:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div id="picDateDiv">
<%--    <label id="labelStartDate">촬영일</label>--%>
    <c:forEach items="${articleVO.album}" var="album">
        <c:set var="filePath" value="${album.filePath}"/>
        <c:set var="lenfilePath" value="${fn:length(filePath) }" />
        <c:set var="path" value="${fn:substring(filePath, 0 , 12)}"/>
        <c:set var="file" value="${fn:substring(filePath, 14 ,lenfilePath)}"/>
        <a href="/static/upload/images${path}${file}" data-toggle="lightbox" data-gallery="${articleVO.articleID}">
            <img src="/static/upload/images${filePath}" class="img-thumbnail">
        </a>
    </c:forEach>
</div>