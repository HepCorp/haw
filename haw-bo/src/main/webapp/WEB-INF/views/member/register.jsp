<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/inc/headerBase.jsp"%>
<c:set var="browserTitle" value="Hacktorial World (핵토리얼 월드)" />
<c:set var="menuTitle" value="Hacktorial World -회원가입-" />
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>HA.W ADMIN</title>
	<%@ include file="/resources/include/header.jsp"%>
    <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/common.css" />">
    <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/member.css" />">
    <script type="text/javascript" charset="UTF-8" src="<c:url value="/resources/js/member.js" />"></script>
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
    <div class="registerWrap">
        <div class="register">
            <div class="registerOutline">
                <div class="registerBox">
                    <div class="registerTitle">
                        <img src="<c:url value="/resources/images/haw-logo130.png" />" alt="haw logo">
                        <p>회원 정보를 정확하게 입력해 주십시오</p>
                    </div>
                    <div class="registerForm">
                        <form name="saveFrm" method="post" action="<c:url value='/member/save.do' />" class="form" onSubmit="return FormChkModule(this);">
                            <fieldset>
                            	<input type="hidden" name="emailchk" id="emailchk" />
	                        	<input type="hidden" name="nicknamechk" id="nicknamechk" />
                                <legend>회원가입</legend>
                                <!--<div class="reErrors">
                                    <span id="nameError"><img src="/haw_html/admin/images/warning-mark.png" alt="이름 형식 부적합 경고 마크"></span>
                                    <span id="emailError"><img src="/haw_html/admin/images/warning-mark.png" alt="이메일 형식 부적합 경고 마크"></span>
                                    <span id="passError1"><img src="/haw_html/admin/images/warning-mark.png" alt="비밀번호 형식 부적합 경고 마크"></span>
                                    <span id="passError2"><img src="/haw_html/admin/images/warning-mark.png" alt="비밀번호 형식 부적합 경고 마크"></span>
                                    <span id="nickError"><img src="/haw_html/admin/images/warning-mark.png" alt="닉네임 형식 부적합 경고 마크"></span>
                                </div>-->
                                <p id="errorMessages">아이디 또는 비밀번호가 일치하지 않습니다.</p>
                                <p>
                                    <label for="name">NAME</label>
                                    <input type="text" name="name" id="name" autofocus="autofocus">
                                    <form:errors path="memberVO.name" cssClass="msgAlert" cssStyle="display:none; " />
                                </p>
                                <p>
                                    <label for="email">E-MAIL</label>
                                    <input type="email" name="email" id="email" autofocus="autofocus">
                                    <form:errors path="memberVO.email" cssClass="msgAlert" cssStyle="display:none; " />
                                </p>
                                <p>
                                    <label for="password">PASSWORD</label>
                                    <input type="password" name="password" id="password" autofocus="autofocus">
                                    <form:errors path="memberVO.password" cssClass="msgAlert" cssStyle="display:none; " />
                                </p>
                                <p>
                                    <label for="password2">PASSWORD2</label>
                                    <input type="password" name="password2" id="password2" autofocus="autofocus">
                                    <form:errors path="memberVO.password2" cssClass="msgAlert" cssStyle="display:none; " />
                                </p>
                                <p>
                                    <label for="nickname">NICKNAME</label>
                                    <input type="text" name="nickname" id="nickname" autofocus="autofocus">
                                    <form:errors path="memberVO.nickname" cssClass="msgAlert" cssStyle="display:none; " />
                                </p>
                                <p id="personalDataTerms">
                                    <span class="termsContents">
                                        정보통신망법 규정에 따라 Hacktorial World 에 회원가입 신청하시는 분께 수집하는 개인정보의 항목, 개인정보의 수집 및 이용목적, 개인정보의 보유 및 이용기간을 안내 드리오니 자세히 읽은 후 동의하여 주시기 바랍니다.
                                        <br><br>
                                        1. 수집하는 개인정보
                                        <br>
                                        이용자는 회원가입을 하지 않아도 회사, 사업 소개 등 대부분의 서비스를 회원과 동일하게 이용할 수 있습니다. 이용자가 방명록과 같이 개인화 혹은 회원제 서비스를 이용하기 위해 회원가입을 할 경우, 서비스 이용을 위해 필요한 최소한의 개인정보를 수집합니다.
                                        회원가입 시점에 이용자로부터 수집하는 개인정보는 아래와 같습니다.
                                        <br>
                                        - 회원 가입 시에 ‘아이디, 비밀번호, 이름, 이메일’을 필수항목으로 수집합니다.
                                        <br>
                                        서비스 이용 과정에서 이용자로부터 수집하는 개인정보는 아래와 같습니다.
                                        <br>
                                        추가로 개인정보를 수집할 경우에는 해당 개인정보 수집 시점에서 이용자에게 ‘수집하는 개인정보 항목, 개인정보의 수집 및 이용목적, 개인정보의 보관기간’에 대해 안내 드리고 동의를 받습니다.
                                        서비스 이용 과정에서 IP 주소, 쿠키, 방문일시·불량 이용 기록 등의 서비스 이용 기록, 기기정보가 생성되어 수집될 수 있습니다.
                                        구체적으로<br>
                                        1) 서비스 이용 과정에서 이용자에 관한 정보를 정보통신서비스 제공자가 자동화된 방법으로 생성하여 이를 저장(수집)하거나,<br>
                                        2) 이용자 기기의 고유한 정보를 원래의 값을 확인하지 못하도록 안전하게 변환한 후에 수집하는 경우를 의미합니다.
                                        <br><br>
                                        2. 수집한 개인정보의 이용
                                        <br>
                                        Hacktorial World는 회원관리, 서비스 개발 제공 및 향상, 안전한 인터넷 이용환경 구축 등 아래의 목적으로만 개인정보를 이용합니다.
                                        <br>
                                        - 회원 가입 의사의 확인, 이용자 식별, 회원탈퇴 의사의 확인 등 회원관리를 위하여 개인정보를 이용합니다.<br>
                                        - 콘텐츠 등 기존 서비스 제공에 더하여, 서비스 방문 및 이용기록의 분석등에 기반한 신규 서비스 요소의 발굴 및 기존 서비스 개선 등을 위하여 개인정보를 이용합니다.<br>
                                        - 법령 및 Hacktorial World 이용약관을 위반하는 회원에 대한 이용 제한 조치, 부정 이용 행위를 포함하여 서비스의 원활한 운영에 지장을 주는 행위에 대한 방지 및 제재, 계정도용 및 부정거래 방지, 약관 개정 등의 고지사항 전달, 분쟁조정을 위한 기록 보존, 민원처리 등 이용자 보호 및 서비스 운영을 위하여 개인정보를 이용합니다.<br>
                                        - 광고성 정보 제공 등 마케팅 및 프로모션 목적으로 개인정보를 이용합니다.<br>
                                        - 서비스 이용기록과 접속 빈도 분석, 서비스 이용에 대한 통계, 서비스 분석 및 통계에 따른 맞춤 서비스 제공 등에 개인정보를 이용합니다.<br>
                                        - 보안, 프라이버시, 안전 측면에서 이용자가 안심하고 이용할 수 있는 서비스 이용환경 구축을 위해 개인정보를 이용합니다.<br>
                                        <br><br>
                                        3. 개인정보의 파기<br>
                                        회사는 원칙적으로 이용자의 개인정보를 회원 탈퇴 시 지체없이 파기하고 있습니다.<br>
                                        단, 이용자에게 개인정보 보관기간에 대해 별도의 동의를 얻은 경우, 또는 법령에서 일정 기간 정보보관 의무를 부과하는 경우에는 해당 기간 동안 개인정보를 안전하게 보관합니다.<br>
                                        이용자에게 개인정보 보관기간에 대해 별도의 동의를 얻은 경우는 아래와 같습니다.<br>
                                        부정가입 및 징계기록 등의 부정이용기록은 부정 가입 및 이용 방지를 위하여 수집 시점으로부터 6개월간 보관하고 파기하고 있습니다. 부정이용기록 내 개인정보는 가입인증 이메일 주소가 있습니다.<br>
                                        통신비밀보호법 등 법령에서 일정기간 정보의 보관을 규정하는 경우는 아래와 같습니다. Hacktorial World는 이 기간 동안 법령의 규정에 따라 개인정보를 보관하며, 본 정보를 다른 목적으로는 절대 이용하지 않습니다.<br>
                                        <br>
                                        - 통신비밀보호법<br>
                                        로그인 기록: 3개월
                                    </span>
                                    <span class="agreeCheckBox">
                                        <label for="personalDataAgree">개인 정보 수집 약관 동의</label>
                                        <input type="checkbox" id="personalDataAgree" name="personalDataAgree">
                                    </span>
                                </p>
                                <p id="serviceTerms">

                                    <span class="termsContents">
                                        제 1 조 (목적)<br>
                                        이 약관은 헤프 주식회사 ("회사" 또는 "헤프")가 제공하는 헤프 및 헤프 관련 제반 서비스의 이용과 관련하여 회사와 회원과의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.
                                        <br><br>
                                        제 2 조 (정의)<br>
                                        이 약관에서 사용하는 용어의 정의는 다음과 같습니다.<br>
                                        ①"서비스"라 함은 구현되는 단말기(PC, TV, 휴대형단말기 등의 각종 유무선 장치를 포함)와 상관없이 "회원"이 이용할 수 있는 헤프 및 헤프 관련 제반 서비스를 의미합니다.<br>
                                        ②"회원"이라 함은 회사의 "서비스"에 접속하여 이 약관에 따라 "회사"와 이용계약을 체결하고 "회사"가 제공하는 "서비스"를 이용하는 고객을 말합니다.<br>
                                        ③"아이디(ID)"라 함은 "회원"의 식별과 "서비스" 이용을 위하여 "회원"이 정하고 "회사"가 승인하는 문자와 숫자의 조합을 의미합니다.<br>
                                        ④"비밀번호"라 함은 "회원"이 부여 받은 "아이디와 일치되는 "회원"임을 확인하고 비밀보호를 위해 "회원" 자신이 정한 문자 또는 숫자의 조합을 의미합니다.<br>
                                        ⑤"게시물"이라 함은 "회원"이 "서비스"를 이용함에 있어 "서비스상"에 게시한 부호ㆍ문자 등의 정보 형태의 글, 사진과 링크 등을 의미합니다.
                                        <br><br>
                                        제 3 조 (약관의 게시와 개정)<br>
                                        ①"회사"는 이 약관의 내용을 "회원"이 쉽게 알 수 있도록 서비스 초기 화면에 게시합니다.<br>
                                        ②"회사"는 "약관의규제에관한법률", "정보통신망이용촉진및정보보호등에관한법률(이하 "정보통신망법")" 등 관련법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.<br>
                                        ③"회사"가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 제1항의 방식에 따라 그 개정약관의 적용일자 30일 전부터 적용일자 전일까지 공지합니다. 다만, 회원에게 불리한 약관의 개정의 경우에는 공지 외에 일정기간 서비스내 전자우편, 로그인시 동의창 등의 전자적 수단을 통해 따로 명확히 통지하도록 합니다.<br>
                                        ④회사가 전항에 따라 개정약관을 공지 또는 통지하면서 회원에게 30일 기간 내에 의사표시를 하지 않으면 의사표시가 표명된 것으로 본다는 뜻을 명확하게 공지 또는 통지하였음에도 회원이 명시적으로 거부의 의사표시를 하지 아니한 경우 회원이 개정약관에 동의한 것으로 봅니다.<br>
                                        ⑤회원이 개정약관의 적용에 동의하지 않는 경우 회사는 개정 약관의 내용을 적용할 수 없으며, 이 경우 회원은 이용계약을 해지할 수 있습니다. 다만, 기존 약관을 적용할 수 없는 특별한 사정이 있는 경우에는 회사는 이용계약을 해지할 수 있습니다.
                                        <br><br>
                                        제 4 조 (약관의 해석)<br>
                                        ①이 약관에서 정하지 아니한 사항이나 해석에 대해서는 관계법령 또는 상관례에 따릅니다.
                                        <br><br>
                                        제 5 조 (이용계약 체결)<br>
                                        ①이용계약은 "회원"이 되고자 하는 자(이하 "가입신청자")가 약관의 내용에 대하여 동의를 한 다음 회원가입신청을 하고 "회사"가 이러한 신청에 대하여 승낙함으로써 체결됩니다.<br>
                                        ②"회사"는 "가입신청자"의 신청에 대하여 "서비스" 이용을 승낙함을 원칙으로 합니다. 다만, "회사"는 다음 각 호에 해당하는 신청에 대하여는 승낙을 하지 않거나 사후에 이용계약을 해지할 수 있습니다.<br>
                                        1.가입신청자가 이 약관에 의하여 이전에 회원자격을 상실한 적이 있는 경우, 단 "회사"의 회원 재가입 승낙을 얻은 경우에는 예외로 함.<br>
                                        2.실명이 아니거나 타인의 명의를 이용한 경우<br>
                                        3.허위의 정보를 기재하거나, "회사"가 제시하는 내용을 기재하지 않은 경우<br>
                                        4.이용자의 귀책사유로 인하여 승인이 불가능하거나 기타 규정한 제반 사항을 위반하며 신청하는 경우<br>
                                        ③제1항에 따른 신청에 있어 "회사"는 "회원"의 종류에 따라 전문기관을 통한 실명확인 및 본인인증을 요청할 수 있습니다.<br>
                                        ④"회사"는 서비스관련설비의 여유가 없거나, 기술상 또는 업무상 문제가 있는 경우에는 승낙을 유보할 수 있습니다.<br>
                                        ⑤제2항과 제4항에 따라 회원가입신청의 승낙을 하지 아니하거나 유보한 경우, "회사"는 원칙적으로 이를 가입신청자에게 알리도록 합니다.<br>
                                        ⑥이용계약의 성립 시기는 "회사"가 가입완료를 신청절차 상에서 표시한 시점으로 합니다.<br>
                                        ⑦"회사"는 "회원"에 대해 회사정책에 따라 이용시간, 이용횟수, 서비스 메뉴 등을 세분하여 이용에 차등을 둘 수 있습니다.
                                        <br><br>
                                        제 6 조 (회원정보의 변경)<br>
                                        ①"회원"은 비밀번호변경화면을 통하여 언제든지 본인의 비밀번호를 수정할 수 있습니다. 다만, 서비스 관리를 위해 필요한 실명, 아이디 등은 수정이 불가능합니다.<br>
                                        ②"회원"은 회원가입신청 시 기재한 사항이 변경되었을 경우 온라인으로 수정을 하거나 전자우편 기타 방법으로 "회사"에 대하여 그 변경사항을 알려야 합니다.<br>
                                        ③제2항의 변경사항을 "회사"에 알리지 않아 발생한 불이익에 대하여 "회사"는 책임지지 않습니다.
                                        <br><br>
                                        제 7 조 (개인정보보호 의무)<br>
                                        "회사"는 "정보통신망법" 등 관계 법령이 정하는 바에 따라 "회원"의 개인정보를 보호하기 위해 노력합니다. 개인정보의 보호 및 사용에 대해서는 관련법 및 "회사"의 개인정보처리방침이 적용됩니다. 다만, "회사"의 공식 사이트 이외의 링크된 사이트에서는 "회사"의 개인정보처리방침이 적용되지 않습니다.
                                        <br><br>
                                        제 8 조 ("회원"의 "아이디" 및 "비밀번호"의 관리에 대한 의무)<br>
                                        ①"회원"의 "아이디"와 "비밀번호"에 관한 관리책임은 "회원"에게 있으며, 이를 제3자가 이용하도록 하여서는 안 됩니다.<br>
                                        ②"회사"는 "회원"의 "아이디"가 개인정보 유출 우려가 있거나, 반사회적 또는 미풍양속에 어긋나거나 "회사" 및 "회사"의 운영자로 오인한 우려가 있는 경우, 해당 "아이디"의 이용을 제한할 수 있습니다.<br>
                                        ③"회원"은 "아이디" 및 "비밀번호"가 도용되거나 제3자가 사용하고 있음을 인지한 경우에는 이를 즉시 "회사"에 통지하고 "회사"의 안내에 따라야 합니다.<br>
                                        ④제3항의 경우에 해당 "회원"이 "회사"에 그 사실을 통지하지 않거나, 통지한 경우에도 "회사"의 안내에 따르지 않아 발생한 불이익에 대하여 "회사"는 책임지지 않습니다.
                                        <br><br>
                                        제 9 조 ("회원"에 대한 통지)<br>
                                        ①"회사"가 "회원"에 대한 통지를 하는 경우 이 약관에 별도 규정이 없는 전자우편주소로 할 수 있습니다.<br>
                                        ②"회사"는 "회원" 전체에 대한 통지의 경우 7일 이상 "회사"의 게시판에 게시함으로써 제1항의 통지에 갈음할 수 있습니다.
                                        <br><br>
                                        제 10 조 ("회사"의 의무)<br>
                                        ①"회사"는 관련법과 이 약관이 금지하거나 미풍양속에 반하는 행위를 하지 않으며, 계속적이고 안정적으로 "서비스"를 제공하기 위하여 최선을 다하여 노력합니다.<br>
                                        ②"회사"는 "회원"이 안전하게 "서비스"를 이용할 수 있도록 개인정보(신용정보 포함)보호를 위해 보안시스템을 갖추어야 하며 개인정보처리방침을 공시하고 준수합니다.<br>
                                        ③"회사"는 서비스이용과 관련하여 "회원"으로부터 제기된 의견이나 불만이 정당하다고 인정할 경우에는 이를 처리하여야 합니다. "회원"이 제기한 의견이나 불만사항에 대해서는 게시판을 활용하거나 전자우편 등을 통하여 "회원"에게 처리과정 및 결과를 전달합니다.
                                        <br><br>
                                        제 11 조 ("회원"의 의무)<br>
                                            ①"회원"은 다음 행위를 하여서는 안 됩니다.<br>
                                        1.신청 또는 변경 시 허위내용의 등록<br>
                                        2.타인의 정보도용<br>
                                        3."회사"가 게시한 정보의 변경<br>
                                        4."회사"가 정한 정보 이외의 정보(컴퓨터 프로그램 등) 등의 송신 또는 게시<br>
                                        5."회사"와 기타 제3자의 저작권 등 지적재산권에 대한 침해<br>
                                        6."회사" 및 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위<br>
                                        7.외설 또는 폭력적인 메시지, 화상, 음성, 기타 공서양속에 반하는 정보를 "서비스"에 공개 또는 게시하는 행위<br>
                                        8.회사의 동의 없이 영리를 목적으로 "서비스"를 사용하는 행위<br>
                                        9.기타 불법적이거나 부당한 행위<br>
                                        ②"회원"은 관계법, 이 약관의 규정, 이용안내 및 "서비스"와 관련하여 공지한 주의사항, "회사"가 통지하는 사항 등을 준수하여야 하며, 기타 "회사"의 업무에 방해되는 행위를 하여서는 안 됩니다.
                                        <br><br>
                                        제 12 조 ("서비스"의 제공 등)<br>
                                        ①회사는 회원에게 아래와 같은 서비스를 제공합니다.<br>
                                        1.게시판형 서비스(방명록 등)<br>
                                        2.기타 "회사"가 추가 개발하거나 다른 회사와의 제휴계약 등을 통해 "회원"에게 제공하는 일체의 서비스<br>
                                        ②회사는 "서비스"를 일정범위로 분할하여 각 범위 별로 이용가능시간을 별도로 지정할 수 있습니다. 다만, 이러한 경우에는 그 내용을 사전에 공지합니다.<br>
                                        ③"서비스"는 연중무휴, 1일 24시간 제공함을 원칙으로 합니다.<br>
                                        ④"회사"는 컴퓨터 등 정보통신설비의 보수점검, 교체 및 고장, 통신두절 또는 운영상 상당한 이유가 있는 경우 "서비스"의 제공을 일시적으로 중단할 수 있습니다. 이 경우 "회사"는 제9조["회원"에 대한 통지]에 정한 방법으로 "회원"에게 통지합니다. 다만, "회사"가 사전에 통지할 수 없는 부득이한 사유가 있는 경우 사후에 통지할 수 있습니다.<br>
                                        ⑤"회사"는 서비스의 제공에 필요한 경우 정기점검을 실시할 수 있으며, 정기점검시간은 서비스제공화면에 공지한 바에 따릅니다.
                                        <br><br>
                                        제 13 조 ("서비스"의 변경)<br>
                                        ①"회사"는 상당한 이유가 있는 경우에 운영상, 기술상의 필요에 따라 제공하고 있는 전부 또는 일부 "서비스"를 변경할 수 있습니다.<br>
                                        ②"서비스"의 내용, 이용방법, 이용시간에 대하여 변경이 있는 경우에는 변경사유, 변경될 서비스의 내용 및 제공일자 등은 그 변경 전에 해당 서비스 초기화면에 게시하여야 합니다.<br>
                                        ③"회사"는 무료로 제공되는 서비스의 일부 또는 전부를 회사의 정책 및 운영의 필요상 수정, 중단, 변경할 수 있으며, 이에 대하여 관련법에 특별한 규정이 없는 한 "회원"에게 별도의 보상을 하지 않습니다.
                                        <br><br>
                                        제 14 조 (정보의 제공 및 광고의 게재)<br>
                                        ①"회사"는 "회원"이 "서비스" 이용 중 필요하다고 인정되는 다양한 정보를 전자우편 등의 방법으로 "회원"에게 제공할 수 있습니다. 다만, "회원"은 관련법에 따른 고객문의 등에 대한 답변 등을 제외하고는 언제든지 전자우편에 대해서 수신 거절을 할 수 있습니다.<br>
                                        ②"이용자(회원, 비회원 포함)"는 회사가 제공하는 서비스와 관련하여 게시물 또는 기타 정보를 변경, 수정, 제한하는 등의 조치를 취하지 않습니다.
                                        <br><br>
                                        제 15 조 ("게시물"의 저작권)<br>
                                        ①"회원"이 "서비스" 내에 게시한 "게시물"의 저작권은 해당 게시물의 저작자에게 귀속됩니다.<br>
                                        ②"회원"이 "서비스" 내에 게시하는 "게시물"은 검색결과 내지 "서비스" 및 관련 프로모션 등에 노출될 수 있으며, 이 경우, 회사는 저작권법 규정을 준수하며, "회원"은 언제든지 고객센터를 통해 해당 게시물에 대해 삭제 등의 조치를 취할 수 있습니다.
                                        <br><br>
                                        제 16 조 ("게시물"의 관리)<br>
                                        ①"회원"의 "게시물"이 "정보통신망법" 및 "저작권법"등 관련법에 위반되는 내용을 포함하는 경우, 권리자는 관련법이 정한 절차에 따라 해당 "게시물"의 게시중단 및 삭제 등을 요청할 수 있으며, "회사"는 관련법에 따라 조치를 취하여야 합니다.<br>
                                        ②"회사"는 전항에 따른 권리자의 요청이 없는 경우라도 권리침해가 인정될 만한 사유가 있거나 기타 회사 정책 및 관련법에 위반되는 경우에는 관련법에 따라 해당 "게시물"에 대해 임시조치 등을 취할 수 있습니다.<br>
                                        ③본 조에 따른 세부절차는 "정보통신망법" 및 "저작권법"이 규정한 범위 내에서 "회사"가 정한 "게시중단요청서비스"에 따릅니다.<br>
                                        - 게시중단요청서비스 : support@greatkorea.co
                                        <br><br>
                                        제 17 조 (권리의 귀속)<br>
                                        ①"서비스"에 대한 저작권 및 지적재산권은 "회사"에 귀속됩니다. 단, "회원"의 "게시물" 및 제휴계약에 따라 제공된 저작물 등은 제외합니다.<br>
                                        ②"회사"는 서비스와 관련하여 "회원"에게 "회사"가 정한 이용조건에 따라 계정, "아이디", 콘텐츠 등을 이용할 수 있는 이용권만을 부여하며, "회원"은 이를 양도, 판매, 담보제공 등의 처분행위를 할 수 없습니다.
                                        <br><br>
                                        제 18 조 (포인트)<br>
                                        "회사"는 서비스의 효율적 이용 및 운영을 위해 사전 공지 후 "포인트"의 일부 또는 전부를 조정할 수 있으며, "포인트"는 회사가 정한 기간에 따라 주기적으로 소멸할 수 있습니다.
                                        <br><br>
                                        제 19 조 (계약해제, 해지 등)<br>
                                        ①"회원"은 언제든지 서비스초기화면의 회원탈퇴 메뉴 등을 통하여 이용계약 해지 신청을 할 수 있으며, "회사"는 관련법 등이 정하는 바에 따라 이를 즉시 처리하여야 합니다.<br>
                                        ②"회원"이 계약을 해지할 경우, 관련법 및 개인정보처리방침에 따라 "회사"가 회원정보를 보유하는 경우를 제외하고는 해지 즉시 "회원"의 모든 데이터는 소멸됩니다.<br>
                                        ③"회원"이 계약을 해지하는 경우, 방명록에 등록된 "게시물" 은 삭제되지 않으니 사전에 삭제 후 탈퇴하시기 바랍니다.
                                        <br><br>
                                        제 20 조 (이용제한 등)<br>
                                        ①"회사"는 "회원"이 이 약관의 의무를 위반하거나 "서비스"의 정상적인 운영을 방해한 경우, 경고, 일시정지, 영구이용정지 등으로 "서비스" 이용을 단계적으로 제한할 수 있습니다.<br>
                                        ②"회사"는 전항에도 불구하고, "저작권법" 및 "컴퓨터프로그램보호법"을 위반한 불법프로그램의 제공 및 운영방해, "정보통신망법"을 위반한 불법통신 및 해킹, 악성프로그램의 배포, 접속권한 초과행위 등과 같이 관련법을 위반한 경우에는 즉시 영구이용정지를 할 수 있습니다. "회사"는 이에 대해 별도로 보상하지 않습니다.<br>
                                        ③"회사"는 "회원"이 계속해서 3개월 이상 로그인하지 않는 경우, 회원정보의 보호 및 운영의 효율성을 위해 이용을 제한할 수 있습니다.<br>
                                        ④"회사"는 본 조의 이용제한 범위 내에서 제한의 조건 및 세부내용은 이용제한정책 및 개별 서비스상의 운영정책에서 정하는 바에 의합니다.<br>
                                        ⑤본 조에 따라 "서비스" 이용을 제한하거나 계약을 해지하는 경우에는 "회사"는 제9조["회원"에 대한 통지]에 따라 통지합니다.<br>
                                        ⑥"회원"은 본 조에 따른 이용제한 등에 대해 "회사"가 정한 절차에 따라 이의신청을 할 수 있습니다. 이 때 이의가 정당하다고 "회사"가 인정하는 경우 "회사"는 즉시 "서비스"의 이용을 재개합니다.
                                        <br><br>
                                        제 21 조 (책임제한)<br>
                                        ①"회사"는 천재지변 또는 이에 준하는 불가항력으로 인하여 "서비스"를 제공할 수 없는 경우에는 "서비스" 제공에 관한 책임이 면제됩니다.<br>
                                        ②"회사"는 "회원"의 귀책사유로 인한 "서비스" 이용의 장애에 대하여는 책임을 지지 않습니다.<br>
                                        ③"회사"는 "회원"이 "서비스"와 관련하여 게재한 정보, 자료, 사실의 신뢰도, 정확성 등의 내용에 관하여는 책임을 지지 않습니다.<br>
                                        ④"회사"는 "회원" 간 또는 "회원"과 제3자 상호간에 "서비스"를 매개로 하여 거래 등을 한 경우에는 책임이 면제됩니다.<br>
                                        ⑤"회사"는 무료로 제공되는 서비스 이용과 관련하여 관련법에 특별한 규정이 없는 한 책임을 지지 않습니다.
                                        <br><br>
                                        제 22 조 (준거법 및 재판관할)<br>
                                        ①"회사"와 "회원"간 제기된 소송은 대한민국법을 준거법으로 합니다.<br>
                                        ②"회사"와 "회원"간 발생한 분쟁에 관한 소송은 제소 당시의 "회원"의 주소에 의하고, 주소가 없는 경우 거소를 관할하는 지방법원의 전속관할로 합니다. 단, 제소 당시 "회원"의 주소 또는 거소가 명확하지 아니한 경우의 관할법원은 민사소송법에 따라 정합니다.<br>
                                        ③해외에 주소나 거소가 있는 '회원' 의 경우 '회사'와 '회원'간 발생한 분쟁에 관한 소송은 전항에도 불구하고 대한민국 서울중앙지방법원을 관할 법원으로 합니다.<br>
                                    </span>
                                    <span class="agreeCheckBox">
                                        <label for="serviceTermsAgree">서비스 이용 약관 동의</label>
                                        <input type="checkbox" id="serviceTermsAgree" name="serviceTermsAgree">
                                    </span>
                                </p>
                                <span class="cns">
                                <input type="button" name="cancel" id="cancel" value="CANCEL">
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




<!--  

    
    
</head>
<body>
<section>
    <h2><img src="/resources/images/title.png" alt="핵토리얼 월드"></h2>
    <div class="contentsWrap">
        <div class="registerWrap">
            <div class="register">
                <div class="registerOutline">
                	<h1>나는 관리자다!!!</h1>
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
	                            
	                            
	                            <span class="cns">
	                                <input type="button" name="cancel" id="cancel" value="CANCEL">
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
-->