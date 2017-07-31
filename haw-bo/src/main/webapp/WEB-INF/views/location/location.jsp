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
    <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/location.css" />">
    <script type="text/javascript" src="<c:url value="/resources/js/jquery/jquery-3.2.1.min.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/jquery/jquery-ui.min.js" />"></script>
    <script type="text/javascript" src="/haw_html/admin/js/location.js"></script>
    <script src="https://www.w3schools.com/lib/w3data.js"></script>
    <title>HA.W ADMIN</title>
</head>
<body>
<div id="wrapper">
    <div w3-include-html="/haw_html/admin/include/left_menu.html"></div>
    <!-- page-content-wrapper -->
    <div id="page-content-wrapper">
        <div w3-include-html="/haw_html/admin/include/top_search.html"></div>
        <h2 class="main-title">지역오픈</h2>

        <!-- content-wrap -->
        <div class="content-wrap">
            <form action="" class="selection">
                <fieldset>
                    <legend>지역선택</legend>
                    <section class="location-wrap">
                        <article class="continent-wrap">
                            <h3 class="loca-title">대륙</h3>
                            <div class="loca-con-wrap">
                                <input type="radio" name="continent" id="continent01" checked><label for="continent01">아시아</label>
                                <input type="radio" name="continent" id="continent02"><label for="continent02">유럽</label>
                                <input type="radio" name="continent" id="continent03"><label for="continent03">중동</label>
                                <input type="radio" name="continent" id="continent04"><label for="continent04">아프리카</label>
                                <input type="radio" name="continent" id="continent05"><label for="continent05">북아메리카</label>
                                <input type="radio" name="continent" id="continent06"><label for="continent06">남아메리카</label>
                                <input type="radio" name="continent" id="continent07"><label for="continent07">오세아니아</label>
                            </div>
                        </article>
                        <article class="nation-wrap nation-asia">
                            <h3 class="loca-title">나라</h3>
                            <div class="loca-con-wrap scroll-box">
                                <input type="radio" name="nation" id="nation01"><label for="nation01">네팔</label>
                                <input type="radio" name="nation" id="nation02" checked><label for="nation02">대한민국</label>
                                <input type="radio" name="nation" id="nation03"><label for="nation03">동티모르</label>
                                <input type="radio" name="nation" id="nation04"><label for="nation04">라오스</label>
                                <input type="radio" name="nation" id="nation05"><label for="nation05">러시아</label>
                                <input type="radio" name="nation" id="nation06"><label for="nation06">마카오</label>
                                <input type="radio" name="nation" id="nation07"><label for="nation07">말레이시아</label>
                                <input type="radio" name="nation" id="nation08"><label for="nation08">몰디브</label>
                                <input type="radio" name="nation" id="nation09"><label for="nation09">몽골</label>
                                <input type="radio" name="nation" id="nation10"><label for="nation10">미얀마</label>
                                <input type="radio" name="nation" id="nation11"><label for="nation11">방글라데시</label>
                                <input type="radio" name="nation" id="nation12"><label for="nation12">베트남</label>
                                <input type="radio" name="nation" id="nation13"><label for="nation13">부탄</label>
                                <input type="radio" name="nation" id="nation14"><label for="nation14">브루나이</label>
                                <input type="radio" name="nation" id="nation15"><label for="nation15">스리랑카</label>
                                <input type="radio" name="nation" id="nation16"><label for="nation16">싱카폴</label>
                                <input type="radio" name="nation" id="nation17"><label for="nation17">우즈베키스탄</label>
                                <input type="radio" name="nation" id="nation18"><label for="nation18">인도</label>
                                <input type="radio" name="nation" id="nation19"><label for="nation19">인도네시아</label>
                                <input type="radio" name="nation" id="nation20"><label for="nation20">인도양지역</label>
                                <input type="radio" name="nation" id="nation21"><label for="nation21">일본</label>
                                <input type="radio" name="nation" id="nation22"><label for="nation22">중국</label>
                                <input type="radio" name="nation" id="nation23"><label for="nation23">카자흐스탄</label>
                                <input type="radio" name="nation" id="nation24"><label for="nation24">캄보디아</label>
                                <input type="radio" name="nation" id="nation25"><label for="nation25">키르기스스탄</label>
                                <input type="radio" name="nation" id="nation26"><label for="nation26">타이</label>
                                <input type="radio" name="nation" id="nation27"><label for="nation27">타이완</label>
                                <input type="radio" name="nation" id="nation28"><label for="nation28">타지키스탄</label>
                                <input type="radio" name="nation" id="nation29"><label for="nation29">투르크메니스탄</label>
                                <input type="radio" name="nation" id="nation30"><label for="nation30">파키스탄</label>
                                <input type="radio" name="nation" id="nation31"><label for="nation31">필리핀</label>
                                <input type="radio" name="nation" id="nation32"><label for="nation32">홍콩</label>
                            </div>
                        </article>
                        <article class="nation-wrap nation-eu">
                            <h3 class="loca-title">나라</h3>
                            <div class="loca-con-wrap scroll-box">
                                <input type="radio" name="nation" id="nation011"><label for="nation011">그리스</label>
                                <input type="radio" name="nation" id="nation012"><label for="nation012">네덜란드</label>
                                <input type="radio" name="nation" id="nation013"><label for="nation013">노르웨이</label>
                            </div>
                        </article>
                        <article class="nation-wrap nation-na">
                            <h3 class="loca-title">나라</h3>
                            <div class="loca-con-wrap scroll-box">
                                <input type="radio" name="nation" id="nation021"><label for="nation021">그린란드</label>
                                <input type="radio" name="nation" id="nation022"><label for="nation022">미국</label>
                                <input type="radio" name="nation" id="nation023"><label for="nation023">캐나다</label>
                            </div>
                        </article>
                        <article class="area-wrap area-kr">
                            <h3 class="loca-title">지역</h3>
                            <div class="loca-con-wrap scroll-box">
                                <input type="radio" name="area" id="area01"><label for="area01">강원도</label>
                                <input type="radio" name="area" id="area02"><label for="area02">경기도</label>
                                <input type="radio" name="area" id="area03"><label for="area03">경상남도</label>
                                <input type="radio" name="area" id="area04"><label for="area04">경상북도</label>
                                <input type="radio" name="area" id="area05"><label for="area05">광주광역시</label>
                                <input type="radio" name="area" id="area06"><label for="area06">대구광역시</label>
                                <input type="radio" name="area" id="area07"><label for="area07">대전광역시</label>
                                <input type="radio" name="area" id="area08"><label for="area08">부산광역시</label>
                                <input type="radio" name="area" id="area09"><label for="area09">서울특별시</label>
                                <input type="radio" name="area" id="area10"><label for="area10">울산광역시</label>
                                <input type="radio" name="area" id="area11"><label for="area11">인천광역시</label>
                                <input type="radio" name="area" id="area12"><label for="area12">전라남도</label>
                                <input type="radio" name="area" id="area13"><label for="area13">전라북도</label>
                                <input type="radio" name="area" id="area14" checked><label for="area14">제주특별자치도</label>
                                <input type="radio" name="area" id="area15"><label for="area15">충청남도</label>
                                <input type="radio" name="area" id="area16"><label for="area16">충청북도</label>
                            </div>
                        </article>
                        <article class="area-wrap area-jp">
                            <h3 class="loca-title">지역</h3>
                            <div class="loca-con-wrap scroll-box">
                                <input type="radio" name="area" id="area011"><label for="area011">일본지역01</label>
                                <input type="radio" name="area" id="area012"><label for="area012">일본지역02</label>
                                <input type="radio" name="area" id="area013"><label for="area013">일본지역03</label>
                            </div>
                        </article>
                        <article class="area-wrap area-ch">
                            <h3 class="loca-title">지역</h3>
                            <div class="loca-con-wrap scroll-box">
                                <input type="radio" name="area" id="area021"><label for="area021">중국지역01</label>
                                <input type="radio" name="area" id="area022"><label for="area022">중국지역02</label>
                                <input type="radio" name="area" id="area023"><label for="area023">중국지역03</label>
                            </div>
                        </article>
                        <article class="city-wrap city-jeju">
                            <h3 class="loca-title">도시</h3>
                            <div class="loca-con-wrap">
                                <input type="radio" name="city" id="city01" checked><label for="city01">서귀포시</label>
                                <input type="radio" name="city" id="city02"><label for="city02">제주시</label>
                            </div>
                        </article>
                        <article class="city-wrap city-gg">
                            <h3 class="loca-title">도시</h3>
                            <div class="loca-con-wrap">
                                <input type="radio" name="city" id="city011"><label for="city011">용인시</label>
                                <input type="radio" name="city" id="city012"><label for="city012">성남시</label>
                                <input type="radio" name="city" id="city013"><label for="city013">수원시</label>
                                <input type="radio" name="city" id="city014"><label for="city014">고양시</label>
                                <input type="radio" name="city" id="city015"><label for="city015">의정부시</label>
                                <input type="radio" name="city" id="city016"><label for="city016">구리시</label>
                            </div>
                        </article>
                        <article class="city-wrap city-cn">
                            <h3 class="loca-title">도시</h3>
                            <div class="loca-con-wrap">
                                <input type="radio" name="city" id="city021"><label for="city021">천안시</label>
                                <input type="radio" name="city" id="city022"><label for="city022">아산시</label>
                                <input type="radio" name="city" id="city023"><label for="city023">대전시</label>
                                <input type="radio" name="city" id="city024"><label for="city024">서산시</label>
                            </div>
                        </article>
                        <span class="loca-submit">
                            <button type="button" class="select-undo-btn suBtn">
                            <div class="select-undo">
                                <div class="undo01">
                                    <img src="/haw_html/admin/images/undo01.png" alt="취소 비활성화" class="cancel01-img selectU">
                                    <img src="/haw_html/admin/images/undo02.png" alt="취소 활성화" class="cancel02-img selectU">
                                </div>
                            </div>
                            </button>
                            <button type="button" class="select-submit-btn suBtn">
                            <div class="select-submit">
                                <div class="submit01">
                                    <img src="/haw_html/admin/images/check02.png" alt="제출 비활성화" class="check01-img selectS">
                                    <img src="/haw_html/admin/images/check02.png" alt="제출 활성화" class="check02-img selectS">
                                </div>
                            </div>
                            </button>
                        </span>
                    </section>
                </fieldset>
            </form>
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