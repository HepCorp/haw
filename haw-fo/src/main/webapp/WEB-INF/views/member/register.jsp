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
    <script type="text/javascript">
    function FormChkModule(f){
    	if (f.name.value == ""){
    		alert("<spring:message code='field.required.name' />");
    		f.name.focus();
    		return false;
    	}
    	if (f.email.value == ""){
    		alert("<spring:message code='field.required.email' />");
    		f.email.focus();
    		return false;
    	} else {
    		if (!pattern("email", f.email.value)) {
    			alert("<spring:message code='field.error.pattern.email' />");
    			f.email.select();
    			f.email.focus();
    			return false;
    		}
    		if (f.emailchk.value != "OK") {
    			alert("<spring:message code='field.error.email' />");
    			f.email.select();
    			f.email.focus();
    			return false;
    		}
    	}
    	if (f.password.value == "") {
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
    	if (f.re_password.value == "") {
    		alert("<spring:message code='field.required.re_password' />");
    		f.re_password.focus();
    		return false;
    	} else {
    		if (f.password.value == f.re_password.value) {
    			alert("<spring:message code='field.error.re_password' />");
    			f.re_password.select();
    			f.re_password.focus();
    			return false;
    		}
    	}
	    if (f.nickname.value == "") {
	    	alert("<spring:message code='field.required.nickname' />");
	    	f.nickname.focus();
	    	return false;
	    } else {
	    	if (f.nickchk.value != "OK") {
	    		alert("<spring:message code='field.error.nickname' />");
	    		f.nickname.select();
	    		f.nickname.focus();
	    		return false;
	    	}
	    }
    }
    </script>
</head>
<body>
<section>
    <h2><img src="/resources/images/title.png" alt="핵토리얼 월드"></h2>
    <div class="contentsWrap">
        <div class="registerWrap">
            <div class="register">
                <div class="registerOutline">
                    <h3>PLEASE ENTER USER INFORMATIONS</h3>
                    <form name="saveFrm" method="post" action="<c:url value='/member/save.do' />" class="form" onSubmit="return FormChkModule(this);">
                        <fieldset>
                        	<input type="hidden" name="emailchk" />
                        	<input type="hidden" name="nickchk" />
                            <legend>회원가입</legend>
                            <p>NAME <input type="text" name="name" id="name" autofocus="autofocus">
                            	<form:errors path="memberVO.name" cssClass="msgAlert" cssStyle="display:none; " />
                            </p>
                            <p>E-MAIL <input type="email" name="email" id="email" autofocus="autofocus">
                            	<form:errors path="memberVO.email" cssClass="msgAlert" cssStyle="display:none; " />
                            </p>
                            <p>PASSWORD1 <input type="password" name="password" id="password" autofocus="autofocus">
                            	<form:errors path="memberVO.password" cssClass="msgAlert" cssStyle="display:none; " />
                            </p>
                            <p>PASSWORD2 <input type="password" name="re_password" id="re_password" autofocus="autofocus">
                            	<form:errors path="memberVO.re_password" cssClass="msgAlert" cssStyle="display:none; " />
                            </p>
                            <p>NICKNAME <input type="text" name="nickname" id="nickname" autofocus="autofocus">
                            	<form:errors path="memberVO.nickname" cssClass="msgAleret" cssStyle="display:none; " />
                            </p>
                            <span class="cns">
                                <input type="button" name="cancel" id="cancel" value="CANCEL">
                                <input type="submit" name="submit" id="submit" value="SUBMIT">
                            </span>
                        </fieldset>
                    </form>
                        <p id="errorIcon"></p>
                        <p id="errorMessages"></p>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
