<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <div class="questPopUpWrap" style="display:none; ">
        <div class="questPopUpBox">
            <div class="questPopUp">
                <h2 class="questH2">SEOGWIPO CITY</h2>
                <div class="questBox">
                    <div class="questWrap">
                        <dl>
                            <dt id="1quest"><img src="/resources/images/quest1-icon.png" alt="퀘스트1 아이콘"></dt>
                            <dd>QUEST1</dd>
                        </dl>
                        <dl>
                            <dt id="2quest"><img src="/resources/images/quest2-icon.png" alt="퀘스트2 아이콘"></dt>
                            <dd>QUEST2</dd>
                        </dl>
                        <dl>
                            <dt id="3quest"><img src="/resources/images/lock-icon.png" alt="잠김 아이콘"></dt>
                            <dd>LOCKED</dd>
                        </dl>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="questInfoPopUpWrap" style="display:none; ">
        <div class="questInfoBox">
            <div class="infoPopUp">
                <span id="focusInfo"><img src="/resources/images/quest-focus.png" alt=" 선택 퀘스트 포커싱"></span>
                <span id="connectInfo"><img src="/resources/images/quest-connect-line.png" alt="퀘스트 정보 연결 선"></span>
                <div class="questInfo">
                    <ul>
                        <li>Beginner</li>
                        <li>Computer Science</li>
                        <li>2 Questions</li>
                        <li>500 point</li>
                    </ul>
                    <form action="/tutorial/quest1-1.do" method="POST">
                        <fieldset>
                            <legend>미션 수락</legend>
                            <input type="submit" id="missionAccept" name="missionAccept" value="ACCEPT">
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
    </div>
    