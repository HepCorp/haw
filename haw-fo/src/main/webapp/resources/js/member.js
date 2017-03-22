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
		$("#name, #email, #password, #password2, #nickname").on('keyup focus load', function(){
			autoRegistChk($(this));
		});
	}
	//로그인
	else if (FILE == "signin"){
		$("#email").focus();
		$("#email, #password").on('keyup focus load', function(){
			autoSigninChk($(this));
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
	var result = new ReturnJSON();

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

