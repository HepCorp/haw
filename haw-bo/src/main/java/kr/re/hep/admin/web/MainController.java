package kr.re.hep.admin.web;


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
	
	/*
	//로그인
	@RequestMapping(value="/index.do", method=RequestMethod.GET)
	private String index(){
		return "/index";
	}
	
	//로그인시도
	@RequestMapping(value="/signin.do", method=RequestMethod.POST)
	private String signin(@ModelAttribute("memberVO") MemberVO memberVO
			, BindingResult result
			, HttpServletRequest request
			, HttpSession session){
		memberVO.setIp(request.getRemoteAddr());
		
		//유효성검사
		signinVal.validate(memberVO, result);
		if (result.hasErrors()){
			return "/index";
		}
		
		//세션생성
		session.setAttribute("manageVO", memberVO);
	
		return "redirect:/quest/index.do";
	}
	*/
}
