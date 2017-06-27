<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/inc/headerBase.jsp"%>
<c:set var="browserTitle" value="Hacktorial World (핵토리얼 월드)" />
<c:set var="menuTitle" value="Hacktorial World 관리 -로그인-" />
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/resources/include/header.jsp"%>
<title>Insert title here</title>
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
<style>
#loginWrap 				{ width:600px; }
#loginWrap ul 			{}
#loginWrap ul li 		{ float:left; width:300px; display:block; }
#loginWrap ul li.btn 	{ float:right; width:100px;  }
#loginWrap ul li label 	{ text-indent: -50px; padding-left: 50px; padding-right:10px;  }
</style>
</head>
<body>

<h3>핵토리얼월드 관리자 로그인</h3>
<div id="loginWrap">
	<form method="post" name="loginFrm" action="signin.do" onsubmit="return FormChkModule(this);">
		<fieldset>
		<legend>로그인폼</legend>
		<ul>
			<li>
				<label for="email">이메일 <input type="email" name="email" id="email" /></label>
				<form:errors path="memberVO.email" cssClass="msgAlert" cssStyle="display:none; " />
			</li>
			<li>
				<label for="password">비밀번호 <input type="password" name="password" id="password" /></label>
				<form:errors path="memberVO.password" cssClass="msgAlert" cssStyle="display:none; " />
			</li>
			<li class="btn"><input type="submit" value="로그인" /></li>
		</ul>
		</fieldset>
	</form>
</div>
</body>
</html>