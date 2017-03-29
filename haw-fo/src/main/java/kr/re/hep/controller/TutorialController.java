package kr.re.hep.controller;

import java.util.HashMap;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
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
	@RequestMapping(value="/korea.do", method=RequestMethod.POST)
	private String korea(){
		//tutorial save
		
		return "/tutorial/korea";	
	}
	
	//제주도
	@RequestMapping(value="/jeju.do", method=RequestMethod.GET)
	private String jeju(){
		//tutorial save
		
		return "/tutorial/jeju";
	}
	
	//QUEST1-1
	@RequestMapping(value="/quest1-1.do", method=RequestMethod.POST)
	private String quest1_1(ModelMap model){
		
		HashMap<String, String> questObj = new HashMap<String, String>();
		questObj.put("title", "QUEST1-1");
		questObj.put("from", "Rachel");
		questObj.put("quest", "제주도 서귀포시 위쪽에 위치해 있는 시의 영문(소문자) 이름을 알려주세요.");
		questObj.put("answer", "jeju");
		questObj.put("complete", "0");
		questObj.put("attach", null);
		questObj.put("action", "quest1-2.do");
		questObj.put("chatNo", "6");
		
		model.addAttribute("questObj", questObj);
		
		return "/tutorial/jeju";
	}
	
	//QUEST1-2
	@RequestMapping(value="/quest1-2.do", method=RequestMethod.POST)
	private String quest1_2(ModelMap model) {
		HashMap<String, String> questObj = new HashMap<String, String>();
		questObj.put("title", "QUEST1-2");
		questObj.put("from", "Guest");
		questObj.put("quest", "이 게임의 영문(소문자) 이름이 무엇인가요?");
		questObj.put("answer", "hacktorial world");
		questObj.put("complete", "50");
		questObj.put("attach", null);
		questObj.put("action", null);
		questObj.put("chatNo", "7");
		
		model.addAttribute("questObj", questObj);
		
		return "/tutorial/jeju";		
	}
}
