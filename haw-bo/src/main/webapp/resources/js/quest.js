/**
 * 
 */
$(function(){
	$("input[name='tag_nm']").keyup(function(e){
		var tag_nm = $(this).val().trim();
		if (tag_nm.length >= 1){
			var code = e.which;
			if (code==13){
				new ajax.xhr.Request('tagSave.do', 'tag_nm='+ tag_nm, tagLoaded, "POST");
			} 
		}
	});
	$("#tag-plus-btn01").click(function(){
		var tag_nm = $("input[name='tag_nm']").val();
		if (tag_nm == "") {
			alert("태그를 입력해 주세요.");
			$("input[name='tag_nm']").focus();
		} else {
			new ajax.xhr.Request("tagSave.do", "tag_nm="+ tag_nm, tagLoaded, "POST");
		}
	})
	$("form[name='questFrm'] button.write-btn,button.revise-btn").click(function(){
		FormChkModule(document.questFrm);
	});
	$(".tags").on("click", "button.delete-tag", function(){
		var tag_no = $(this).attr("data");
		$("input[name='tag_str']").val(function(){
			var result = this.value.replace(tag_no +"|", "");
			if (result == "|") result = "";
			return result;
		});
		
		$(this).parents("span.tag-box").remove();
	});
	$(".delete-btn").click(function(){
		if (confirm("삭제하시겠습니까? 관련 미션도 함께 삭제됩니다.")){
			document.location.href = $(this).attr("dir") +"?no="+ $(this).attr("data-seq-no");
		} else {
			return false;
		}
	});
});


function tagLoaded(xhr){
	if (xhr.readyState==4){
		if (xhr.status==200){
			var vo = eval( '(' +xhr.responseText+ ')');
			if (vo == null){
				alert("등록에 오류가 있습니다.");
			} else {
				var tag_str = $("input[name='tag_str']").val();
				var tag_no = vo.tag_no;
				var tag_nm = vo.tag_nm;
				if (tag_str.indexOf("|"+ tag_no +"|") > -1) {
					alert("이미 등록되어 있습니다.");
				} else {
					$(".tags").append("<span class='tag-box'>" +
							"<span>#"+ tag_nm +"" +
									"<button type='button' data='"+ tag_no +"' class='delete-tag'>x</button>" +
							"</span>&nbsp;</span>");
					$("input[name='tag_str']").val(function(){
						if (this.value == ""){ tag_no = "|"+ tag_no;}
						return this.value + tag_no + "|";
					});
				}
			}
			$("input[name='tag_nm']").val("");
			$("input[name='tag_nm']").focus();
		}
	}
}

function objLength(obj){
	if (obj.length == undefined){
		return 1;
		
	} else {
		return obj.length;
	}
}