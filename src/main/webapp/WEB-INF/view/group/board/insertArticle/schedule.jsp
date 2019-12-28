<%--
  Created by IntelliJ IDEA.
  User: hyojin
  Date: 2019-12-13
  Time: 오후 7:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form id="scheduleForm">
    <input type="hidden" name="articleType" value="2">
    <div class="mb-3">
        <label for="schedulePlace">주제</label>
        <input id="scheduleSubject" name="scheduleSubject" type="text" class="form-control" placeholder="일정 주제">
    </div>
    <div class="mb-3">
        <label for="schedulePlace">장소</label>
        <input id="schedulePlace" name="schedulePlace" type="text" class="form-control" placeholder="일정 장소">
    </div>
    <div class="input-group">
        <span class="form-group">
        <div class="custom-control custom-switch">
            <input type="checkbox" class="custom-control-input" id="setEndDate">
            <label class="custom-control-label" for="setEndDate">기간으로 작성하기</label>
        </div>
        </span>
    </div>
    <%-- 시작일 --%>
    <label id="labelStartDate">일정</label>
    <div class="datepicker-input-group input-group mb-3">
        <div class="input-group-prepend">
            <span class="input-group-text"><i class="far fa-calendar-alt"></i></span>
        </div>
        <input name="scheduleStartDate" type="text" id="startDate" class="form-control" datepicker>
    </div>
    <%-- 종료일 --%>
    <div id="endDatePickerDiv" style="display: none;">
        <label id="labelEndDate">일정 종료일</label>
        <div class="datepicker-input-group input-group mb-3" type="hidden">
            <div class="input-group-prepend">
                <span class="input-group-text"><i class="far fa-calendar-alt"></i></span>
            </div>
            <input name="scheduleEndDate" type="text" id="endDate" class="form-control" datepicker disabled>
        </div>
    </div>
    <%-- 저장버튼 --%>
    <button type="button" id="submitSchedule" class="btn btn-primary float-right submitArticleBtn">
        <i class="fas fa-save"></i>&nbsp;저장
    </button>
</form>