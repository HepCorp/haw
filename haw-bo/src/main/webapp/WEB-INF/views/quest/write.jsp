<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/inc/headerBase.jsp"%>
<c:set var="browserTitle" value="Hacktorial World (핵토리얼 월드)" />
<c:set var="menuTitle" value="Hacktorial World -튜토리얼-" />
<!DOCTYPE html>
<html lang="ko">
<head>
    <%@ include file="/resources/include/header.jsp"%>
    <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/quest.css" />">
    <script type="text/javascript" charset="UTF-8" src="<c:url value="/resources/js/quest.js" />"></script>
    <script type="text/javascript">
    function FormChkModule(f){
    	var type = 0;
    	for (var i=0; i<objLength(f.type); i++){
    		if (f.type[i].checked){
    			type++;
    		}
    	}
    	var level = 0;
    	for (var i=0; i<objLength(f.level_str); i++){
    		if (f.level_str[i].checked){
    			level++;
    		}
    	}
    	
    	if (type == 0){
    		alert("<spring:message code='field.required.type' />");
    		f.type[0].focus();
    		return false;
    	}
    	if (level == 0){
    		alert("<spring:message code='field.required.level' />");
    		f.level_str[0].focus();
    		return false;
    	}
    	if (f.region_str.value == ""){
    		alert("<spring:message code='field.required.region_no' />");
    		f.region_str.focus();
    		return false;
    	}
    	if (f.quest_nm.value == ""){
    		alert("<spring:message code='field.required.quest_nm' />");
    		f.quest_nm.focus();
    		return false;
    	}
    	if (f.point_str.value == ""){
    		alert("<spring:message code='field.required.point_no' />");
    		f.point_str.select();
    		f.point_str.focus();
    		return false;
    	}
    	if (f.auth.value == ""){
    		alert("<spring:message code='field.required.auth' />");
    		f.auth.focus();
    		return false;
    	}
    	if (f.quest_str.value == ""){
    		alert("<spring:message code='field.required.quest_clear' />");
    		f.quest_str.select();
    		f.quest_str.focus();
    		return false;
    	}
    	if (f.description.value == ""){
    		alert("<spring:message code='field.required.description' />");
    		f.description.focus();
    		return false;
    	}
    	if (!f.open_str.checked && (f.badge_str.value == "0" || f.badge_str.value == "")){
    		alert("<spring:message code='field.error.badge_cnt' />");
    		f.badge_str.select();
    		f.badge_str.focus();
    		return false;
    	}
    	f.submit();
    }
    function tagFormChkModule(f){
    	return false;
    }
    </script>
</head>
<body>
<div id="wrapper">
	<%@ include file = "/resources/include/left_menu.jsp" %>
    <!-- page-content-wrapper -->
    <div id="page-content-wrapper">
    	<%@ include file = "/resources/include/top_search.jsp" %>
        <h2 class="main-title">문제</h2>

        <!-- content-wrap -->
        <div class="content-wrap">
            <form method="post" action="questSave.do" name="questFrm">
                <fieldset>
                    <legend>퀘스트입력</legend>
                    <input type="hidden" name="quest_no_str" value="${questVO.quest_no }" >
                    
                    
                    <!-- 버튼 관련 소스가 2개 있는것 같은데 현재로서는 명확하지 않아 주석처리  by JongMoon (2017.08.07) -->
                    <!--  
                    <div class="btn-wrap">
                    	<c:if test="${questVO.quest_no == null }">
                        <button type="button" id="quest-write-btn" class="write-btn">등록</button>
                        <button type="button" id="quest-write-btn" class="delete-btn">취소</button>
                        </c:if>
                        <c:if test="${questVO.quest_no > 0 }">
                        <button type="button" id="quest-revise-btn" class="revise-btn">수정</button>
                        <button type="button" id="quest-delete-btn" class="delete-btn" dir="<c:url value="/quest/delete.do" />" data-seq-no="${questVO.quest_no }">삭제</button>
                        </c:if>
                    </div>
                    -->
                    <table class="writeForm">
                        <tbody>
                        <tr>
                            <th>문제유형</th>
                            <td colspan="3">
                            <c:forEach items="${typeList }" var="vo">
                                <input type="radio" name="type" value="${vo.gubun_cd }" id="type_${vo.gubun_cd }" ${vo.gubun_cd eq questVO.type ? 'checked' : '' }><label for="type_${vo.gubun_cd }">${vo.gubun_nm }</label>
                            </c:forEach>
                            <form:errors path="questVO.type" cssClass="msgAlert" cssStyle="display:none; " />
                            </td>
                        </tr>
                        <tr>
                            <th>난이도</th>
                            <td colspan="3">
                            <c:forEach items="${levelList }" var="vo">
                                <input type="radio" name="level_str" value="${vo.gubun_cd }" id="level_${vo.gubun_cd }" ${vo.gubun_cd eq questVO.level ? 'checked' : '' }><label for="level_${vo.gubun_cd }">${vo.gubun_nm }</label>
                            </c:forEach>
                            <form:errors path="questVO.level" cssClass="msgAlert" cssStyle="display:none; " />
                            </td>
                        </tr>
                        <tr>
                            <th>지역선택</th>
                            <td colspan="3">
                                <select name="region_str">
                                    <option>::지역선택::</option>
                                <c:forEach items="${regionList }" var="vo">
                                	<option value="${vo.region_no }" ${vo.region_no == questVO.region_no ? 'selected' : '' }>${vo.city_nm } > ${vo.region_nm }</option>
                                </c:forEach>
                                </select>
                                <form:errors path="questVO.region_no" cssClass="msgAlert" cssStyle="display:none; " />
                            </td>
                        </tr>
                        <tr>
                            <th>제목</th>
                            <td>
                                <input type="text" name="quest_nm" class="long-textBox" maxlength="50" value="${questVO.quest_nm }" >
                                <form:errors path="questVO.quest_nm" cssClass="msgAlert" cssStyle="display:none; " />
                            </td>
                            <th>포인트</th>
                            <td>
                            	<input type="number" name="point_str" value="${questVO.point == 0 ? '0' : questVO.point }" max="1000" min="0" step="10" >
                            	<form:errors path="questVO.point" cssClass="msgAlert" cssStyle="display:none; " />
                            </td>
                        </tr>
                        <tr>
                            <th>플래그</th>
                            <td>
                                <input type="text" name="auth" class="long-textBox" maxlength="50" value="${questVO.auth }">
                                <form:errors path="questVO.auth" cssClass="msgAlert" cssStyle="display:none; " />
                            </td>
                            <th>클리어조건</th>
                            <td>
                            	<input type="number" name="quest_str" value="${questVO.quest_clear == 0 ? '0' : questVO.quest_clear }" max="10" min="0" step="1">
                            	<form:errors path="questVO.quest_clear" cssClass="msgAlert" cssStyle="display:none; " />
                            </td>
                        </tr>
                        <tr>
                            <th>설명</th>
                            <td colspan="3">
                                <input type="text" name="description" class="long-textBox" maxlength="50" value="${questVO.description }">
                                <form:errors path="questVO.description" cssClass="msgAlert" cssStyle="display:none; " />
                            </td>
                        </tr>
                        <tr>
                            <th>태그</th>
                            <td colspan="3">
                            	<input type="text" name="tag_str" value="${questVO.tag_str }" />
                                <input type="text" name="tag_nm" class="medium-textBox">&nbsp;
                                <button type="button" id="tag-plus-btn01" class="tag-hint-btn">
                                    <img src="<c:url value="/resources/images/check-btn.png" />" alt="체크 버튼">
                                </button>
                                <div class="tags">
                                <c:forEach items="${tagList }" var="vo">
                                    <span class="tag-box"><span>#${vo.tag_nm }<button data="${vo.tag_no }" type="button" class="delete-tag">x</button></span></span>
                                </c:forEach>
                                <form:errors path="questVO.tag_str" cssClass="msgAlert" cssStyle="display:none; " />
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th class="high">최초오픈</th>
                            <td>
                                <label class="toggleSwitch" onclick="" >
                                    <input type="checkbox" name="open_str" value="true" ${questVO.open_yn == true || questVO.open_yn == null ? 'checked' : '' } />
                                    <span>
                                        <span>OFF</span>
                                        <span>ON</span>
                                    </span>
                                    <a></a>
                                </label>
                            </td>
                            <th>오픈조건</th>
                            <td>
                            	<input type="number" name="badge_str" value="${questVO.badge_cnt == 0 ? '0' : questVO.badge_cnt }" max="10" min="0" step="1">
                            	<form:errors path="questVO.badge_cnt" cssClass="msgAlert" cssStyle="display:none; " />
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </fieldset>
                <!-- 테스트를 위한 div 태그 위치 조정 by JongMoon (2017.08.07) -->
                <div class="btn-wrap">
            		<button type="submit" id="quest-write-btn02" class="write-btn">추가</button>
            		<button type="button" id="quest-revise-btn02" class="revise-btn">수정</button>
            		<button type="button" id="quest-delete-btn02" class="delete-btn">삭제</button>
        		</div>
            </form>
        </div>
        <!-- //content-wrap -->
        
        <!--mission-list-wrap-->
        <div class="list-wrapper">
            <table class="mission-info">
                <tr class="mission-info-wrap">
                    <td class="info-type01">문제</td>
                    <td class="info-type01">10 pt</td>
                    <td class="info-type03">예전에 사용하던 서버에서 파일을 하나 찾아주세요</td>
                    <td class="info-type01">00:30</td>
                    <td class="info-type02">#seogwipo, #asia, #beginner</td>
                </tr>
            </table>
        </div>
        <div class="list-wrapper">
            <table class="mission-info">
                <tr class="mission-info-wrap">
                    <td class="info-type01">문제</td>
                    <td class="info-type01">10 pt</td>
                    <td class="info-type03">예전에 사용하던 서버에서 파일을 하나 찾아주세요</td>
                    <td class="info-type01">00:30</td>
                    <td class="info-type02">#seogwipo, #asia, #beginner</td>
                </tr>
            </table>
        </div>
        <!--//mission-list-wrap-->        
    </div>
    <!--popup wrapper-->
    <div class="popup-wrapper" style="display:none;">
        <div class="mission-popup-wrap">
            <div class="mission-popup-layer">
                <form action="">
                    <fieldset>
                        <table class="writeForm">
                            <tr>
                                <th>문제유형</th>
                                <td colspan="5">
                                    <input type="radio" name="type" value="B" id="type_B02" ><label for="type_B02">문제</label>
                                    <input type="radio" name="type" value="D" id="type_D02" ><label for="type_D02">다운로드</label>
                                    <input type="radio" name="type" value="S" id="type_S02" ><label for="type_S02">서버</label>
                                </td>
                            </tr>
                            <tr>
                                <th>From</th>
                                <td colspan="2"><input type="text" id="mission-from" class="long-textBox"></td>
                                <th>포인트</th>
                                <td colspan="2"><input type="number" value="0" ></td>
                            </tr>
                            <tr>
                                <th>플래그</th>
                                <td colspan="5">
                                    <input type="text" name="auth" class="long-textBox">
                                </td>
                            </tr>
                            <tr>
                                <th>문제</th>
                                <td colspan="5">
                                    <textarea name="mission-write" id="mission-con-area" cols="200" rows="50"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <th>링크</th>
                                <td colspan="5"><input type="text" id="mission-link" class="long-textBox"></td>
                            </tr>
                            <tr>
                                <th>이미지</th>
                                <td colspan="2">
                                    <span>
                                        <img src="<c:url value="/resources/images/file.png" />" class="fileIcon" alt="파일다운 아이콘">
                                        <a class="fileName" href="">image_file.png</a>
                                        <button type="button" class="delete-attach">x</button>
                                    </span>
                                    <button type="button" class="attach-ok">이미지첨부</button>
                                </td>
                                <th>제한시간</th>
                                <td colspan="2">
                                    <select name="time-limit" id="mission-time">
                                        <option value="time-value">5분</option>
                                        <option value="time-value">10분</option>
                                        <option value="time-value">15분</option>
                                        <option value="time-value">20분</option>
                                        <option value="time-value">25분</option>
                                        <option value="time-value">30분</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <th>첨부파일</th>
                                <td colspan="2">
                                        <span>
                                            <img src="<c:url value="/resources/images/file.png" />" class="fileIcon" alt="파일다운 아이콘">
                                            <a class="fileName" href="">attach_file.zip</a>
                                            <button type="button" class="delete-attach">x</button>
                                        </span>
                                    <button type="button" class="attach-ok">파일첨부</button>
                                </td>
                                <th>힌트포인트</th>
                                <td colspan="2">
                                    <input type="number" value="0">
                                </td>
                            </tr>
                            <tr>
                                <th>힌트</th>
                                <td colspan="5">
                                    <input type="text" class="medium-textBox">&nbsp;
                                    <button type="button" id="hint-plus-btn" class="tag-hint-btn">
                                        <img src="<c:url value="/resources/images/check-btn.png" />" alt="체크 버튼">
                                    </button>
                                    <div class="hint-wrapper">
                                        <span class="hint-view-wrapper">
                                            <span class="hint-view">힌트다 힌트!</span>
                                            <button type="button" class="delete-hint">x</button>
                                        </span>
                                        <span class="hint-view-wrapper">
                                            <span class="hint-view">이미지의 좌측 상단을 잘 살펴보세요</span>
                                            <button type="button" class="delete-hint">x</button>
                                        </span>
                                        <span class="hint-view-wrapper">
                                            <span class="hint-view">첨부파일을 확인해보세요!</span>
                                            <button type="button" class="delete-hint">x</button>
                                        </span>
                                        <span class="hint-view-wrapper">
                                            <span class="hint-view">첨부파일을 확인해보세요!</span>
                                            <button type="button" class="delete-hint">x</button>
                                        </span>
                                        <span class="hint-view-wrapper">
                                            <span class="hint-view">첨부파일을 확인해보세요!</span>
                                            <button type="button" class="delete-hint">x</button>
                                        </span>
                                        <span class="hint-view-wrapper">
                                            <span class="hint-view">첨부파일을 확인해보세요!</span>
                                            <button type="button" class="delete-hint">x</button>
                                        </span>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th>태그</th>
                                <td colspan="5">
                                    <input type="text" class="medium-textBox">&nbsp;
                                    <button type="button" id="tag-plus-btn02" class="tag-hint-btn">
                                        <img src="<c:url value="/resources/images/check-btn.png" />" alt="체크 버튼">
                                    </button>
                                    <div class="tags">
                                    <span class="tag-box">
                                            <span >#jeju<button type="button" class="delete-tag">x</button></span></span>
                                        <span class="tag-box">
                                            <span >#asia<button type="button" class="delete-tag">x</button></span>
                                    </span>
                                        <span class="tag-box">
                                            <span >#beginner<button type="button" class="delete-tag">x</button></span>
                                    </span>
                                        <span class="tag-box">
                                            <span >#제주도<button type="button" class="delete-tag">x</button></span>
                                    </span>
                                        <span class="tag-box">
                                            <span >#frompotter<button type="button" class="delete-tag">x</button></span>
                                    </span>
                                        <span class="tag-box">
                                            <span >#computerscience<button type="button" class="delete-tag">x</button></span>
                                    </span>
                                        <span class="tag-box">
                                            <span >#jeju<button type="button" class="delete-tag">x</button></span>
                                    </span>
                                        <span class="tag-box">
                                            <span >#asia<button type="button" class="delete-tag">x</button></span>
                                    </span>
                                        <span class="tag-box">
                                            <span >#beginner<button type="button" class="delete-tag">x</button></span>
                                    </span>
                                        <span class="tag-box">
                                            <span >#제주도<button type="button" class="delete-tag">x</button></span>
                                    </span>
                                        <span class="tag-box">
                                            <span >#frompotter<button type="button" class="delete-tag">x</button></span>
                                    </span>
                                        <span class="tag-box">
                                            <span >#computerscience<button type="button" class="delete-tag">x</button></span>
                                    </span>
                                        <span class="tag-box">
                                            <span >#jeju<button type="button" class="delete-tag">x</button></span>
                                    </span>
                                        <span class="tag-box">
                                            <span >#asia<button type="button" class="delete-tag">x</button></span>
                                    </span>
                                        <span class="tag-box">
                                            <span >#beginner<button type="button" class="delete-tag">x</button></span>
                                    </span>
                                        <span class="tag-box">
                                            <span >#제주도<button type="button" class="delete-tag">x</button></span>
                                    </span>
                                        <span class="tag-box">
                                            <span >#frompotter<button type="button" class="delete-tag">x</button></span>
                                    </span>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <span class="mission-submit">
                            <button type="button" class="mission-write-cancel popupBtn">
                            <div class="missionCancel">
                                <div class="cancel01">
                                    <!--버튼에 hover 되었을 때, cancel02-img와 check02-img display: block, 01은 none으로 해주시면 됩니다!
                                     어떤식으로 코드를 했었는지 아직 헷갈려서 ㅠㅠ 했던 기억은 있는데 일단 급한대로..쉬운방법있으면 수정 부탁드릴게요-->
                                    <img src="<c:url value="/resources/images/cancel01.png" />" alt="취소 비활성화" class="cancel01-img missionC">
                                    <img src="<c:url value="/resources/images/cancel02.png" />" alt="취소 활성화" class="cancel02-img missionC">
                                </div>
                            </div>
                            </button>
                            <button type="button" class="mission-write-submit popupBtn">
                            <div class="missionSubmit">
                                <div class="submit01">
                                    <img src="<c:url value="/resources/images/check01.png" />" alt="제출 비활성화" class="check01-img missionS">
                                    <img src="<c:url value="/resources/images/check02.png" />" alt="제출 활성화" class="check02-img missionS">
                                </div>
                            </div>
                            </button>
                        </span>
                    </fieldset>
                </form>
            </div>
        </div>
    </div>
    <!-- /#page-content-wrapper -->
</div>
</body>
</html>