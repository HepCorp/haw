package kr.re.hep.validation;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import kr.re.hep.common.ParamValidatChk;
import kr.re.hep.member.MemberVO;
import kr.re.hep.member.SigninVO;
import kr.re.hep.member.service.MemberService;

@Component
public class SigninValidation extends ParamValidatChk implements Validator {

	@Resource(name="memberService")
	MemberService service;
	
	public boolean supports(Class<?> arg0) {
		// TODO Auto-generated method stub
		return false;
	}

	public void validate(Object target, Errors err) {
		MemberVO inVO = (MemberVO) target;
		
		//공백체크
		inVO.setEmail(getParam(inVO.getEmail()));
		inVO.setPassword(getParam(inVO.getPassword()));
		
		//빈값체크
		if (isNull(inVO.getEmail()) || isEmpty(inVO.getEmail())) {
			err.rejectValue("email", "field.required.email");
			return;
		}
		if (isNull(inVO.getPassword()) || isEmpty(inVO.getPassword())){
			err.rejectValue("password", "field.required.password");
			return;
		}
		
		//패턴체크
//		if (!pattern("email", inVO.getEmail())){
//			err.rejectValue("email", "field.error.pattern.email");
//			return;
//		}
//		if (!pattern("password", inVO.getPassword())){
//			err.rejectValue("password", "field.error.pattern.password");
//			return;
//		}
		
		//회원여부 체크
		MemberVO outVO;
		try {
			outVO = service.signinSelect(inVO.getEmail());
		} catch (Exception e) {
			err.rejectValue("email", e.getMessage());
			e.printStackTrace();
			return;
		}
		SigninVO signVO = new SigninVO();
		signVO.setEmail(inVO.getEmail());
		signVO.setIp(inVO.getIp());
		if (isNull(outVO)) {
			err.rejectValue("email", "field.error.account");
			signVO.setMember_no(0);
			signVO.setSignin_yn(false);
			service.signInsert(signVO);
			return;
		} else {
			signVO.setMember_no(outVO.getMember_no());
			if (!inVO.getPassword().equals(outVO.getPassword())) {
				err.rejectValue("password", "field.error.account");
				signVO.setSignin_yn(false);
				service.signInsert(signVO);
				return;
			} else {
				signVO.setSignin_yn(true);
			}
		}
		service.signInsert(signVO);
		inVO.setMember_no(outVO.getMember_no());
		inVO.setName(outVO.getName());
		inVO.setNickname(outVO.getNickname());
		inVO.setTutorial_yn(outVO.isTutorial_yn());
		inVO.setTeam_no(outVO.getTeam_no());
		inVO.setPoint(outVO.getPoint());
	}

}
