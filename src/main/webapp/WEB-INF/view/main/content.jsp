<%--
  Created by IntelliJ IDEA.
  User: hyojin
  Date: 2019-12-03
  Time: 오후 5:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="content">
    <div class="container">
        <div class="row">
            <c:forEach items="${groupList}" var="group">
                <div class="col-lg-3 col-md-6 col-12">
                    <div class="info-box bg-gradient-${group.groupColorStr}">
                        <img class="img-thumbnail"
                             id="createGroupThumbnail"
                             style="height: 100px; width: 100px;"
                             src="${group.groupImageURL}">
                            <%--                     src="/static/groupMainImage/${group.groupURL}${group.groupImgExt}">--%>
                        <div class="info-box-content">
                            <span class="info-box-number">${group.groupName}</span>
                            <span class="info-box-text">${group.groupSummary}</span>
                        </div>
                        <a href="${path}/group/${group.groupID}" class="stretched-link"></a>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>
            </c:forEach>
        </div>
    </div><!-- /.container-fluid -->
</div>