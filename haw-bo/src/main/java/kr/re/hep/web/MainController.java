package kr.re.hep.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

	@RequestMapping(value="/", method=RequestMethod.GET)
	private String main(){
		return "/quest/index";
	}
	
	//퀘스트 목록
	@RequestMapping(value="/index.do", method=RequestMethod.GET)
	private String index(){
		return "/quest/index";
	}
	
	//퀘스트 미션 목록 (AJAX)
	
	//퀘스트 저장
	
	//미션 저장
	
	//힌트 저장
	
	//퀘스트 상세보기
	
	//퀘스트 미션 목록
	
	//미션 힌트 목록
	

}
