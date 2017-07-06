<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/inc/headerBase.jsp"%>
<c:set var="browserTitle" value="Hacktorial World (핵토리얼 월드)" />
<c:set var="menuTitle" value="Hacktorial World -튜토리얼-" />
<!DOCTYPE html>
<html lang="ko">
<head>
    <%@ include file="/resources/include/header.jsp"%>
    <link type="text/css" rel="stylesheet" href="/resources/css/index.css">
    <link type="text/css" rel="stylesheet" href="/resources/css/tutorial.css">
    <script type="text/javascript" charset="UTF-8" src="/resources/js/tutorial.js"></script>
</head>
<body>
<section>
    <h2><img src="/resources/images/title.png" alt="핵토리얼 월드"></h2>
    <div class="contentsWrap">
        <div class="mainWrap">
            <div class="worldMap">
                <div class="location">
                    <p id="korea"><a href="">KOREA</a></p>
                    <p id="atOcean01">ATLANTIC<br>OCEAN</p>
                    <p id="atOcean02">ATLANTIC<br>OCEAN</p>
                    <p id="paOcean">PACIFIC<br>OCEAN</p>
                    <p id="arOcean">ARCTIC<br>OCEAN</p>
                    <p id="inOcean">INDIAN<br>OCEAN</p>
                </div>
                <span id="pointer"><img src="/resources/images/activation-pointer.png" alt="포인터"></span>
                <span id="compass"><img src="/resources/images/compass2.png" alt="나침반 이미지"></span>
            </div>
        </div>
    </div>
</section>
<section class="tutorialWrap">
<%@ include file="/resources/include/tutorialStart.jsp" %>
<%@ include file="/resources/include/selectNation.jsp" %>
<%@ include file="/resources/include/nationInfo.jsp" %>
<%@ include file="/resources/include/chatPopUp.jsp" %>
</section>
</body>
</html>