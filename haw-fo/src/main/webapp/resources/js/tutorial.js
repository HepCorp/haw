/**
 * Author : Su-yeon, Yun
 * Date : 2017-03-27
 * Description : Tutorial
 * Copyright : Hep Corporation
 */
var chatComment = new Array();
chatComment[0] = "<p>자! 이제 본격적으로 게임을 시작 해볼까요?<br><br>" +
		"우선 나라를 선택 해봅시다.<br><br>" +
		"현재 선택 할 수 있는 나라는 한국, 미국, 호주가 있습니다. 선택할 수 없는 나라들은 추후 진행 정도에 따라 오픈됩니다.<br><br>" +
		"우선 한국을 선택해 볼까요?</p>";
chatComment[1] = "<p>해당 나라에 대하여 위와 같은 내용을 포함하고 있습니다.<br><br>" +
		"도전하시려면 'JOIN'을 클릭하세요!</p>"
var chatNo = 0;	
$(function(){
	$(".chatPopUpWrap").hide();
	$(".tutorialCitySrap").hide();
	$(".countryInfo").hide();
	$("#tutorialStartFrm input[id='yes']").click(function(){
		level1();
	});
	$("#korPointer").bind("click", function(){
		level2();
		return false;
	});
	$("#join").click(function(){
		document.location.href = CONTEXTPATH +"/tutorial/korea.do";
	});
});

function level1(){
	$(".tutorialStartWrap").hide();
	$(".tutorialCityWrap").show();
	$(".chatting").html(chatComment[chatNo]);
	$(".chatPopUpWrap").show();
	chatNo++;
	$("#tutorialStartFrm input[id='yes']").unbind("click");
}
function level2(){
	$(".chatting").html(chatComment[chatNo]);
	chatNo++;
	$(".countryInfo").show();
	$(".tutorialWrap").unbind("click");
}