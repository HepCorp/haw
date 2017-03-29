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
    <div class="contentsWrap01">
        <div class="mainWrap">
            <div class="koreaMap">
                <div class="chinaJapanMap">
                </div>
                <div class="southKorea">
                </div>
                <div class="location">
                    <p id="jejudo"><a href="">JEJUDO</a></p>
                    <p id="sKorea">SOUTH<br>KOREA</p>
                    <p id="ySea">YELLOW SEA</p>
                    <p id="eSea">EAST SEA</p>
                </div>
                <span id="pointerK"><a href="/tutorial/jeju.do"><img src="/resources/images/activation-pointer.png" alt="포인터"></a></span>
                <span id="compass"><img src="/resources/images/compass2.png" alt="나침반 이미지"></span>
            </div>
        </div>
    </div>
</section>

<%@ include file="/resources/include/chatPopUp.jsp" %>
</body>
</html>