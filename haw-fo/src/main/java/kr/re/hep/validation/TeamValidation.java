package kr.re.hep.validation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import kr.re.hep.common.ParamValidatChk;
import kr.re.hep.service.MemberService;
import kr.re.hep.vo.TeamVO;

@Component
public class TeamValidation extends ParamValidatChk implements Validator {

	@Autowired
	MemberService service;
	
	public boolean supports(Class<?> arg0) {
		// TODO Auto-generated method stub
		return false;
	}

	public void validate(Object target, Errors err) {
		TeamVO inVO = (TeamVO) target;
		String team = getParam(inVO.getTeam());
		int team_no;
		
		//빈값 확인
		if (isNull(team) || isEmpty(team) || team.equals("0")){
			err.rejectValue("team", "field.required.team_no");
			return;
		}
		if (!isNumeric(team)){
			err.rejectValue("team", "field.error.pattern.team");
			return;
		} else {
			inVO.setTeam_no(toInteger(team));
			team_no = inVO.getTeam_no();
		}
		
		//실제 있는 팀인지 검사
		TeamVO outVO = service.teamSelect(team_no);
		if (isNull(outVO)){
			err.rejectValue("team", "field.error.team");
			return;
		}
		
		inVO.setTeam_nm(outVO.getTeam_nm());
		inVO.setTeam_tot(outVO.getTeam_tot());
		inVO.setTeam_cnt(outVO.getTeam_cnt());
		inVO.setColor(outVO.getColor());
		inVO.setImage(outVO.getImage());
		inVO.setPoint(outVO.getPoint());
		inVO.setDescription(outVO.getDescription());
	}

}
