package kr.re.hep.admin.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.re.hep.service.MemberService;
import kr.re.hep.admin.validation.MemberValidation;
import kr.re.hep.admin.validation.SigninValidation;

import kr.re.hep.vo.MemberVO;
import kr.re.hep.vo.TeamVO;

@Controller
@RequestMapping("/member/*")
public class MemberController {

	@Autowired
	MemberService service;
	
	@Autowired
	MemberValidation memberVal;
	
	@Autowired
	SigninValidation signinVal;
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	private String main(){
		return "redirect:/member/index.do";
	}
	
	//로그인 화면
	@RequestMapping(value="/index.do", method=RequestMethod.GET)
	private String index(HttpSession session){
		//로그인화면에서는 로그아웃
		session.removeAttribute("memberVO");
		session.invalidate();
		
		return "/member/index";
	}
	
	//로그인
	@RequestMapping(value="/signin.do", method=RequestMethod.POST)
	private String signin(
			@ModelAttribute("memberVO") MemberVO inVO
		  , BindingResult result
		  , HttpServletRequest request
		  , HttpSession session){
		inVO.setIp(request.getRemoteAddr());
		
		//유효성 검사
		signinVal.validate(inVO, result);
		if (result.hasErrors()){
			return "/member/index";
		}
		
		//세션생성
		session.setAttribute("memberVO", inVO);
		
		//게임시작
		return "redirect:/index.do";
	}
	
	//회원가입
	@RequestMapping(value="/register.do", method=RequestMethod.GET)
	private String register(HttpSession session){
		
		//로그인시 로그아웃 하고 회원가입 여부를 체크
		session.removeAttribute("memberVO");
		session.invalidate();
		
		return "/member/register";
	}
	
	//회원가입처리
	@RequestMapping(value="/save.do", method=RequestMethod.POST)
	private String signup(
			@ModelAttribute("memberVO") MemberVO inVO
		  , BindingResult result
		  , HttpServletRequest request){
		MemberVO vo;
		
		//유효성 검사
		memberVal.validate(inVO, result);
		if (result.hasErrors()){
			return "/member/register";
		} else {
			vo = inVO;
		}
		
		//저장
		vo.setIp(request.getRemoteAddr());
		service.adminInsert(vo);
		
		return "redirect:/member/index.do";
	}
	
	//아이디중복체크
	@RequestMapping(value="/emailcheck.do", method=RequestMethod.POST)
	private @ResponseBody String emailCheck(
			  @RequestParam(value="email", required=true) String email){
		
		String result = service.adminEmailSelect(email);
		if (result == null){
			result = "OK";
		} else {
			result = "NO";
		}
		return result;
	}
	
	//닉네임중복체크
	@RequestMapping(value="/nicknamecheck.do", method=RequestMethod.POST)
	private @ResponseBody String nickCheck(
			@RequestParam(value="nick", required=true) String nickname){
		
		String result = service.adminNickSelet(nickname);
		if (result == null){
			result = "OK";
		} else {
			result = "NO";
		}
		return result;
	}
	
}
