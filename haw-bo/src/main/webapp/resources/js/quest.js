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
	$("form[name='questFrm'] button.write-btn").click(function(){
		FormChkModule(document.questFrm);
	})
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
					$(".tags").append("<span>"+ tag_nm +"</span>");
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