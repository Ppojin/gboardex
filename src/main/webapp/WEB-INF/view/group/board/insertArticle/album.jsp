<%--
  Created by IntelliJ IDEA.
  User: hyojin
  Date: 2019-12-13
  Time: 오후 7:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form id="albumForm" enctype="multipart/form-data">
    <input type="hidden" name="articleType" value="3">
    <%-- 파일 업로드 --%>
    <div class="form-group">
        <label for="filesInput">앨범 이미지 업로드</label>
        <input name="filesInput" id="filesInput" class="form-control-file" type="file" accept=".gif, .jpg, .png" multiple>
    </div>
    <%-- 파일 갤러리 --%>
    <div>
        <ul class="inputGallery col-12" style="white-space:nowrap; overflow-x: scroll;"></ul>
    </div>
<%--    &lt;%&ndash; 날짜 지정여부 &ndash;%&gt;--%>
<%--    <div class="input-group">--%>
<%--        <span class="form-group">--%>
<%--        <div class="custom-control custom-switch">--%>
<%--            <input type="checkbox" class="custom-control-input" id="setPicDate">--%>
<%--            <label class="custom-control-label" for="setPicDate">촬영일 입력</label>--%>
<%--        </div>--%>
<%--        </span>--%>
<%--    </div>--%>
<%--    &lt;%&ndash; 앨범 날짜 &ndash;%&gt;--%>
<%--    <div id="picDateDiv" style="display: none;">--%>
<%--        <label id="labelStartDate">촬영일</label>--%>
<%--        <div class="datepicker-input-group input-group mb-3">--%>
<%--            <div class="input-group-prepend">--%>
<%--                <span class="input-group-text"><i class="far fa-calendar-alt"></i></span>--%>
<%--            </div>--%>
<%--            <input name="picDate" type="text" id="picDate" class="form-control" datepicker>--%>
<%--        </div>--%>
<%--    </div>--%>
    <%-- 저장버튼 --%>
    <button type="button" id="submitAlbum" class="btn btn-primary float-right submitArticleBtn">
        <i class="fas fa-save"></i>&nbsp;저장
    </button>
</form>