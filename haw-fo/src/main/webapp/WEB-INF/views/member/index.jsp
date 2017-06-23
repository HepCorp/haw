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
<section>
    <h2><img src="/resources/images/title.png" alt="핵토리얼 월드"></h2>
    <div class="contentsWrap">
        <div class="loginWrap">
            <div class="login">
                <div class="loginOutline">
                    <h3>PLEASE ENTER LOG IN INFORMATIONS</h3>
                    <div class="loginBox">
                        <form name="saveFrm" method="post" action="<c:url value='/member/signin.do' />" class="form" onSubmit="return FormChkModule(this);">
                            <fieldset>
                                <legend>로그인</legend>
                                <div class="loginErrors">
                                    <span id="emailError"><img src="/resources/images/warning-mark.png" alt="이메일 형식 부적합 경고 마크"></span>
                                    <span id="passwordError"><img src="/resources/images/warning-mark.png" alt="이메일 형식 부적합 경고 마크"></span>
                                </div>
                                <p id="errorMessages"></p>
                                <p>
                                    <label for="loginEmail">E-MAIL</label>
                                    <input type="email" name="email" id="email" autofocus="autofocus">
                                    <form:errors path="memberVO.email" cssClass="msgAlert" cssStyle="display:none; " />
                                </p>
                                <p>
                                    <label for="loginPasswd">PASSWORD</label>
                                    <input type="password" name="password" id="password" autofocus="autofocus">
                                    <form:errors path="memberVO.password" cssClass="msgAlert" cssStyle="display:none; " />
                                </p>
                                <span id="find">
                                <a href="<c:url value='/member/register.do' />"><input type="button" name="registerBtn" id="registerBtn" value="회원가입"></a>
                                <input type="button" name="findBtn" id="findBtn" value="아이디/비밀번호 찾기" style="display:none; ">
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