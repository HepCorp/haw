package kr.re.hep.member.web;

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

import kr.re.hep.member.MemberVO;
import kr.re.hep.member.TeamVO;
import kr.re.hep.member.service.MemberService;

@Controller
@RequestMapping("/member/*")
public class MemberController {

	@Autowired
	MemberService service;
	
	@Autowired
	MemberValidation memberVal;
	
	@Autowired
	SigninValidation signinVal;
	
	@Autowired
	TeamValidation teamVal;
	
	//로그인 화면
	@RequestMapping(value="/index.do", method=RequestMethod.GET)
	private String index(){
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
		
		if (inVO.getTeam_no() == 0) {
			//팀선택
			return "/member/teamSelect";
		}
		if (!inVO.isTutorial_yn()) {
			//튜토리얼
			return "/tutorial/index";
		}
		//게임시작
		return "direct:/index.do";
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
		service.memberInsert(vo);
		
		return "direct:/index.do";
	}
	
	//아이디중복체크
	@RequestMapping(value="/emailcheck.do", method=RequestMethod.POST)
	private @ResponseBody String emailCheck(
			  @RequestParam(value="email", required=true) String email){
		
		String result = service.emailSelect(email);
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
		
		String result = service.nickSelet(nickname);
		if (result == null){
			result = "OK";
		} else {
			result = "NO";
		}
		return result;
	}
	
	//팀선택 페이지
	@RequestMapping(value="/team.do", method=RequestMethod.GET)
	private String teamSelect(){
		return "/member/teamSelect";
	}
	
	//팀선택
	@RequestMapping(value="/teamSave.do", method=RequestMethod.POST)
	private String teamSave(
			@ModelAttribute("teamVO") TeamVO inVO
		  , BindingResult result
		  , HttpServletRequest request
		  , HttpSession session
		  , ModelMap model){
		//로그인확인
		MemberVO memberVO = (MemberVO) session.getAttribute("memberVO");
		
		//유효성체크
		teamVal.validate(inVO, result);
		if (result.hasErrors()){
			return "/member/teamSelect";
		}
		
		//회원정보 수정
		memberVO.setTeam_no(inVO.getTeam_no());
		session.setAttribute("memberVO", memberVO);
		
		//팀 선택
		service.updateTeamMember(memberVO);
		service.updateTeam(inVO);
		
		model.addAttribute("teamVO", inVO);
		return "/member/teamSelected";
	}
}
