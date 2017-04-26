package kr.re.hep.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/*")
public class MainController {

	@RequestMapping(value="/", method=RequestMethod.GET)
	private String main(){
		return "redirect:/member/index.do";
	}
	
	//목록
	
	//퀘스트 저장
	
	//미션 저장
	
	//힌트 저장
	
	//퀘스트 상세보기
	
	//퀘스트 미션 목록
	
	//미션 힌트 목록
	
	
}
