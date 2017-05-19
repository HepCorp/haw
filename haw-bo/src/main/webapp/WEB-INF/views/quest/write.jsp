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
    	for (var i=0; i<objLength(f.level); i++){
    		if (f.level[i].checked){
    			level++;
    		}
    	}
    	
    	if (type == 0){
    		alert("<spring:message code='field.required.type' />");
    		f.type[0].focus();
    		return false;
    	}
    	return false;
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
            <form method="post" action="questSave.do" name="questFrm" onSubmit="return FormChkModule(this);">
                <fieldset>
                    <legend>퀘스트입력</legend>
                    <div class="btn-wrap">
                        <button type="submit" id="quest-write-btn" class="write-btn">등록</button>
                        <button type="submit" id="quest-write-btn" class="delete-btn">취소</button>
                        <!-- <button type="button" id="quest-revise-btn" class="revise-btn">수정</button> -->
                        <!-- <button type="button" id="quest-delete-btn" class="delete-btn">삭제</button> -->
                    </div>
                    <table class="writeForm">
                        <tbody>
                        <tr>
                            <th>문제유형</th>
                            <td colspan="3">
                            <input type="radio" name="gubun" value="fff" />
                            <c:forEach items="${typeList }" var="vo">
                                <input type="radio" name="type" value="${vo.gubun_cd }" id="type_${vo.gubun_cd }" ><label for="type_${vo.gubun_cd }">${vo.gubun_nm }</label>
                            </c:forEach>
                            </td>
                        </tr>
                        <tr>
                            <th>난이도</th>
                            <td colspan="3">
                            <c:forEach items="${levelList }" var="vo">
                                <input type="radio" name="level" value="${vo.gubun_cd }" id="level_${vo.gubun_cd }"><label for="level_${vo.gubun_cd }">${vo.gubun_nm }</label>
                            </c:forEach>
                            </td>
                        </tr>
                        <tr>
                            <th>지역선택</th>
                            <td colspan="3">
                                <select name="region">
                                    <option>::지역선택::</option>
                                <c:forEach items="${regionList }" var="vo">
                                	<option value="${vo.region_no }">${vo.city_nm } > ${vo.region_nm }</option>
                                </c:forEach>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <th>제목</th>
                            <td>
                                <input type="text" name="title" class="long-textBox" maxlength="200" >
                            </td>
                            <th>포인트</th>
                            <td><input type="number" name="point" value="0" max="1000" min="0" step="10" ></td>
                        </tr>
                        <tr>
                            <th>플래그</th>
                            <td>
                                <input type="text" name="auth" class="long-textBox">
                            </td>
                            <th>클리어조건</th>
                            <td><input type="number" value="0"></td>
                        </tr>
                        <tr>
                            <th>설명</th>
                            <td colspan="3">
                                <input type="text" name="description" class="long-textBox" >
                            </td>
                        </tr>
                        <tr>
                            <th>태그</th>
                            <td colspan="3">
                            	<input type="hidden" name="tag_str" value="|" />
                                <input type="text" name="tag_nm" class="medium-textBox">&nbsp;
                                <button type="button" id="tag-plus-btn" class="tag-btn">
                                    <img src="/haw_html/admin/images/check-btn.png" alt="체크 버튼">
                                </button>
                                <div class="tags">
                                <c:forEach items="${tagList }" var="vo">
                                    <span >#${vo.tag_nm }</span>
                                </c:forEach>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th class="high">최초오픈</th>
                            <td>
                                <label class="toggleSwitch" onclick="" >
                                    <input type="checkbox" checked />
                                    <span>
                                        <span>OFF</span>
                                        <span>ON</span>
                                    </span>
                                    <a></a>
                                </label>
                            </td>
                            <th>오픈조건</th>
                            <td><input type="number" value="0"></td>
                        </tr>
                        </tbody>
                    </table>
                </fieldset>
            </form>
        </div>
        <!-- //content-wrap -->
    </div>
    <!-- //page-content-wrapper -->
</div>
</body>
</html>