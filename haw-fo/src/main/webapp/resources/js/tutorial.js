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
		"QUEST1을 클릭 해보세요!</p>";
chatComment[5] = "<p>QUEST1의 아이콘은 '문답' 혹은 '미니게임' 형태의 문제를 뜻합니다.<br><br>" +
		"계속 진행하시려면 ACCEPT를 클릭 해보세요!</p>";
chatComment[6] = "<p>문제를 읽고 답을 입력란에 입력해주시고, 우측 보내기 버튼을 클릭해 주세요!</p>";	
chatComment[7] = "<p>축하합니다! 첫번째 의뢰를 해결하셨어요.<br><br>" +
		"우측 상단에 진행률을 확인해보세요.<br>" +
		"현재 전체 의뢰의 50%를 해결하셨습니다.<br><br>" +
		"자 이제 QUEST1-2의 정답을 입력 해 보세요.</p>"	;
chatComment[8] = "<p>2개의 의뢰를 모두 해결하셨습니다!<br><br>" +
		"FLAG 를 정답란에 입력해 주세요! </p>";
chatComment[9] = "<p>좌측하단 AUTH 버튼을 눌러 최종 FLAG를 입력해보세요.</p>";
chatComment[10] = "<p>축하드립니다. QUEST1을 클리어하셨습니다.<br><br>" +
		"보상을 획득합니다.<br><br>" +
		"보상 포인트는 추후 아이템 구매 등에 사용 할 수 있고, 최종적으로 팀 순위 및 개별 순위 책정에 사용됩니다.</p>";
chatComment[11] = "<p>QUEST1을 클리어하여 아이콘이 변경되었습니다.<br><br>다음은 QUEST2를 클릭해 보세요.</p>";
chatComment[12] = "<p>이번에는 파일을 다운로드해서 FLAG를 찾는 유형의 문제입니다.<br><br>계속 진행하시려면 ACCEPT를 클릭 해보세요!</p>";
chatComment[13] = "<p>간단한 의뢰가 들어와있네요!<br><br>" +
		"파일을 다운로드 받고 안쪽에 있는 FLAG을 찾아보세요.<br><br>" +
		"메시지는 일반적으로 FLAG를 뜻합니다.</p>"
chatComment[14] = "<p>축하드립니다~! 두번째 의뢰를 완수하였습니다.<br><br>" +
		"보상을 획득합니다.<br><br>" +
		"이제 튜토리얼은 마지막 한단계 남았습니다!</p>";
chatComment[15] = "<p>잡겨있던 QUEST3이 열렸습니다!<br><br>" +
	"마지막 QUEST3은 서버에 접속하여 푸는 문제입니다!<br><br>" +
	"QUEST3을 클릭해보세요.</p>";
chatComment[16] = "<p>QUEST3의 의뢰는 현재까지와는 다소 다른형태입니다.<br><br>" +
		"FLAG를 찾았으면 지금까지와 마찬가지로 아래 입력란에 입력 해주세요.</p>";
chatComment[17] = "<p>축하드립니다~! 의뢰를 해결했습니다.<br><br>" +
		"보상을 획득합니다.<br><br>" +
		"도시 전체를 클리어하여 도시 클리어 보상도 추가로 획득합니다.</p>"
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
		$(".tutorialWrap").show();
		$(".tutorialCityWrap").show();
		chatNo = 3;
		$(".chatting").html(chatComment[chatNo]);
		chatNo++;
		$(".chatPopUpWrap").show();
		$("#sgpPointer").click(function(){
			$(".tutorialCityWrap").hide();
			$(".questPopUpWrap").show();
			$(".chatting").html(chatComment[chatNo]);
			chatNo++;
			return false;
		});
		$("#1quest").css("cursor", "pointer");
		$("#1quest").click(function(){
			$(".questInfoPopUpWrap").show();
			$("#infoPopUp").toggleClass("infoPopUp01");
			$(".chatting").html(chatComment[chatNo]);
		});
	}
	//quest
	else if (FILE.includes("quest")){
		if (FILE == "quest1" || FILE == "quest2" || FILE == "quest3") {
			$(".tutorialWrap02").show();
		} 
		else {
			$(".tutorialWrap").show();
			$(".detailWrap").show();
		}
		$(".chatting").html(chatComment[chatNo]);
		chatNo++;
	}
	//레벨2
	else if (FILE == "jeju?lev=2"){
		chatNo = 11;
		$(".chatting").html(chatComment[chatNo]);
		chatNo++;
		$(".tutorialWrap").show();
		$(".questPopUpWrap").show();
		$("#1quest>img").attr("src", "/resources/images/checked-icon.png");
		$("#1quest").parent().children("dd").text("CLEAR");
		$("#2quest").css("cursor", "pointer");
		$("#2quest").click(function(){
			$(".questInfo ul li:eq(2)").text("1 Question");
			$(".questInfoPopUpWrap").show();
			$("#infoPopUp").toggleClass("infoPopUp02");  
			$(".questInfo form").attr("action", "/tutorial/quest2-1.do");
			$(".chatting").html(chatComment[chatNo]);
		});
	}
	//레벨3
	else if (FILE == "jeju?lev=3") {
		chatNo = 15;
		chatCom();
		$(".tutorialWrap").show();
		$(".questPopUpWrap").show();
		$("#1quest>img, #2quest>img").attr("src", "/resources/images/checked-icon.png");
		$("#1quest, #2quest").parent().children("dd").text("CLEAR");
		$("#3quest>img").attr("src", "/resources/images/quest3-icon.png");
		$("#3quest").parent().children("dd").text("QUEST3");
		$("#3quest").css("cursor", "pointer");
		$("#3quest").click(function(){
			$(".questInfo ul li:eq(2)").text("1 Question");
			$(".questInfoPopUpWrap").show();
			$("#infoPopUp").toggleClass("infoPopUp03");  
			$(".questInfo form").attr("action", "/tutorial/quest3-1.do");
			chatCom(chatNo);
		})
	}
});

function chatCom(){
	$(".chatting").html(chatComment[chatNo]);
	chatNo++;
}
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