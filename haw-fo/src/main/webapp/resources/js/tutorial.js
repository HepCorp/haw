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
chatComment[2] = "<p>이번엔 도시를 선택 할 차례입니다.<br>" +
		"도시를 선택하면 각 도시에 있는 의로들을 확인할 수 있습니다.<br><br>" +
		"현재 활성화 되어있는 도시는 제주도 뿐이네요.<br>" +
		"제주도를 클릭해주세요!</p>";
chatComment[3] = "<p>의뢰는 도시내 지역별로 존재합니다.<br><br>" +
		"현재 서귀포시에 의뢰가 존재하네요, 클릭해보세요!</p>"
chatComment[4] = "<p>서귀포시에는 3개의 의뢰가 존재합니다.<br><br>" +
		"QUEST1과 QUEST2만 선택 가능하네요!<br>" +
		"두개의 의뢰를 해결하면 QUEST3이 활성화 될 것 입니다.<br>" +
		"QUEST 위 아이콘은 문제의 유형을 뜻합니다.<br><br>" +
		"QUEST1을 클릭 해보세요!</p>"
var chatNo = 0;	
$(function(){
	console.log(FILE);
	//튜토리얼 세계지도
	if (FILE == "index"){
		$(".chatPopUpWrap").hide();
		$(".tutorialCityWrap").hide();
		$(".countryInfo").hide();
		$("#tutorialStartFrm input[id='yes']").click(function(){
			level1();
		});
		$("#korPointer").bind("click", function(){
			level2();
			return false;
		});
	}
	//튜토리얼 한국지도
	else if (FILE == "korea"){
		chatNo = 2;
		$(".chatting").html(chatComment[chatNo]);
		$(".chatPopUpWrap").show();
	}
	//튜토리얼 제주도
	else if (FILE == "jeju") {
		$(".tutorialWrap").hide();
		chatNo = 3;
		$(".chatting").html(chatComment[chatNo]);
		chatNo++;
		$(".chatPopUpWrap").show();
		$("#questPop").click(function(){
			$(".tutorialWrap").show();
			$(".chatting").html(chatComment[chatNo]);
			return false;
		})
	}
});

function level1(){
	$(".tutorialStartWrap").hide();
	$("#pointer").hide();
	$("#korea").hide();
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