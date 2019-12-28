<%--
  Created by IntelliJ IDEA.
  User: hyojin
  Date: 2019-12-13
  Time: 오후 7:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form id="voteForm">
    <input type="hidden" name="articleType" value="1">
    <%-- /.articleType --%>
    <div class="row">
        <div class="form-group col-12">
            <label>투표항목</label>

            <button id="appendItemButton" type="button" class="btn-sm btn-outline-primary float-right plusVoteItem">
                <i class="far fa-plus-square"></i>&nbsp;&nbsp;항목 추가
            </button>
        </div>
    </div>
    <%-- /.투표 기능 헤더 --%>
    <div id="voteItems" class="row">
        <div class="voteItemRow col-12 mb-3">
            <input id="vote01" name="voteItem" type="text" class="form-control" placeholder="항목 01">
        </div>
        <div class="voteItemRow input-group col-12 mb-3">
            <input id="vote02" name="voteItem" type="text" class="form-control" placeholder="항목 02">
            <span class="input-group-append">
                <button id="removeVote02" type="button" class="btn btn-outline-danger remove_vote">
                    <i class="far fa-minus-square"></i>
                </button>
          </span>
        </div>
        <div class="voteItemRow input-group col-12 mb-3">
            <input id="vote03" name="voteItem" type="text" class="form-control" placeholder="항목 03">
            <span class="input-group-append">
                <button id="removeVote03" type="button" class="btn btn-outline-danger remove_vote">
                    <i class="far fa-minus-square"></i>
                </button>
            </span>
        </div>
    </div>
    <%-- ./투표항목 --%>
    <div class="form-group">
        <div class="custom-control custom-switch">
            <input name="voteMultiple" value="1" type="checkbox" class="custom-control-input" id="voteMultipleCheckbox">
            <label class="custom-control-label" for="voteMultipleCheckbox">중복투표 허용</label>
        </div>
    </div>
    <%-- ./중복투표여부 --%>
    <div class="row">
        <div class="col-12">
            <button type="button" id="submitVote" class="btn btn-primary float-right submitArticleBtn">
                <i class="fas fa-save"></i>&nbsp;저장
            </button>
        </div>
    </div>
    <%-- /.저장버튼 --%>
</form>