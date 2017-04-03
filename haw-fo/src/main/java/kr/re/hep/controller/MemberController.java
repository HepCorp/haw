package kr.re.hep.controller;

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
import kr.re.hep.validation.MemberValidation;
import kr.re.hep.validation.SigninValidation;
import kr.re.hep.validation.TeamValidation;

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
		if (inVO.getTeam_no() == 0) {
			//팀선택
			return "redirect:/member/team.do";
		}
		if (!inVO.isTutorial_yn()) {
			//튜토리얼
			return "redirect:/tutorial/index.do";
		}
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
		service.memberInsert(vo);
		
		return "redirect:/member/index.do";
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
	private String teamSelect(HttpSession session){
		MemberVO memberVO = (MemberVO) session.getAttribute("memberVO");
		//팀이 없으면 팀선택 
		if (memberVO.getTeam_no() == 0) {
			return "/member/teamSelect";
		}
		//팀이 있으면 튜토리얼 
		else {
			return "redirect:/tutorial/index.do";
		}
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
		int row = service.updateTeamMember(memberVO);
		
		//!!!팀 업데이트시 오류인 경우 처리 코드 추가 요망
		if (row == 0) {
			return "/member/teamSelect";
		}
		if (row == 1) {
			service.updateTeam(inVO);
		}
		model.addAttribute("teamVO", inVO);
		return "/member/teamSelected";
	}
}
