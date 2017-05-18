<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/inc/headerBase.jsp"%>
<c:set var="browserTitle" value="Hacktorial World (핵토리얼 월드)" />
<c:set var="menuTitle" value="Hacktorial World -튜토리얼-" />
<!DOCTYPE html>
<html lang="ko">
<head>
    <%@ include file="/resources/include/header.jsp"%>
    <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/quest.css" />">
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
            <form>
                <fieldset>
                    <legend>퀘스트입력</legend>
                    <div class="btn-wrap">
                        <button type="button" id="quest-write-btn" class="write-btn">등록</button>
                        <button type="button" id="quest-revise-btn" class="revise-btn">수정</button>
                        <button type="button" id="quest-delete-btn" class="delete-btn">삭제</button>
                    </div>
                    <table class="writeForm">
                        <tbody>
                        <tr>
                            <th>문제유형</th>
                            <td colspan="3">
                                <input type="radio" name="type" value="B" id="type_B" ><label for="type_B">문제</label>
                                <input type="radio" name="type" value="D" id="type_D" ><label for="type_D">다운로드</label>
                                <input type="radio" name="type" value="S" id="type_S" ><label for="type_S">서버</label>
                            </td>
                        </tr>
                        <tr>
                            <th>난이도</th>
                            <td colspan="3">
                                <input type="radio" name="level" value="10" id="level_10"><label for="level_10">Beginner</label>
                                <input type="radio" name="level" value="20" id="level_20"><label for="level_20">Beginner</label>
                                <input type="radio" name="level" value="30" id="level_30"><label for="level_30">Beginner</label>
                                <input type="radio" name="level" value="40" id="level_40"><label for="level_40">Beginner</label>
                            </td>
                        </tr>
                        <tr>
                            <th>지역선택</th>
                            <td colspan="3">
                                <select name="region">
                                    <option>::지역선택::</option>
                                    <option value="1">제주자치도 > 제주시</option>
                                    <option value="2">제주자치도 > 서귀포시</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <th>제목</th>
                            <td>
                                <input type="text" name="title" class="long-textBox" >
                            </td>
                            <th>포인트</th>
                            <td><input type="number" value="0" ></td>
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
                                <input type="text" class="medium-textBox">&nbsp;
                                <button type="button" id="tag-plus-btn" class="tag-btn">
                                    <img src="/haw_html/admin/images/check-btn.png" alt="체크 버튼">
                                </button>
                                <div class="tags">
                                    <span >#jeju</span>
                                    <span >#asia</span>
                                    <span >#beginner</span>
                                    <span >#제주도</span>
                                    <span >#frompotter</span>
                                    <span >#computerscience</span>
                                    <span >#jeju</span>
                                    <span >#asia</span>
                                    <span >#beginner</span>
                                    <span >#제주도</span>
                                    <span >#frompotter</span>
                                    <span >#computerscience</span>
                                    <span >#jeju</span>
                                    <span >#asia</span>
                                    <span >#beginner</span>
                                    <span >#제주도</span>
                                    <span >#frompotter</span>
                                    <span >#computerscience</span>
                                    <span >#jeju</span>
                                    <span >#asia</span>
                                    <span >#beginner</span>
                                    <span >#제주도</span>
                                    <span >#frompotter</span>
                                    <span >#computerscience</span>
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