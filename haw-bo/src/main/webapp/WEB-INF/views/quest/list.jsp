<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/inc/headerBase.jsp"%>
<c:set var="browserTitle" value="Hacktorial World (핵토리얼 월드)" />
<c:set var="menuTitle" value="Hacktorial World 관리" />
<!DOCTYPE html>
<html lang="ko">
<head>
    <%@ include file="/resources/include/header.jsp"%>
    <meta charset="UTF-8">
    <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/common.css" />">
    <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/quest.css" />">
 	<script src="https://www.w3schools.com/lib/w3data.js"></script>
    <title>HA.W ADMIN</title>
</head>
<body>
<div id="wrapper">
     <%@ include file="/resources/include/left_menu.jsp"%>
    <!-- page-content-wrapper -->
    <div id="page-content-wrapper">
        <%@ include file="/resources/include/top_search.jsp"%>
        <h2 class="main-title">문제</h2>

        <!-- content-wrap -->
        <div class="content-wrap">
            <div class="btn-wrap">
                <a href="<c:url value='/quest/write.do' />"><button type="button" id="quest-write-btn" class="write-btn">등록</button></a>
                <button type="button" id="quest-revise-btn" class="revise-btn">수정</button>
                <button type="button" id="quest-delete-btn" class="delete-btn">삭제</button>
            </div>
            <div class="list-wrapper quest-list">
                <table class="quest-info-title">
                    <tr class="quest-info-title-wrap">
                        <td class="title-type01">번호</td>
                        <td class="title-type02">지역</td>
                        <td class="title-type02">난이도</td>
                        <td class="title-type01">타입</td>
                        <td class="title-type03">제목</td>
                        <td class="title-type03">플래그</td>
                        <td class="title-type01">완료</td>
                        <td class="title-type01">Point</td>
                        <td class="title-type01">이름</td>
                        <td class="title-type02">등록일</td>
                        <td class="title-type01">수정</td>
                    </tr>
                </table>
                <div class="each-list-wrapper">
                    <div class="list-wrapper list-content">
                        <table class="quest-info-content">
                            <tr class="mission-info-content-wrap">
                               	<c:forEach items="${questList }" var="vo">
                                <td class="content-type01">${vo.quest_no}</td>
                                <td class="content-type02">${vo.region_str}</td>
                                <td class="content-type02">Beginner</td>
                                <td class="content-type01"><img src="<c:url value="/resources/images/quest1-icon.png" />" alt="타입1 아이콘"></td>
                                <td class="content-type03">${vo.quest_nm}</td>
                                <td class="content-type03">${vo.auth}</td>
                                <td class="content-type01">70%</td>
                                <td class="content-type01">500pt</td>
                                <td class="content-type01">유가람</td>
                                <td class="content-type02">2017/05/22</td>
                                </c:forEach>
                                <!-- DB에서 퀘스트 리스트를 불러오기 위한 기존 하드코딩 데이터 주석처리 by JongMoon (2017.08.08) -->
                                <!--  
                                <td class="content-type01">1</td>
                                <td class="content-type02">제주도 서귀포시</td>
                                <td class="content-type02">Beginner</td>
                                <td class="content-type01"><img src="<c:url value="/resources/images/quest1-icon.png" />" alt="타입1 아이콘"></td>
                                <td class="content-type03">QUEST1 (3)</td>
                                <td class="content-type03">HEP{i_got_a_boy}</td>
                                <td class="content-type01">70%</td>
                                <td class="content-type01">500pt</td>
                                <td class="content-type01">유가람</td>
                                <td class="content-type02">2017/05/22</td>
                                -->
                                <td class="content-type01"><button type="button"><img src="<c:url value="/resources/images/modify-btn.png" />" alt="수정 버튼 아이콘"></button></td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="each-list-wrapper">
                    <div class="list-wrapper list-content">
                        <table class="quest-info-content">
                            <tr class="mission-info-content-wrap">
                                <td class="content-type01">2</td>
                                <td class="content-type02">제주도 서귀포시</td>
                                <td class="content-type02">Beginner</td>
                                <td class="content-type01"><img src="<c:url value="/resources/images/quest1-icon.png" />" alt="타입1 아이콘"></td>
                                <td class="content-type03">QUEST1 (3)</td>
                                <td class="content-type03">HEP{i_got_a_boy}</td>
                                <td class="content-type01">70%</td>
                                <td class="content-type01">500pt</td>
                                <td class="content-type01">유가람</td>
                                <td class="content-type02">2017/05/22</td>
                                <td class="content-type01"><button type="button"><img src="<c:url value="/resources/images/modify-btn.png" />" alt="수정 버튼 아이콘"></button></td>
                            </tr>
                        </table>
                    </div>
                   <div class="list-wrapper contents-detail-title">
                        <table class="detail-info">
                            <tr class="detail-info-title-wrap">
                                <td class="detail-title-type01">번호</td>
                                <td class="detail-title-type01">From</td>
                                <td class="detail-title-type04">종합문제</td>
                                <td class="detail-title-type03">플래그</td>
                                <td class="detail-title-type01">Point</td>
                                <td class="detail-title-type01">이름</td>
                                <td class="detail-title-type02">등록일</td>
                            </tr>
                        </table>
                    </div>
                    <div class="list-wrapper contents-detail-content">
                        <table class="detail-info">
                            <tr class="detail-info-content-wrap">
                                <td class="detail-content-type01">2-1</td>
                                <td class="detail-content-type01">Potter</td>
                                <td class="detail-content-type04">친구가 파일을 보내왔는데, 어떻게 열어보는지 모르겠어요.
                                    안쪽에 메시지를 적어뒀다고 하는데...메시지를 찾아주세요.</td>
                                <td class="detail-content-type03">MAssAge</td>
                                <td class="detail-content-type01">10pt</td>
                                <td class="detail-content-type01">손원빈</td>
                                <td class="detail-content-type02">2017/05/22</td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="each-list-wrapper">
                    <div class="list-wrapper list-content">
                        <table class="quest-info-content">
                            <tr class="mission-info-content-wrap">
                                <td class="content-type01">3</td>
                                <td class="content-type02">제주도 서귀포시</td>
                                <td class="content-type02">Beginner</td>
                                <td class="content-type01"><img src="<c:url value="/resources/images/quest1-icon.png" />" alt="타입1 아이콘"></td>
                                <td class="content-type03">QUEST1 (3)</td>
                                <td class="content-type03">HEP{i_got_a_boy}</td>
                                <td class="content-type01">70%</td>
                                <td class="content-type01">500pt</td>
                                <td class="content-type01">유가람</td>
                                <td class="content-type02">2017/05/22</td>
                                <td class="content-type01"><button type="button"><img src="<c:url value="/resources/images/modify-btn.png" />" alt="수정 버튼 아이콘"></button></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <!-- //content-wrap -->
    </div>
    <!-- /#page-content-wrapper -->
</div>
<script>
    w3IncludeHTML();
</script>
</body>
</html>