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
    <script type="text/javascript">
    var team_nm = "${teamVO.team_nm}";
    var description = "${teamVO.description}";
    
	chatComment[1] = "<p>"+ team_nm +" 팀을 고르셨군요!" +
	"<br><br>"+ description +
	"<br><br>자! 이제 본격적으로 HACKTORIAL WORLD로 들어가볼까요?" +
	"</p>";
    </script>
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
                            ${teamVO.team_nm } TEAM SELECTED
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </div>
<%@ include file="/resources/include/chatPopUp.jsp" %>
</section>
</body>
</html>
