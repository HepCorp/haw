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
    <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/dashboard.css" />">
    <script src="https://www.w3schools.com/lib/w3data.js"></script>
    <title>HA.W ADMIN</title>
</head>
<body>
<div id="wrapper">
    <%@ include file="/resources/include/left_menu.jsp"%>
    <!-- page-content-wrapper -->
    <div id="page-content-wrapper">
        <%@ include file="/resources/include/top_search.jsp"%>
        <h2 class="main-title">대시보드</h2>

        <!-- content-wrap -->
        <div class="content-wrap">
            <section class="dash-wrap">
                <ul class="dash-box-wrap">
                    <li class="dash-box dash-user">
                        <ul class="dash-contents">
                            <li class="dash-con-icon">
                                <img src="<c:url value="/resources/images/user-icon.png" />" alt="">
                            </li>
                            <li class="dash-con-number blue">
                                <p>50</p>
                            </li>
                            <li class="dash-con-sub">
                                <p>수강생 정보 관리</p>
                            </li>
                        </ul>
                    </li>
                    <li class="dash-box dash-team">
                        <ul class="dash-contents">
                            <li class="dash-con-icon">
                                <img src="<c:url value="/resources/images/team-icon.png" />" alt="">
                            </li>
                            <li class="dash-con-number pink">
                                <p>10</p>
                            </li>
                            <li class="dash-con-sub">
                                <p>팀 구성 및 정보 관리</p>
                            </li>
                        </ul>
                    </li>
                    <li class="dash-box dash-question">
                        <ul class="dash-contents">
                            <li class="dash-con-icon">
                                <img src="<c:url value="/resources/images/question-icon.png" />" alt="">
                            </li>
                            <li class="dash-con-number green">
                                <p>36/108</p>
                            </li>
                            <li class="dash-con-sub">
                                <p>퀘스트 및 미션 관리</p>
                            </li>
                        </ul>
                    </li>
                    <li class="dash-box dash-location">
                        <ul class="dash-contents">
                            <li class="dash-con-icon">
                                <img src="<c:url value="/resources/images/location-icon.png" />" alt="">
                            </li>
                            <li class="dash-con-number yellow">
                                <p>1,021</p>
                            </li>
                            <li class="dash-con-sub">
                                <p>지역 오픈상태 및 연결 정보 관리</p>
                            </li>
                        </ul>
                    </li>
                    <li class="dash-box dash-badge">
                        <ul class="dash-contents">
                            <li class="dash-con-icon">
                                <img src="<c:url value="/resources/images/badge-icon.png" />" alt="">
                            </li>
                            <li class="dash-con-number violet">
                                <p>3,801</p>
                            </li>
                            <li class="dash-con-sub">
                                <p>뱃지 등록 및 클리어 미션 관리</p>
                            </li>
                        </ul>
                    </li>
                </ul>
            </section>
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