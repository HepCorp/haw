package kr.re.hep.controller;

import java.util.HashMap;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
	private String jeju(
			@RequestParam(value="lev", required=false, defaultValue="1") String level
		  , ModelMap model){
		
		//tutorial save
		
		HashMap<String, Object> questObj = new HashMap<String, Object>();
		questObj.put("level", level);
		questObj.put("complete", "0");
		
		model.addAttribute("questObj", questObj);
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
		questObj.put("action", "/tutorial/quest1-2.do");
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
		questObj.put("action", "/tutorial/quest1-3.do");
		questObj.put("chatNo", "7");
		
		model.addAttribute("questObj", questObj);
		
		return "/tutorial/jeju";		
	}
	//QUEST1-3
	@RequestMapping(value="/quest1-3.do", method=RequestMethod.POST)
	private String quest1_3(ModelMap model) {
		HashMap<String, String> questObj = new HashMap<String, String>();
		questObj.put("title", "QUEST1-2");
		questObj.put("from", "Guest");
		questObj.put("quest", "HEP{You_gOT_tHe_firST_FLAG}");
		questObj.put("answer", "HEP{You_gOT_tHe_firST_FLAG}");
		questObj.put("complete", "100");
		questObj.put("attach", null);
		questObj.put("action", null);
		questObj.put("chatNo", "8");
		questObj.put("authaction", "quest1.do");
		
		model.addAttribute("questObj", questObj);
		
		return "/tutorial/jeju";		
	}
	
	//QUEST1 Complete
	@RequestMapping(value="/quest1.do", method=RequestMethod.POST)
	private String quest1(ModelMap model){
		HashMap<String, String> questObj = new HashMap<String, String>();
		questObj.put("alert", "Congratulations! You Got 500 Point.");
		questObj.put("action", "/tutorial/jeju.do");
		questObj.put("complete", "100");
		questObj.put("chatNo", "10");
		questObj.put("level", "2");
		
		model.addAttribute("questObj", questObj);
		
		return "/tutorial/jeju";		
	}
	
	//QUEST2-1
	@RequestMapping(value="/quest2-1.do", method=RequestMethod.POST)
	private String quest2_1(ModelMap model){
		
		HashMap<String, String> questObj = new HashMap<String, String>();
		questObj.put("title", "QUEST2-1");
		questObj.put("from", "Grace");
		questObj.put("quest", "친구가 파일을 보내왔는데, 어떻게 열어보는지 모르겠어요.<br>안쪽에 메시지를 적어뒀다고 하는데...<br>메시지를 찾아주세요.");
		questObj.put("answer", "HEP{You_GOT_the SeCOND_flag}");
		questObj.put("complete", "0");
		questObj.put("attach", "Attached_file.zip");
		questObj.put("action", null);
		questObj.put("chatNo", "13");
		questObj.put("authaction", "quest2.do");
		
		model.addAttribute("questObj", questObj);
		
		return "/tutorial/jeju";
	}
	
	//QUEST2 Complete
	@RequestMapping(value="/quest2.do", method=RequestMethod.POST)
	private String quest2(ModelMap model){
		HashMap<String, String> questObj = new HashMap<String, String>();
		questObj.put("alert", "Congratulations! You Got 500 Point.");
		questObj.put("action", "/tutorial/jeju.do");
		questObj.put("complete", "100");
		questObj.put("chatNo", "14");
		questObj.put("level", "3");
		
		model.addAttribute("questObj", questObj);
		
		return "/tutorial/jeju";		
	}

	//QUEST3-1
	@RequestMapping(value="/quest3-1.do", method=RequestMethod.POST)
	private String quest3_1(ModelMap model){
		
		HashMap<String, String> questObj = new HashMap<String, String>();
		questObj.put("title", "QUEST2-1");
		questObj.put("from", "Grace");
		questObj.put("quest", "예전에 사용하던 서버에 접속하여 중요한 메시지를 확인해주세요.<br><br>"
				+ "서버주소 : 192.168.0.100<br>ID : sshuser<br>Pass : sshuser");
		questObj.put("answer", "HEP{Ssh_ConnEctioN}");
		questObj.put("complete", "0");
		questObj.put("attach", null);
		questObj.put("action", null);
		questObj.put("chatNo", "16");
		questObj.put("authaction", "quest3.do");
		
		model.addAttribute("questObj", questObj);
		
		return "/tutorial/jeju";
	}

	//QUEST3 Complete
	@RequestMapping(value="/quest3.do", method=RequestMethod.POST)
	private String quest3(ModelMap model){
		HashMap<String, String> questObj = new HashMap<String, String>();
		questObj.put("alert", "Congratulations! You Got 500 + 1000 Point.");
		questObj.put("action", "/tutorial/index.do");
		questObj.put("complete", "100");
		questObj.put("chatNo", "17");
		questObj.put("level", null);
		
		model.addAttribute("questObj", questObj);
		
		return "/tutorial/jeju";		
	}

}
