<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript">
chatNo = "${questObj.chatNo}";
function FormChkModule(f){
	f.answer.value = f.answer.value.trim();
	if (f.answer.value == ""){
		alert("정답을 입력해 주세요.!");
		f.answer.focus();
		return false;
	} else {
		if (f.answer.value != f.ANSWER.value){
			alert("ERROR!!")
			f.answer.select();
			f.answer.focus();
			return false;
		}
	}
	if ($("form[name='questFrm']").attr("action") == ""){
		$(".authButton").show();
		$(".chatting").html(chatComment[chatNo]);
		$(".authButton").click(function(){
			$(".authConnectLine").show();
			$(".authPopUp").show();
		});
		return false;
	}
	return true;
}
function FormChkModule2(f){
	f.authInsert.value = f.authInsert.value.trim();
	if (f.authInsert.value == ""){
		alert("FLAG를 입력해 주세요!");
		f.authInsert.focus();
		return false;
	} else {
		if (f.authInsert.value != f.ANSWER.value){
			alert("ERROR!!");
			f.authInsert.select();
			f.authInsert.focus();
			return false;
		}
	}
	return true;
}
</script>    
<section class="detailWrap" style="display:none">
    <div class="questDetailPopUp">
        <div class="questDetailBox">
            <div class="questNum">
                <h3>${questObj.title }</h3>
            </div>
            <div class="questContent">
                <p>From. ${questObj.from }</p>
                <span>${questObj.quest }</span>
                <c:if test="${ questObj.attach != null }">
                <p><img src="/resources/images/download-icon.png" alt="다운로드 아이콘"><a href="" id="downloadBtn">${questObj.attach }</a></p>
                </c:if>
            </div>
            <form action="${questObj.action }" name="questFrm" method="POST" onsubmit="return FormChkModule(this);">
                <fieldset>
                    <legend>퀘스트 답변 적기와 어쓰</legend>
                    <input type="hidden" name="ANSWER" value="${questObj.answer }" />
                    <span class="questAnswer">
                        <p><input type="text" id="answer" name="answer"></p>
                        <p><input type="submit" id="send" name="send" value=""></p>
                    </span>
                    <span class="authButton" style="display:none;">
                        <p><input type="button" id="auth" name="auth" value="AUTH"></p>
                    </span>
                </fieldset>
            </form>
        </div>
        <div class="questConnectLine">
            <img src="/resources/images/progressbar-connect-line.png" alt="프로그래스바 연결 선">
        </div>
        <div class="questProgressBar">
            <span id="progress0">
                <img src="/resources/images/progressbar-0.png" alt="프로그래스바 기본">
                <p id="completePer"><b>${questObj.complete }%</b><br>Completed</p>
            </span>
            <span id="progress50">
                <img src="/resources/images/progressbar-${questObj.complete }.png" alt="프로그래스바 진행중">
            </span>
        </div>
        <div class="authConnectLine" style="display:none;">
            <img src="/resources/images/auth-connect-line.png" alt="어쓰 입력창 연결 선">
        </div>
        <div class="authPopUp" style="display:none; ">
            <div class="authBox">
                <div class="auth">
                    <form action="${questObj.authaction }" method="POST" onsubmit="return FormChkModule2(this);">
                        <fieldset>
                            <legend>어쓰 체크</legend>
                            <input type="hidden" name="ANSWER" value="${questObj.answer }" />
                            <span id="authInputArea">
                                <input type="text" id="authInsert" name="authInsert" autofocus="autofocus">
                            </span>
                            <span id="authSubmit">
                                <input type="submit" id="checkButton" name="auth" value="">
                            </span>
                        </fieldset>
                    </form>
                </div>
            </div>

        </div>
    </div>

</section>