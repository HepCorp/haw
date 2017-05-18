package kr.re.hep.validate;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import kr.re.hep.common.ParamValidatChk;
import kr.re.hep.vo.MemberVO;

public class SigninValidation extends ParamValidatChk implements Validator {

	public boolean supports(Class<?> arg0) {
		// TODO Auto-generated method stub
		return false;
	}

	public void validate(Object target, Errors err) {
		MemberVO inVO = (MemberVO) target;
		
		String email = getParam(inVO.getEmail());
		if (isNull(email) || isEmpty(email)){
			err.rejectValue("email", "field.required.email");
			return;
		}
		
		
	}

}
