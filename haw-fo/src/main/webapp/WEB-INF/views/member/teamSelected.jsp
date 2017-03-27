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
        </div>
    </div>
</section>
<section class="selectedTeamWrap">
    <div class="tutoTeam">
        <div class="tutoTeamOutline">
            <div class="tutoSelectTeamWrap">
                <div class="tutoSelected">
                    <div class="tutoSelectedTeamSym">
                        <img src="${teamVO.image }" alt="${teamVO.team_nm }팀 심볼">
                    </div>
                    <div class="tutoSelectedTeamInfo">
                        <span>
                            <h3>${teamVO.team_nm } TEAM SELECTED</h3>
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
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
                    	<p>${teamVO.team_nm } 팀을 고르셨군요!
						<br><br>${teamVO.description}
						<br><br>자! 이제 본격적으로 HACKTORIAL WORLD로 들어가볼까요?
						</p>
                    </span>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
