<%--
  Created by IntelliJ IDEA.
  User: hyojin
  Date: 2019-12-03
  Time: 오후 9:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="content">
    <div class="container">
        <section class="content">
            <div class="col-12">
                <c:forEach items="${contentList}" var="articleVO">
                    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
                    <%-- Box Comment --%>
                    <div class="card card-widget">
                        <div class="card-header">
                            <div class="user-block">
                                <img class="img-circle" src="${articleVO.userGravatarURL}" alt="User Image">
                                <span class="username"><a href="#">${articleVO.userName}</a></span>
                                <span class="description">${articleVO.articleUploadDate}</span>
                            </div>
                            <%-- /.user-block --%>
                            <div class="card-tools">
                                <button type="button" class="btn btn-tool" data-card-widget="collapse">
                                    <i class="fas fa-minus"></i>
                                    <span>접기</span>
                                </button>
                                <button type="button" class="btn btn-tool" data-toggle="tooltip" title="Mark as read">
                                    <i class="far fa-circle"></i>
                                    <span>수정</span>
                                </button>
                                <c:if test="${articleVO.userID == login.userID}">
                                    <button type="button" class="btn btn-tool articleRemove" data-card-widget="remove" value="${articleVO.articleID}">
                                        <i class="fas fa-times"></i>
                                        <span>삭제</span>
                                    </button>
                                </c:if>
                            </div>
                            <%-- /.card-tools --%>
                        </div>
                        <%-- /.card-header --%>
                        <div class="card-body">
                            ${articleVO.articleContent}
                            <c:if test="${articleVO.articleType != 0}">
                                <div class="attachment-block clearfix">
                                    <c:choose>
                                        <c:when test="${articleVO.articleType == 1}">
                                            <%@include file="vote.jsp"%>
                                        </c:when>
                                        <c:when test="${articleVO.articleType == 2}">
                                            <%@include file="schedule.jsp"%>
                                        </c:when>
                                        <c:when test="${articleVO.articleType == 3}">
                                            <%@include file="album.jsp"%>
                                        </c:when>
                                    </c:choose>
                                </div>
                            </c:if>
                            <%-- Social sharing buttons --%>
        <%--                    <button type="button" class="btn btn-default btn-sm"><i class="fas fa-share"></i> Share</button>--%>
                                <c:choose>
                                    <c:when test="${articleVO.liked}">
                                        <button type="button" class="btn btn-primary btn-sm btnLike" value="${articleVO.articleID}"><i class="far fa-thumbs-up"></i> Liked</button>
                                    </c:when>
                                    <c:when test="${!articleVO.liked}">
                                        <button type="button" class="btn btn-default btn-sm btnLike" value="${articleVO.articleID}"><i class="far fa-thumbs-up"></i> Like</button>
                                    </c:when>
                                </c:choose>
                            <span class="float-right text-muted">${articleVO.likeCount} likes - ${fn:length(articleVO.replyVOList)} comments</span>
                            <%-- ./Social sharing buttons --%>
                        </div>
                        <%-- ./card-body --%>
                        <%@include file="reply.jsp"%>
                        <%-- ./card-footer --%>
                    </div>
                    <%-- /.card --%>
                </c:forEach>
            </div>
        </section>
    </div>
</div>
