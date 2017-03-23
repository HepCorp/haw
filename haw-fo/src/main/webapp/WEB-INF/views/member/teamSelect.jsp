<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/inc/headerBase.jsp"%>
<c:set var="browserTitle" value="Hacktorial World (핵토리얼 월드)" />
<c:set var="menuTitle" value="Hacktorial World -팀선택-" />
<!DOCTYPE html>
<html lang="ko">
<head>
    <%@ include file="/resources/include/header.jsp"%>
    <link type="text/css" rel="stylesheet" href="/resources/css/member.css">
    <script type="text/javascript" charset="UTF-8" src="/resources/js/member.js"></script>
</head>
<body>
<section>
    <h2><img src="/resources/images/title.png" alt="핵토리얼 월드"></h2>
    <div class="contentsWrap">
        <div class="teamWrap">
            <div class="team">
                <div class="teamOutline">
                    <div class="selectTeamWrap">
                        <div class="selected">
                            <div class="selectedTeamSym">
                                <img src="/resources/images/eagle.png" alt="이글팀 심볼">
                            </div>
                            <div class="selectedTeamInfo">
                                <p>NAME : EAGLES</p>
                                <p>MEMBER : 10</p>
                                <form action="">
                                    <fieldset>
                                        <legend>팀선택</legend>
                                        <p><input type="submit" name="select" id="select" value="SELECT"></p>
                                    </fieldset>
                                </form>
                            </div>
                        </div>
                        <div class="teamListWrap">
                            <div class="teamList">
                            <span id="prev">
                                <a><img src="/resources/images/left-arrow.png" alt="다시보기"></a>
                            </span>
                                <div class="symbols">
                                    <ul>
                                        <li><a href=""><img src="/resources/images/arabian.png" alt="아라비안 심볼"></a></li>
                                        <li><a href=""><img src="/resources/images/starshield.png" alt="별방패 심볼"></a></li>
                                        <li><a href=""><img src="/resources/images/usa.png" alt="미국 심볼"></a></li>
                                        <li><a href=""><img src="/resources/images/crossshield.png" alt="십자방패 심볼"></a></li>
                                        <li><a href=""><img src="/resources/images/arabian.png" alt="아라비안 심볼"></a></li>
                                        <li><a href=""><img src="/resources/images/starshield.png" alt="별방패 심볼"></a></li>
                                    </ul>
                                </div>
                                <span id="next">
                                <a><img src="/resources/images/right-arrow.png" alt="다음보기"></a>
                            </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="tutorialWrap">
    <div class="chatPopUpWrap">
        <div class="chatBox">
            <div class="tutorialChat">
                <div class="chat">
                    <h3>■ CHAT</h3>
                </div>
                <div class="system">
                    <span class="chatName">
                        <h4>SYSTEM <strong>▶</strong></h4>
                    </span>
                    <span class="chatting">
                        <p>팀 선택 창입니다. 원하시는 팀을 선택해주세요.</p>
                        <br>
                        <p>게임은 개인 기록 및 기록 경쟁 형태로 진행됩니다.</p>
                        <br>
                        <br>
                        <p>팀 선택을 완료하면 한동안 바꿀수 없으니 신중하게 선택해주세요!</p>
                    </span>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>
