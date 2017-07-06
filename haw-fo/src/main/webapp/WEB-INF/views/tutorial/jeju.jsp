<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/inc/headerBase.jsp"%>
<c:set var="browserTitle" value="Hacktorial World (핵토리얼 월드)" />
<c:set var="menuTitle" value="Hacktorial World -튜토리얼-" />
<!DOCTYPE html>
<html lang="ko">
<head>
    <%@ include file="/resources/include/header.jsp"%>
    <link type="text/css" rel="stylesheet" href="/resources/css/tutorial.css">
    <link type="text/css" rel="stylesheet" href="/resources/css/game.css">
    <script type="text/javascript" charset="UTF-8" src="/resources/js/tutorial.js"></script>
</head>
<body>
<section>
    <h2><img src="/resources/images/title.png" alt="핵토리얼 월드"></h2>
    <div id="mapWrap" class="contentsWrap${questObj.wrap }">
        <div class="mainWrap">
            <div id="jejuIsland" class="${questObj.activeClass }ActiveMap">
                <div class="jejuLocation">
                    <p id="jeju01" class="seogwipo">SEOGWIPO CITY</p>
                    <p id="jeju02" class="jejuCityInactive">JEJU CITY</p>
                </div>
                <span class="pointerJ" style="display:none;"><a href="" id="questPop"><img src="/resources/images/activation-pointer.png" alt="포인터"></a></span>
                <span id="compass"><img src="/resources/images/compass2.png" alt="나침반 이미지"></span>
            </div>
        </div>
    </div>
</section>
<section class="tutorialWrap" style="display:none;">
<%@ include file="/resources/include/seogwipoQuest.jsp" %>
<%@ include file="/resources/include/mapSeogwipo.jsp" %>
<%@ include file="/resources/include/questDetail.jsp" %>
</section>
<%@ include file="/resources/include/questComplete.jsp" %>
<%@ include file="/resources/include/chatPopUp.jsp" %>
</body>
</html>