package kr.re.hep.admin.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.re.hep.admin.validation.SigninValidation;
import kr.re.hep.common.ParamValidatChk;
import kr.re.hep.vo.MemberVO;

@Controller
@RequestMapping("/*")
public class MainController extends ParamValidatChk {

	@Autowired
	SigninValidation signinVal;
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	private String main(){
		return "redirect:/index.do";
	}
	
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
}
