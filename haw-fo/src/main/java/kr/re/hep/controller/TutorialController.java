package kr.re.hep.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/tutorial/*")
public class TutorialController {

	//튜토리얼 스타트
	//세계 지도
	@RequestMapping(value="/index.do", method=RequestMethod.GET)
	private String index(){
		return "/tutorial/index";
	}
	
	//대한민국
	private String korea(){
		return "/tutorial/korea";	
	}
}
