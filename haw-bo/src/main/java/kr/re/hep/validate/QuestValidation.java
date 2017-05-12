package kr.re.hep.validate;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import kr.re.hep.common.ParamValidatChk;

public class QuestValidation extends ParamValidatChk implements Validator {

	public boolean supports(Class<?> arg0) {
		// TODO Auto-generated method stub
		return false;
	}

	public void validate(Object arg0, Errors arg1) {
		// TODO Auto-generated method stub
		
	}

}
