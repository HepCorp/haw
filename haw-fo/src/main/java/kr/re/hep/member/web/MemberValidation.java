package kr.re.hep.member.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import kr.re.hep.common.ParamValidatChk;
import kr.re.hep.member.MemberVO;
import kr.re.hep.member.service.MemberService;

@Component
public class MemberValidation extends ParamValidatChk implements Validator {

	@Resource(name="memberService")
	MemberService service;
	
	public boolean supports(Class<?> arg0) {
		// TODO Auto-generated method stub
		return false;
	}

	public void validate(Object target, Errors err) {
		MemberVO inVO = (MemberVO) target;
		
		//공백확인
		inVO.setName(getParam(inVO.getName()));
		inVO.setEmail(getParam(inVO.getEmail()));
		inVO.setPassword(getParam(inVO.getPassword()));
		inVO.setPassword2(getParam(inVO.getPassword2()));
		inVO.setNickname(getParam(inVO.getNickname()));
		
		//빈값여부
		if (isNull(inVO.getName()) || isEmpty(inVO.getName())) {
			err.rejectValue("name", "field.required.name");
			return;
		}
		if (isNull(inVO.getEmail()) || isEmpty(inVO.getName())) {
			err.rejectValue("email", "field.required.email");
			return;
		}
		if (isNull(inVO.getPassword()) || isEmpty(inVO.getPassword())) {
			err.rejectValue("password", "field.required.password");
			return;
		}
		if (isNull(inVO.getPassword2()) || isEmpty(inVO.getPassword2())) {
			err.rejectValue("password2", "field.required.re_password");
			return;
		}
		if (isNull(inVO.getNickname()) || isEmpty(inVO.getNickname())) {
			err.rejectValue("nickname", "field.required.nickname");
			return;
		}
		
		//패턴검
//		if (!pattern("email", inVO.getEmail())) {
//			err.rejectValue("email", "field.error.pattern.email");
//			return;
//		}
//		if (!pattern("password", inVO.getPassword())) {
//			err.rejectValue("password", "field.error.pattern.password");
//			return;
//		}
//		if (!pattern("nickname", inVO.getNickname())) {
//			err.rejectValue("nickname",  "field.error.pattern.nickname");
//		}
		if (!inVO.getPassword().equals(inVO.getPassword2())) {
			err.rejectValue("password2", "field.error.re_password");
			return;
		}
		
		//중복여부
		String emailchk = service.emailSelect(inVO.getEmail());
		if (emailchk != null) {
			err.rejectValue("email", "field.error.email");
			return;
		}
		String nickchk = service.nickSelet(inVO.getNickname());
		if (nickchk != null) {
			err.rejectValue("nickname", "field.error.nickname");
			return;
		}
		
	}

}
