<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<section class="tutorialWrap02" style="display:none; ">
    <div class="tutorialPopUpWrap">
        <div class="completeBox">
            <h1>QUEST COMPLETE</h1>
            <div class="completePopUp">
                <span>${questObj.alert }</span>
            </div>
            <form action="${questObj.action }" method="GET">
            	<input type="hidden" name="lev" value="${questObj.level }" />
                <span>
                    <input type="submit" id="ok" name="" value="OK">
                </span>
            </form>
        </div>
    </div>
</section>