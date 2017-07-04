<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/inc/headerBase.jsp"%>
<c:set var="browserTitle" value="Hacktorial World (핵토리얼 월드)" />
<c:set var="menuTitle" value="Hacktorial World -회원가입-" />
<!DOCTYPE html>
<html lang="ko">
<head>
    <%@ include file="/resources/include/header.jsp"%>
    <link type="text/css" rel="stylesheet" href="/resources/css/member.css">
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
    	if (f.password2.value == "") {
    		alert("<spring:message code='field.required.re_password' />");
    		f.password2.focus();
    		return false;
    	} else {
    		if (f.password.value != f.password2.value) {
    			alert("<spring:message code='field.error.re_password' />");
    			f.password2.select();
    			f.password2.focus();
    			return false;
    		}
    	}
	    if (f.nickname.value == "") {
	    	alert("<spring:message code='field.required.nickname' />");
	    	f.nickname.focus();
	    	return false;
	    } else {
	    	if (!pattern("nickname", f.nickname.value)){
	    		alert("<spring:message code='field.error.pattern.nickname' />");
	    		f.nickname.select();
	    		f.nickname.focus();
	    	}
	    	if (f.nicknamechk.value != "OK") {
	    		alert("<spring:message code='field.error.nickname' />");
	    		f.nickname.select();
	    		f.nickname.focus();
	    		return false;
	    	}
	    }
	    <%-- 유효성 검사 오류로 인한 주석처리 by JongMoon (2017.06.23)
	    var chk = 0;
	    for (var i=0;i<f.terms.length;i++){
	    	if (f.terms[i].checked)	{
	    		chk++;
	    	}
	    }
	    if (chk < 2 ){
	    	alert("<spring:message code='field.required.terms' />");
	    	f.terms[0].focus();
	    	return false;
	    }
	    --%>
	    return true;
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
                    <div class="registerBox">
	                    <form name="saveFrm" method="post" action="<c:url value='/member/save.do' />" class="form" onSubmit="return FormChkModule(this);">
	                        <fieldset>
	                        	<input type="hidden" name="emailchk" id="emailchk" />
	                        	<input type="hidden" name="nicknamechk" id="nicknamechk" />
	                            <legend>회원가입</legend>
	                            <div class="reErrors">
	                                <span id="nameError"><img src="/resources/images/warning-mark.png" alt="이름 형식 부적합 경고 마크"></span>
	                                <span id="emailError"><img src="/resources/images/warning-mark.png" alt="이메일 형식 부적합 경고 마크"></span>
	                                <span id="passwordError"><img src="/resources/images/warning-mark.png" alt="비밀번호 형식 부적합 경고 마크"></span>
	                                <span id="password2Error"><img src="/resources/images/warning-mark.png" alt="비밀번호 형식 부적합 경고 마크"></span>
	                                <span id="nicknameError"><img src="/resources/images/warning-mark.png" alt="닉네임 형식 부적합 경고 마크"></span>
	                            </div>
	                            <p id="errorMessages">이름을 입력해 주세요.</p>
	                            <p>NAME <input type="text" name="name" id="name" autofocus="autofocus" maxlength="30">
	                            	<form:errors path="memberVO.name" cssClass="msgAlert" cssStyle="display:none; " />
	                            </p>
	                            <p>E-MAIL <input type="email" name="email" id="email" autofocus="autofocus" maxlength="30">
	                            	<form:errors path="memberVO.email" cssClass="msgAlert" cssStyle="display:none; " />
	                            </p>
	                            <p>PASSWORD1 <input type="password" name="password" id="password" autofocus="autofocus" maxlength="25">
	                            	<form:errors path="memberVO.password" cssClass="msgAlert" cssStyle="display:none; " />
	                            </p>
	                            <p>PASSWORD2 <input type="password" name="password2" id="password2" autofocus="autofocus" maxlength="25">
	                            	<form:errors path="memberVO.password2" cssClass="msgAlert" cssStyle="display:none; " />
	                            </p>
	                            <p>NICKNAME <input type="text" name="nickname" id="nickname" autofocus="autofocus" maxlength="15">
	                            	<form:errors path="memberVO.nickname" cssClass="msgAleret" cssStyle="display:none; " />
	                            </p>
	                            <p id="personalDataTerms">
	                                <%@ include file="/resources/include/personalTerms.jsp" %>
	                                <span class="agreeCheckBox">
	                                    <label for="personalDataAgree">개인 정보 수집 약관 동의</label>
	                                    <input type="checkbox" id="personalDataAgree" name="terms">
	                                </span>
	                            </p>
	                            <p id="serviceTerms">
	                                <%@ include file="/resources/include/serviceTerms.jsp" %>
	                                <span class="agreeCheckBox">
	                                    <label for="serviceTermsAgree">서비스 이용 약관 동의</label>
	                                    <input type="checkbox" id="serviceTermsAgree" name="terms">
	                                </span>
	                            </p>
	                            
	                            <span class="cns">
	                                <a href="<c:url value='/member/index.do' />"><input type="button" name="cancel" id="cancel" value="CANCEL"></a>
	                                <input type="submit" name="submit" id="submit" value="SUBMIT">
	                            </span>
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