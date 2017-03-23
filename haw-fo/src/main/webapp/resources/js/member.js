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
		$("#name, #email, #password, #password2, #nickname").on('keyup focus load', function(){
			autoRegistChk($(this));
		});
		$("#name").focus();
		$("#cancel").css("cursor","pointer");
		$("#cancel").click(function(){
			if (confirm("가입을 취소 하시겠습니까?\n로그인 화면으로 이동합니다.")){
				document.location.href='/member/index.do';
			} else {
				return false;
			}
		})
	}
	//로그인
	else if (FILE == "index"){
		$("#email, #password").on('load keyup focus', function(){
			autoSigninChk($(this));
		});
		$("#email").focus();
		
		$("#registerBtn").css("cursor", "pointer");
		$("#registerBtn").click(function(){
			document.location.href='/member/register.do';
		});
		
	}
});
function autoRegistChk(obj){
	var id = obj.attr("id");
	var result = new ReturnJSON();
	// 빈값 체크
	if(obj.val() == ""){
		result.setValue(false, returnMsg(id +".required"));
	} else {
		if (id == "password2") {
			if ($("#password").val() != obj.val()){
				result.setValue(false, returnMsg(id +".error"));
			} else {
				result.setValue(true, "");
			}
		} else if (id == "email" || id == "password" || id == "nickname"){
			$("#"+ id +"chk").val("");
			if (!pattern(id, obj.val())){
				result.setValue(false, returnMsg(id +".pattern"));
			} else {
				if (id == "email" || id == "nickname"){
					var goUrl = CONTEXTPATH +"member/"+ id +"check.do";
					if (id == "email") dt = {"email":obj.val()};
					if (id == "nickname") dt = {"nick":obj.val()};
					//중복 체크
					$.ajax({
						url : goUrl,
						data : dt,
						dataType : "text",
						method : "POST"
					})
					.done(function(resp){
						if (resp == "OK") {
							result.setValue(true, "");
						} else if(resp == "NO") {
							result.setValue(false, returnMsg(id +".dupliNO"));
						} else {
							result.setValue(false, resp);
						}
						$("#"+ id +"chk").val(resp);
						errorDisplay(obj, result);
						return;
					})
					.fail(function(data){
						if ( data.responseCode )
							result.setValue(false, data.responseCode);
						errorDisplay(obj, result);
						return;
					});
				} else {
					result.setValue(true, "");
				}
			}
		} else {
			result.setValue(true, "");
		}
	}
	errorDisplay(obj, result);
}
function autoSigninChk(obj){
	var id = obj.attr("id");
	var val = obj.val();
	var result = new ReturnJSON();
	if (val == ""){
		result.setValue(false, returnMsg(id +".required"));
	} else {
		if (!pattern(id, val)){
			result.setValue(false, returnMsg(id +".pattern"));
		} else {
			result.setValue(true, "");
		}
	}
	errorDisplay(obj, result);

}
function errorDisplay(obj, result){
	var id = obj.attr("id");
	var icon = $("#"+ id + "Error");
	if (result.getResult()) {
		icon.css("visibility", "hidden");
	} else {
		icon.css("visibility", "visible");
	}
	$("#errorMessages").html(result.getMessage());
}

