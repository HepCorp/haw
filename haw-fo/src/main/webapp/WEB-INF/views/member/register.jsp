<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/inc/headerBase.jsp"%>
<c:set var="browserTitle" value="Hacktorial World (핵토리얼 월드)" />
<c:set var="menuTitle" value="Hacktorial World -회원가입-" />
<!DOCTYPE html>
<html lang="ko">
<head>
    <%@ include file="/resources/include/header.jsp"%>
    <link type="text/css" rel="stylesheet" href="/resources/css/register.css">
    <script type="text/javascript" charset="UTF-8" src="/resources/js/member.js"></script>
    <script type="text/javascript">var page = "register";</script>
</head>
<body>
<section>
    <h2><img src="/resources/images/title.png" alt="핵토리얼 월드"></h2>
    <div class="contentsWrap">
        <div class="registerWrap">
            <div class="register">
                <div class="registerOutline">
                    <h3>PLEASE ENTER USER INFORMATIONS</h3>
                    <form action="">
                        <fieldset>
                            <legend>회원가입</legend>
                            <p>NAME <input type="text" name="name" id="name" autofocus="autofocus"></p>
                            <p>E-MAIL <input type="email" name="email" id="email" autofocus="autofocus"></p>
                            <p>PASSWORD1 <input type="password" name="passWd1" id="passWd1" autofocus="autofocus"></p>
                            <p>PASSWORD2 <input type="password" name="passWd2" id="passwd2" autofocus="autofocus"></p>
                            <p>NICKNAME <input type="text" name="id" id="id" autofocus="autofocus"></p>
                            <span class="cns">
                                <input type="button" name="cancel" id="cancel" value="CANCEL">
                                <input type="submit" name="submit" id="submit" value="SUBMIT">
                            </span>
                        </fieldset>
                    </form>
                        <p id="errorIcon"></p>
                        <p id="errorMessages">사용할 수 없는 아이디입니다.</p>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
