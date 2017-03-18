package kr.re.hep.member.web;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

public class MemberValidation implements Validator {

	public boolean supports(Class<?> arg0) {
		// TODO Auto-generated method stub
		return false;
	}

	public void validate(Object arg0, Errors arg1) {
		//빈값여부
		//패턴검
		//중복여부
		
	}

}
