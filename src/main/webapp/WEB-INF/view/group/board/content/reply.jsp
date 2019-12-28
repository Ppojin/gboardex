<%--
  Created by IntelliJ IDEA.
  User: hyojin
  Date: 2019-12-03
  Time: 오후 9:27
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="card-footer">
    <form class="inputReplyForm" method="post">
        <input class="articleID" name="articleID" value="${articleVO.articleID}" type="hidden"/>
        <img class="img-fluid img-circle img-sm" src="https://www.gravatar.com/avatar/${login.userGravatar}?d=identicon&f=y" alt="Alt Text">
        <%-- .img-push is used to add margin to elements next to floating images --%>
        <div class="img-push">
            <input class="replyContent form-control form-control-sm" name="replyContent" type="text"placeholder="Press enter to post comment">
        </div>
    </form>
</div>
<div class="card-footer card-comments">
    <c:forEach items="${articleVO.replyVOList}" var="reply">
        <div class="card-comment<c:if test="${reply.parentReplyID != '0'}" > ml-4</c:if>">
            <%-- User image --%>
            <img class="img-circle img-sm" src="${reply.userGravatarURL}" alt="User Image">

            <div class="comment-text">
            <span class="username">
              ${reply.userName}
              <span class="text-muted float-right">${reply.uploadDate}</span>
              <c:if test="${reply.parentReplyID eq '0'}">
                <span class="text-muted float-right mr-1">
                  <button id="${articleVO.articleID}-${reply.replyID}" class="btn btn-xs replyReplyBtn">댓글</button>
                </span>
              </c:if>
            </span>
            <%-- /.username --%>
            ${reply.replyContent}
            </div>
            <%-- /.comment-text --%>
            <c:if test="${reply.parentReplyID == '0'}">
                <form id="replyForm-${articleVO.articleID}-${reply.replyID}" class="inputReplyForm inputReplyReplyForm ml-3 mt-3" method="post" style="display:none;">
                    <input class="articleID" name="articleID" value="${articleVO.articleID}" type="hidden"/>
                    <input class="parentReplyID" name="parentReplyID" value="${reply.replyID}" type="hidden"/>
                    <img class="img-fluid img-circle img-sm" src="https://www.gravatar.com/avatar/${login.userGravatar}?d=identicon&f=y" alt="Alt Text">
                    <%-- .img-push is used to add margin to elements next to floating images --%>
                    <div class="img-push">
                        <input class="replyContent form-control form-control-sm" name="replyContent" type="text" placeholder="Press enter to post comment">
                    </div>
                </form>
            </c:if>
        </div>
    </c:forEach>
</div>