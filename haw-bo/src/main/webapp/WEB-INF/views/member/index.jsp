<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/inc/headerBase.jsp"%>
<c:set var="browserTitle" value="Hacktorial World (핵토리얼 월드)" />
<c:set var="menuTitle" value="Hacktorial World 관리 -로그인-" />
<!DOCTYPE html>
<html lang="ko">
<head>
	<%@ include file="/resources/include/header.jsp"%>
	<meta charset="UTF-8">
    <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/common.css" />">
    <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/member.css" />">
    <link type="" rel="stylesheet" href="">
    <title>HA.W ADMIN</title>
	<script type="text/javascript">
	function FormChkModule(f){
		if (f.email.value == ""){
			alert("<spring:message code='field.required.email' />");
			f.email.focus();
			return false;
		} else {
			if (!pattern("email", f.email.value)){
				alert("<spring:message code='field.error.pattern.email' />");
				f.email.select();
				f.email.focus();
				return false;
			}
		}
		if (f.password.value == ""){
			alert("<spring:message code='field.required.password' />");
			f.password.focus();
			
			return false;
		} else {
			if (!pattern("password", f.password.value)){
				alert("<spring:message code='field.error.pattern.password' />");
				f.password.select();
				f.password.focus();
				return false;
			}
		}
		return true;
		
	}
	</script>
</head>
<body>
<div id="wrapper">
    <!-- login-wrap -->
    <section class="login-wrap">
        <div class="login-box">
            <div class="login">
                <div class="login-contents">
                    <div class="login-title">
                        <img src="<c:url value="/resources/images/haw-logo130.png" />" alt="haw logo">
                        <p>로그인 정보를 입력해 주십시오</p>
                    </div>
                    <div class="login-form">
                        <form method="post" name="loginFrm" action="signin.do" onsubmit="return FormChkModule(this);">
                            <fieldset>
                                <legend>로그인 정보 입력</legend>
                                <p id="login-id"><input type="email" id="email" name="email" placeholder="이메일"></p>
                                <form:errors path="memberVO.email" cssClass="msgAlert" cssStyle="display:none; " />
                                <p id="login-pass"><input type="password" id="password" name="password" placeholder="비밀번호"></p>
                                <form:errors path="memberVO.password" cssClass="msgAlert" cssStyle="display:none; " />
                                <p id="login-btn"><button type="submit" id="login-submit">Log In</button></p>
                                <p id="register-btn"><a href="<c:url value='/member/register.do' />">회원가입</a></p>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- //content-wrap -->
</div>
</body>
</html>