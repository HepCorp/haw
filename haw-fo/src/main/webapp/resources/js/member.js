/**
 * Author : Su-yeon, Yun
 * Date : 2017-03-16
 * Description : Member Regist or Signin Authorize
 * Copyright : Hep Corporation
 */

$(function(){
	// 회원가입 
	if (FILE == "register"){
		var result = new ReturnJSON;
		$("#name").focus();
		$("#name").on('keyup focus', function(){
			if($(this).val() == "") {
				result.setValue(false, returnMsg("name.required"));
			} else {
				result.setValue(true, "");
			}
			errorShow(result.getMessage());
		});
		$("#email").on('keyup focus', function(){
			result = emailCheck($(this).val());
			errorShow(result.getMessage());
		});
		$("#password").on('keyup focus', function(){
			if($(this).val() == "") {
				result.setValue(false, returnMsg("password.required"));
			} else {
				if (!pattern("password", $(this).val())){
					result.setValue(false, returnMsg("password.pattern"));
				} else {
					result.setValue(true, "");
				}
			}
			errorShow(result.getMessage());
		});
		$("#re_password").on('keyup focus', function(){
			if($(this).val() == ""){
				result.setValue(false, returnMsg("re_password.required"));
			} else {
				if ($("#password").val() != $(this).val()){
					result.setValue(false, returnMsg("re_password.error"));
				}
			}
			errorShow(result.getMessage());
		});
		$("#nickname").on('keyup focus', function(){
			result = nickCheck($(this).val());
			errorShow(result.getMessage());
		});
	}
	//로그인
	else if (FILE == "signin"){
		
	}
});
function errorShow(msg){
	console.log("msg:"+ msg);
	$("#errorMessages").html(msg);
}
function isEmpty(val) {
	var result = new ReturnJSON;
	if (val == null || val == "") {
		result.setValue(false, returnMsg(""))
	}		
}

function emailCheck(val){
	var result = new ReturnJSON;
	if (val == "") {
		result.setValue(false, returnMsg("email.required"));
	}else {
		if (!pattern("email", val)){
			result.setValue(false, returnMsg("email.type"));
		} else {
			$.ajax({
				url : CONTEXTPATH +"member/emailcheck.do",
				data : {"email":val},
				dataType : "text",
				method : "POST"
			})
			.done(function(resp){
				if (resp == "OK") {
					result.setValue(true, returnMsg("email.dupliOK"));
				} else if(resp == "NO") {
					result.setValue(false, returnMsg("email.dupliNO"));
				} else {
					result.setValue(false, resp);
				}
			})
			.fail(function(data){
				if ( data.responseCode )
					result.setValue(false, data.responseCode);
					errorShow(result.getMessage());
			});
		}
	}
	
	return result;
}

function nickCheck(val){
	var result = new ReturnJSON;
	if (val == "") {
		result.setValue(false, returnMsg("nick.required"));
	}else {
		$.ajax({
			url : CONTEXTPATH +"member/nickcheck.do",
			data : {"nick" : val},
			dataType : "text",
			method : "POST"
		})
		.done(function(response){
			if (response == "OK") {
				result.setValue(true, "nick.dupliOK");
			} else if(response == "NO") {
				result.setValue(false, "nick.dupliNO");
			} else {
				result.setValue(false, response);
			}
		})
		.fail(function(data){
			if ( data.responseCode )
				result.setValue(false, data.responseCode);
				console.log( data.responseCode );
		});
	}
	return result;
}
