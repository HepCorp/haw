<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/inc/headerBase.jsp"%>
<c:set var="browserTitle" value="Hacktorial World (핵토리얼 월드)" />
<c:set var="menuTitle" value="Hacktorial World -로그인-" />
<!DOCTYPE html>
<html lang="ko">
<head>
    <%@ include file="/resources/include/header.jsp"%>
    <link type="text/css" rel="stylesheet" href="/resources/css/member.css">
    <script type="text/javascript" charset="UTF-8" src="/resources/js/member.js"></script>
</head>
∂<body>
<section>
    <h2><img src="/resources/images/title.png" alt="핵토리얼 월드"></h2>
    <div class="contentsWrap">
        <div class="loginWrap">
            <div class="login">
                <div class="loginOutline">
                    <h3>PLEASE ENTER LOG IN INFORMATIONS</h3>
                    <div class="loginBox">
                        <form action="">
                            <fieldset>
                                <legend>로그인</legend>
                                <div class="loginErrors">
                                    <span id="emailError"><img src="/resources/images/warning-mark.png" alt="이메일 형식 부적합 경고 마크"></span>
                                    <span id="passError1"><img src="/resources/images/warning-mark.png" alt="이메일 형식 부적합 경고 마크"></span>
                                </div>
                                <p id="errorMessages">아이디 또는 비밀번호가 일치하지 않습니다.</p>
                                <p>
                                    <label for="loginEmail">E-MAIL</label>
                                    <input type="email" name="loginEmail" id="loginEmail" autofocus="autofocus">
                                </p>
                                <p>
                                    <label for="loginPasswd">PASSWORD</label>
                                    <input type="password" name="loginPasswd" id="loginPasswd" autofocus="autofocus">
                                </p>
                                <span id="find">
                                <input type="button" name="registerBtn" id="registerBtn" value="회원가입">
                                <input type="button" name="findBtn" id="findBtn" value="아이디/비밀번호 찾기">
                            </span>
                                <p><input type="submit" name="login" id="login" value="LOG IN"></p>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>