<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <link type="text/css" rel="stylesheet" href="/haw_html/admin/css/common.css">
    <link type="text/css" rel="stylesheet" href="/haw_html/admin/css/member.css">
    <title>HA.W ADMIN</title>
</head>
<body>
<div id="wrapper">
    <!-- login-wrap -->
    <section class="login-wrap">
        <div class="login-box">
            <div class="login">
                <div class="login-contents">
                    <div class="login-title">
                        <img src="/haw_html/admin/images/haw-logo130.png" alt="haw logo">
                        <p>로그인 정보를 입력해 주십시오</p>
                    </div>
                    <div class="login-form">
                        <form action="">
                            <fieldset>
                                <legend>로그인 정보 입력</legend>
                                <p id="login-id"><input type="email" id="email-input" name="email-input" placeholder="이메일"></p>
                                <p id="login-pass"><input type="password" id="pass-input" name="pass-input" placeholder="비밀번호"></p>
                                <p id="login-btn"><button type="submit" id="login-submit">Log In</button></p>
                                <p id="register-btn"><a href="">회원가입</a></p>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- //content-wrap -->
</div>
</html>