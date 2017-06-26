package kr.re.hep.admin.validation;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import kr.re.hep.common.ParamValidatChk;
import kr.re.hep.service.MemberService;
import kr.re.hep.vo.MemberVO;
import kr.re.hep.vo.SigninVO;

@Component
public class SigninValidation extends ParamValidatChk implements Validator {

	@Resource(name="memberService")
	MemberService memberService;
	
	public boolean supports(Class<?> arg0) {
		// TODO Auto-generated method stub
		return false;
	}

	public void validate(Object target, Errors err) {
		MemberVO inVO = (MemberVO) target;
		
		//>>>email
		String email = getParam(inVO.getEmail());
		if (isNull(email) || isEmpty(email)){
			err.rejectValue("email", "field.required.email");
			return;
		}
		if (!pattern("email", email)){
			err.rejectValue("email", "field.error.pattern.email");
			return;
		}
		
		//>>>password
		String password = getParam(inVO.getPassword());
		if (isNull(password) || isEmpty(password)){
			err.rejectValue("password", "field.required.password");
			return;
		}
		if (!pattern("password", password)){
			err.rejectValue("password", "field.error.pattern.password");
			return;
		}
		
		//>>>account
		MemberVO memberVO = memberService.signinSelect(email);
		SigninVO signVO = new SigninVO();
		signVO.setEmail(email);
		signVO.setIp(inVO.getIp());
		if (isNull(memberVO)){
			//Error email
			signVO.setSignin_yn(false);
			memberService.signInsert(signVO);
			err.rejectValue("email", "field.error.account");
			return;
		} else {
			signVO.setMember_no(memberVO.getMember_no());
			if (!password.equals(memberVO.getPassword())) {
				//Error password
				signVO.setSignin_yn(false);
				memberService.signInsert(signVO);
				err.rejectValue("password", "field.error.account");
				return;
			}
			// grade 변수가 필요없다고 판단되어 관련 함수 제거 by JongMoon (2017.06.26)
			/*
			if (memberVO.getGrade() <= 90){
				//Error grade
				signVO.setSignin_yn(false);
				memberService.signInsert(signVO);
				err.rejectValue("email", "field.error.account");
				return;
			}
			*/
			signVO.setSignin_yn(true);
			memberService.signInsert(signVO);
		}
	}

}
