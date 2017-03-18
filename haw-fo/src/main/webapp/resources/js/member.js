/**
 * Author : Su-yeon, Yun
 * Date : 2017-03-16
 * Description : Member Regist or Signin Authorize
 * Copyright : Hep Corporation
 */

$(function(){
	// 회원가입 
	if (FILE == "register"){
		$("#email").keyup(function(){
			var result = emailCheck($(this).val());
			new ajax.xhr.Request('emailcheck.do', 'email='+val, emailResponse, "POST");
			$("#errorMessages").html(result.getMessage());
		});
	}
	//로그인
	else if (FILE == "signin"){
		
	}
});

function emailCheck(val){
	
	
	var result = new ReturnJSON();
	
	
	if (val == "") {
		result.setValue("ERR", "이메일을 입력해 주세요.");
	} else {
		if (!pattern("email", val)){
			result.setValue("ERR", "이메일 형식에 맞지 않습니다. 다시 입력해 주세요.");
		} else {
			if (msg == "OK") {
				result.setValue("OK", "사용할 수 있는 이메일입니다.");
			} else if(msg == "NO") {
				result.setValue("NO", "사용할 수 없는 이메일입니다.");
			} else {
				result.setValue("ERR", msg);
			}
		}
	}
	return result;
}

function emailResponse(xhr){
	var msg;
	if (xhr.readyState==4){
        if (xhr.status==200){
        	msg = xhr.responseText;
        } else {
        	msg = "권한이 없는 페이지입니다.";
        }
	} else {
		msg = "로딩중입니다."
	}
	emailCheck()
	return msg;
}