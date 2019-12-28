<%--
  Created by IntelliJ IDEA.
  User: hyojin
  Date: 2019-12-05
  Time: 오전 2:03
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:choose>
    <c:when test="${articleVO.voted == false}">
        <c:set var="inputAvailable" value=""/>
    </c:when>
    <c:when test="${articleVO.voted == true}">
        <c:set var="inputAvailable" value="disabled"/>
    </c:when>
</c:choose>
<c:choose>
    <c:when test="${articleVO.voteMultiple == 0}">
        <c:set var="checkOrRadio" value="radio"/>
    </c:when>
    <c:when test="${articleVO.voteMultiple == 1}">
        <c:set var="checkOrRadio" value="checkbox"/>
    </c:when>
</c:choose>
<form id="voteForm${articleVO.articleID}">
    <input type="hidden" value="${articleVO.articleID}" name="articleID">
    <div class="form-group mt-2 ml-2 mr-2">
        <c:forEach items="${articleVO.voteVOList}" var="voteVO">
            <c:choose>
                <c:when test="${voteVO.voteSelected != 0}">
                    <c:set var="checked" value="checked"/>
                </c:when>
                <c:when test="${voteVO.voteSelected == 0}">
                    <c:set var="checked" value=""/>
                </c:when>
            </c:choose>
            <c:choose>
                <c:when test="${articleVO.voteCount == 0}">
                    <c:set var="divideValue" value="0"/>
                </c:when>
                <c:when test="${articleVO.voteCount != 0}">
                    <c:set var="divideValue" value="${((voteVO.voteCount*1.0) / (articleVO.voteCount*1.0)) * 100}"/>
                </c:when>
            </c:choose>

            <div class="custom-control custom-${checkOrRadio}">
                <input name="voteItemIDList" class="custom-control-input" type="${checkOrRadio}" id="voteItem${voteVO.voteItemID}" value="${voteVO.voteItemID}" ${checked} ${inputAvailable}>
                <label for="voteItem${voteVO.voteItemID}" class="vote_option custom-control-label">${voteVO.voteItemValue}</label>
                <div class="progress">
                    <div class="progress-bar bg-success" role="progressbar" style="width: ${divideValue}%" aria-valuenow="${voteVO.voteCount}" aria-valuemax="${articleVO.voteCount}">
                        <span>
                            <c:choose>
                                <c:when test="${divideValue == 0}">
                                    <span class="votePercent">0</span>
                                </c:when>
                                <c:when test="${divideValue != 0}">
                                    <span class="votePercent"><fmt:formatNumber value="${divideValue}" pattern=".00"/></span>
                                </c:when>
                            </c:choose>
                            <span>% (</span>
                            <span class="thisSum">${voteVO.voteCount}</span>
                            <span>/</span>
                            <span class="allSum">${articleVO.voteCount}</span>
                            <span>)</span>
                        </span>
                    </div>
                </div>
            </div>

        </c:forEach>
    </div>
</form>
<c:if test="${inputAvailable != 'disabled'}">
    <button value="${articleVO.articleID}" type="button" class="btn-sm btn-primary float-right voteButton">투표하기</button>
</c:if>