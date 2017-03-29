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
    <div class="contentsWrap02">
        <div class="mainWrap">
            <div class="jejuMap">
                <div class="location">
                    <p id="seogwipo"><a href="">SEOGWIPO CITY</a></p>
                    <p id="jejuCity">JEJU CITY</p>
                </div>
                <span id="pointerJ"><a href="" id="questPop"><img src="/resources/images/activation-pointer.png" alt="포인터"></a></span>
                <span id="compass"><img src="/resources/images/compass2.png" alt="나침반 이미지"></span>
            </div>
        </div>
    </div>
</section>
<section class="tutorialWrap">
<%@ include file="/resources/include/seogwipoQuest.jsp" %>
</section>

<%@ include file="/resources/include/chatPopUp.jsp" %>
</body>
</html>