/**
 * Author : Su-yeon, Yun
 * Date : 2017-03-16
 * Description : Hactorial World Common Function
 * Copyright : HEP Corporation.
 */

/*
 * Name : ajax.xhr
 * Description : Ajax Module
 * Date : 2017-03-16 
 * Verstion 1.0
 */
var ajax = {};
ajax.xhr = {};

//Request클래스 정의
ajax.xhr.Request=function(url,params,callback,method){
     this.url=url;
     this.params=params;
     this.callback=callback;
     this.method=method;
     this.send();
}  

ajax.xhr.Request.prototype = {
     getXMLHttpRequest : function() {
          if (window.ActiveXObject) { // 브라우저에서 ActiveXObject를 지원한다면(IE)
               try {
                    return new ActiveXObject("Msxml2.XMLHTTP");
               } catch (e) {
                    return new ActiveXObject("Microsoft.XMLHTTP");
               }
          } else if (window.XMLHttpRequest) { // 비 IE
               return new XMLHttpRequest();
          } else { // XMLHttpRequest 객체를 지원하지 않는 경우
               return null;
          }
     },
     send : function() {
          this.xhr = this.getXMLHttpRequest(); //Request 멤버속성 xhr 정의
          var httpMethod = this.method ? this.method : "GET";
          // 삼항 연산자 (조건식) ? A : B
          if (httpMethod != "GET" && httpMethod != "POST") {
               httpMethod = "GET"
          }

          var httpParams = (this.params == null || this.params == "") ? null : this.params;

          var httpUrl = this.url;
          if (httpMethod == "GET" && httpParams != null) {
               httpUrl = httpUrl + "?" + httpParams;
          }
          this.xhr.open(httpMethod, httpUrl, true);
          this.xhr.setRequestHeader("Content-Type",
                    "application/x-www-form-urlencoded")
          var request = this; //Request
          this.xhr.onreadystatechange = function(){
               request.onStateChange.call(request);
               //call(this) ----> this : onStateChange
          }
          this.xhr.send(httpMethod == "POST" ? httpParams : null);
     },
     onStateChange : function() {
          this.callback(this.xhr); //callback 프로퍼티에 할당된 함수를 호출하면서 xhr 객체를 넘겨라!!
     }
}

ReturnJSON = function(result, message){
	this.result = result;
	this.message = message;
}
ReturnJSON.prototype = {
		setValue:function(result, message){
			this.result = result;
			this.message = message;
		},
		getResult:function(){
			return this.result;
		},
		getMessage:function(){
			return this.message;
		},
		toString:function(){
			return "[결과:"+ this.result +", 내용:"+ this.message +"]";
		}
}

/**
 * Description : 문장 패턴 검사
 * filename : pattern
 * parameter : patt(패턴구분), val(검사할문장)
 * Date : 2016-12-23
 */
function pattern(patt, val){
	var regExp;
	switch (patt) {
	case "email":
		regExp = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
		break;
	case "password":
		regExp = /^(?=.*[a-zA-Z])((?=.*\d)|(?=.*\W)).{6,20}$/;
		break;
	default:
		regExp = "";
		break;
	}
	if (regExp != null && regExp != ""){
		var result = regExp.test(val);
		return result;
	}
	return false;
}

function returnMsg(code){
	var msg;
	switch (code) {
		case "name.required"	: msg = "이름을 입력해 주세요."; break;
		case "email.required" 	: msg = "이메일을 입력해 주세요."; break;
		case "password.required": msg = "비밀번호를 입력해 주세요."; break;
		case "re_password.required" : msg = "비밀번호 확인을 입력해 주세요."; break;
		case "nick.required"	: msg = "닉네임을 입력해 주세요."; break;
		
		case "email.type"		: msg = "이메일 형식에 맞지 않습니다. 다시 입력해 주세요."; break;
		case "email.dupliOK"	: msg = "사용할 수 있는 이메일입니다."; break;
		case "email.dupliNO"	: msg = "사용할 수 없는 이메일입니다."; break;
		
		case "password.pattern"	: msg = "영문, 숫자, 특수문자 혼합하여 6~20자 사이로 입력해 주세요."; break;
		case "re_password.error": msg = "비밀번호와 비밀번호 확인이 일치하지 않습니다."; break;
		
		case "nick.dupliOK"		: msg = "사용할 수 있는 닉네임입니다."; break;
		case "nick.dupliNO"		: msg = "사용할 수 없는 닉네임입니다."; break;
		case "ajax.status"		: msg = "권한이 없는 페이지입니다."; break;
		case "ajax.state"		: msg = "로딩중입니다."; break;
		default : msg = "---";
	}
	return msg;
}

//if(/(\w)\1\1\1/.test(password)){
//	alert('444같은 문자를 4번 이상 사용하실 수 없습니다.');
//	return false;
//	}
//	if(password.search(id) > -1){
//	alert("비밀번호에 아이디가 포함되었습니다.");
//	return false;
//	}


/**
 * name : contextPath
 * Date : 2017-03-16
 * Description : 전체 컨텍스트패스를 변수로 지정해 사용, 변경시 함께 변경하여 줌.
 */
var CONTEXTPATH = "/";

var URL = document.location.href.split("/");
var PAGE = URL[URL.length-1];
FILE = PAGE.replace(".do", "");
