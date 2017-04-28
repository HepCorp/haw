package kr.re.hep.web;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
	
	//서귀포 튜토리얼 
	@RequestMapping(value="/seogwipo.do", method=RequestMethod.GET)
	private String seogwipo(
			@RequestParam(value="lev", required=false, defaultValue="1") String level
		  , ModelMap model){
		
		//tutorial save
		
		HashMap<String, Object> questObj = new HashMap<String, Object>();
		questObj.put("level", level);
		questObj.put("complete", "0");
		questObj.put("activeClass", "seogwipo");
		questObj.put("wrap", "02");
		
		model.addAttribute("questObj", questObj);
		return "/tutorial/jeju";
	}
	
	//제주시 게임시작
	@RequestMapping(value="/jeju.do", method=RequestMethod.GET)
	private String jeju( ModelMap model){
		
		//tutorial save
		
		HashMap<String, Object> questObj = new HashMap<String, Object>();
		questObj.put("complete", "0");
		questObj.put("activeClass", "jeju");
		questObj.put("wrap", "03");
		
		model.addAttribute("questObj", questObj);
		return "/tutorial/jeju";
	}
	
	//QUEST1-1
	@RequestMapping(value="/quest1-1.do", method=RequestMethod.POST)
	private String quest1_1(ModelMap model){
		
		HashMap<String, String> questObj = new HashMap<String, String>();
		questObj.put("title", "QUEST1-1");
		questObj.put("from", "Rachel");
		questObj.put("quest", "최근 한달 동안 연락이 안되던 친구한테 이상한 메시지가 날라왔어요.<br>암호문 같은데... 해독 좀 부탁드립니다. 메시지는 아래와 같습니다.<br><br>"
				+ "URC{PrfneVfNaRnflRapelcgvbaZrgubq}");
		questObj.put("answer", "HEP{CesarIsAnEasyEncryptionMethod}");
		questObj.put("complete", "0");
		questObj.put("attach", null);
		questObj.put("action", "/tutorial/quest1-2.do");
		questObj.put("chatNo", "6");
		questObj.put("wrap", "02");
		questObj.put("activeClass", "seogwipo");
		
		model.addAttribute("questObj", questObj);
		
		return "/tutorial/jeju";
	}
	
	//QUEST1-2
	@RequestMapping(value="/quest1-2.do", method=RequestMethod.POST)
	private String quest1_2(ModelMap model) {
		HashMap<String, String> questObj = new HashMap<String, String>();
		questObj.put("title", "QUEST1-2");
		questObj.put("from", "Guest");
		questObj.put("quest", "안녕하세요, 개인적인 의뢰가 있어 연락 드립니다.<br>"
				+ "최근 여자친구가 저에게 무언가를 숨기고 있는 것 같습니다. 여자친구의 홈페이지에 접속해보니 Secret Diary라는 제목의 글이 의심스러운데... <br>"
				+ "암호가 걸려있고 제 나름 최대한 시도를 해봤지만 내용을 확인 할 수가 없네요. <br>"
				+ "Secret Key라는 글이 뭔가 힌트인 것 같긴한데... Secret Diary의 내용을 꼭 확인하고 싶습니다..<br>"
				+ "부탁드립니다. 사례는 섭섭치 않게 드리겠습니다.<br><br>"
				+ "웹 접속 링크 : http://192.168.0.120/wordpress/index.php/2017/04/04/secret-diary/");
		questObj.put("answer", "HEP{1_L0V3_U}");
		questObj.put("complete", "50");
		questObj.put("attach", null);
		questObj.put("action", "/tutorial/quest1-3.do");
		questObj.put("chatNo", "7");
		questObj.put("wrap", "02");
		questObj.put("activeClass", "seogwipo");
		
		model.addAttribute("questObj", questObj);
		
		return "/tutorial/jeju";		
	}
	//QUEST1-3
	@RequestMapping(value="/quest1-3.do", method=RequestMethod.POST)
	private String quest1_3(ModelMap model) {
		HashMap<String, String> questObj = new HashMap<String, String>();
		questObj.put("title", "FLAG");
		questObj.put("from", "stk");
		questObj.put("quest", "HEP{You_gOT_tHe_firST_FLAG}");
		questObj.put("answer", "HEP{You_gOT_tHe_firST_FLAG}");
		questObj.put("complete", "100");
		questObj.put("attach", null);
		questObj.put("action", null);
		questObj.put("chatNo", "9");
		questObj.put("authaction", "quest1.do");
		questObj.put("wrap", "02");
		questObj.put("activeClass", "seogwipo");
		
		model.addAttribute("questObj", questObj);
		
		return "/tutorial/jeju";		
	}
	
	//QUEST1 Complete
	@RequestMapping(value="/quest1.do", method=RequestMethod.POST)
	private String quest1(ModelMap model){
		HashMap<String, String> questObj = new HashMap<String, String>();
		questObj.put("alert", "Congratulations! You Got 500 Point.");
		questObj.put("action", "/tutorial/seogwipo.do");
		questObj.put("complete", "100");
		questObj.put("chatNo", "10");
		questObj.put("level", "2");
		questObj.put("wrap", "02");
		questObj.put("activeClass", "seogwipo");
		
		model.addAttribute("questObj", questObj);
		
		return "/tutorial/jeju";		
	}
	
	//QUEST2-1
	@RequestMapping(value="/quest2-1.do", method=RequestMethod.POST)
	private String quest2_1(ModelMap model){
		
		HashMap<String, String> questObj = new HashMap<String, String>();
		questObj.put("title", "QUEST2-1");
		questObj.put("from", "Grace");
		questObj.put("quest", "Decrypt \"decrypt_it.txt\" file in this Linux. dsl password is VulPasswdFile");
		questObj.put("answer", "HEP{Cipher_can_be_decrypted_even_in_notepad}");
		questObj.put("complete", "0");
		questObj.put("attach", "decrypt_it.zip");
		questObj.put("action", null);
		questObj.put("chatNo", "13");
		questObj.put("authaction", "quest2.do");
		questObj.put("wrap", "02");
		questObj.put("activeClass", "seogwipo");
		
		model.addAttribute("questObj", questObj);
		
		return "/tutorial/jeju";
	}
	
	//QUEST2 Complete
	@RequestMapping(value="/quest2.do", method=RequestMethod.POST)
	private String quest2(ModelMap model){
		HashMap<String, String> questObj = new HashMap<String, String>();
		questObj.put("alert", "Congratulations! You Got 500 Point.");
		questObj.put("action", "/tutorial/seogwipo.do");
		questObj.put("complete", "100");
		questObj.put("chatNo", "15");
		questObj.put("level", "3");
		questObj.put("wrap", "02");
		questObj.put("activeClass", "seogwipo");
		
		model.addAttribute("questObj", questObj);
		
		return "/tutorial/jeju";		
	}

	//QUEST3-1
	@RequestMapping(value="/quest3-1.do", method=RequestMethod.POST)
	private String quest3_1(ModelMap model){
		
		HashMap<String, String> questObj = new HashMap<String, String>();
		questObj.put("title", "QUEST3-1");
		questObj.put("from", "Alexan");
		questObj.put("quest", "임무 수행도중 아래와 같은 서버를 접속하여 메시지(Flag)를 확보해야하는 상황입니다.<br>"
				+ "암호는 유실되어 알수 없는 상황이고, 암호문을 얻어 낼 수 있는 '사전 파일'만 확보한 상태입니다.<br>"
				+ "사전 파일의 내용을 전부 대입해보려 시도했으나 시간이 너무 지체되고 있습니다.<br>"
				+ "내용을 추릴 수 있는 방법이 있다면 좋을텐데....  아무튼 해당 서버에 접속해서 메시지(Flag)를 확보 부탁드립니다.<br><br>"
				+ "서버 접속 정보소 : 192.168.0.100 // 22번 포트 <br>ID : mature2");
		questObj.put("answer", "HEP{Hydrarisk!_not_a_Hydralisk}");
		questObj.put("complete", "0");
		questObj.put("attach", null);
		questObj.put("action", null);
		questObj.put("chatNo", "18");
		questObj.put("authaction", "quest3.do");
		questObj.put("wrap", "02");
		questObj.put("activeClass", "seogwipo");
		
		model.addAttribute("questObj", questObj);
		
		return "/tutorial/jeju";
	}

	//QUEST3 Complete
	@RequestMapping(value="/quest3.do", method=RequestMethod.POST)
	private String quest3(ModelMap model){
		HashMap<String, String> questObj = new HashMap<String, String>();
		questObj.put("alert", "Congratulations! You Got 500 + 1000 Point.");
		questObj.put("action", "/tutorial/jeju.do");
		questObj.put("complete", "100");
		questObj.put("chatNo", "20");
		questObj.put("level", null);
		questObj.put("wrap", "02");
		questObj.put("activeClass", "seogwipo");
		
		model.addAttribute("questObj", questObj);
		
		return "/tutorial/jeju";		
	}
	
	@RequestMapping(value="/downloadFile.do")
	public void downloadFile(
			  @RequestParam(value="file", required=true) String attach_file
			, HttpServletResponse response
			, HttpServletRequest request) throws Exception{
	    String dataDirectory = request.getSession().getServletContext().getRealPath("/resources/attach/");
	    Path file = Paths.get(dataDirectory, attach_file);
	    
	    if (Files.exists(file)) 
        {
            response.setContentType("application/pdf");
            response.addHeader("Content-Disposition", "attachment; filename="+attach_file);
            try
            {
                Files.copy(file, response.getOutputStream());
                response.getOutputStream().flush();
            } 
            catch (IOException ex) {
                ex.printStackTrace();
            }
        }
	}

}
