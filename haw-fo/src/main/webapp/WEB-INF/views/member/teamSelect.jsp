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
    function FormChkModule(f){
    	if (f.team.value == ""){
    		alert("팀을 선택해 주세요!");
    		return false;
    	}
	    if (confirm("이글 팀이 당신을 필요로합니다. 맹세의 서약을 하시겠습니까?")){
	    	return true;
	    } else {
	    	return false;
	    }
    }
    </script>
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
                                <form name="saveFrm" method="post" action="<c:url value='/member/teamSave.do' />" class="form" onSubmit="return FormChkModule(this);">
                                    <fieldset>
                                        <legend>팀선택</legend>
                                        <input type="hidden" name="team" value="1" />
                                        <p><input type="submit" name="select" id="select" value="SELECT">
                                        	<form:errors path="teamVO.team" cssClass="msgAlert" cssStyle="display:none; " />
                                        </p>
                                    </fieldset>
                                </form>
                            </div>
                        </div>
                        <!-- <div class="teamListWrap">
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
                        </div> -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="tutorialWrap">
<%@ include file="/resources/include/chatPopUp.jsp" %>
</section>
</body>
</html>
