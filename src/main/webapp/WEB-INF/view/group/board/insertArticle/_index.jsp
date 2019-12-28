<%--
  Created by IntelliJ IDEA.
  User: hyojin
  Date: 2019-11-28
  Time: 오후 12:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- Modal --%>
<div class="modal fade" id="insertArticle" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header nav nav-tabs" id="articleSelect" rol="tablist">
        <ul class="nav nav-pills" id="submitArticleTab">
          <li class="nav-item"><a class="nav-link active" href="#tabArticle"   data-toggle="tab">게시글</a></li>
          <li class="nav-item"><a class="nav-link"    href="#tabVote"    data-toggle="tab">투표</a></li>
          <li class="nav-item"><a class="nav-link"    href="#tabSchedule"  data-toggle="tab">일정</a></li>
          <li class="nav-item"><a class="nav-link"    href="#tabAlbum"     data-toggle="tab">사진</a></li>
<%--          <li class="nav-item"><a class="nav-link"    href="#tabPlace"     data-toggle="tab">장소</a></li>--%>
<%--          <li class="nav-item"><a class="nav-link"    href="#tabMoney"     data-toggle="tab">회계</a></li>--%>
        </ul>
        <button id="modalClose" type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span>
        </button>
      </div>

      <div class="modal-body">
        <div class="mb-3">
          <label for="articleTextarea">글 내용</label>
          <textarea name="articleContent" id="articleTextarea" class="textarea" placeholder="Place some text here" style="width: 100%; height: 1000px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
        </div>
        <%-- ./textarea --%>
        <div class="tab-content">
          <%--게시글--%>
          <div class="tab-pane active" id="tabArticle">
            <%@include file="article.jsp"%>
          </div>
          <%--투표--%>
          <div class="tab-pane" id="tabVote">
            <%@include file="vote.jsp"%>
          </div>
          <%--일정--%>
          <div class="tab-pane" id="tabSchedule">
            <%@include file="schedule.jsp"%>
          </div>
          <%--앨범--%>
          <div class="tab-pane" id="tabAlbum">
            <%@include file="album.jsp"%>
<%--          </div>--%>
<%--          &lt;%&ndash;장소&ndash;%&gt;--%>
<%--          <div class="tab-pane" id="tabPlace">--%>
<%--            <%@include file="place.jsp"%>--%>
<%--          </div>--%>
<%--          &lt;%&ndash;회계&ndash;%&gt;--%>
<%--          <div class="tab-pane" id="tabMoney">--%>
<%--            <%@include file="money.jsp"%>--%>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>