<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <link type="text/css" rel="stylesheet" href="/haw_html/css/common.css">
    <link type="text/css" rel="stylesheet" href="/haw_html/css/login.css">
    <title>Hacktorial World - Log in</title>
</head>
<body>
<section>
    <h2><img src="/haw_html/images/title.png" alt="핵토리얼 월드"></h2>
    <div class="contentsWrap">
        <div class="loginWrap">
            <div class="login">
                <div class="loginOutline">
                    <h3>PLEASE ENTER LOG IN INFORMATIONS</h3>
                    <form action="">
                        <fieldset>
                            <legend>로그인</legend>
                            <p>ID <input type="text" name="id" id="id"></p>
                            <p>PASSWORD <input type="password" name="passWd1" id="passWd1"></p>
                            <span id="find">
                                <input type="button" name="registerBtn" id="registerBtn" value="REGISTER">
                                <input type="button" name="findBtn" id="findBtn" value="FIND ID/PASSWORD">
                            </span>
                            <p><input type="submit" name="login" id="login" value="LOG IN"></p>
                        </fieldset>
                    </form>
                    <p id="errorIcon"></p>
                    <p id="errorMessages">아이디 또는 비밀번호가 일치하지 않습니다.</p>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>