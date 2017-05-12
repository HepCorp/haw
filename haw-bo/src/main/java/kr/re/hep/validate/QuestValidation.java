package kr.re.hep.validate;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import kr.re.hep.common.ParamValidatChk;
import kr.re.hep.service.GubunService;
import kr.re.hep.service.RegionService;
import kr.re.hep.vo.GubunVO;
import kr.re.hep.vo.QuestVO;

@Component
public class QuestValidation extends ParamValidatChk implements Validator {

	@Resource(name="regionService")
	RegionService regionService;
	
	@Resource(name="gubunService")
	GubunService gubunService;
	
	public boolean supports(Class<?> arg0) {
		// TODO Auto-generated method stub
		return false;
	}

	public void validate(Object obj, Errors err) {
		QuestVO inVO = (QuestVO) obj;
		
		//>>>지역번호
		String region_str = getParam(inVO.getRegion_str());
		int region_no;
		if (isNull(region_str) || isEmpty(region_str)) {
			//값이 없으면
			err.rejectValue("region_no", "field.required.region_no");
			return;
		}
		if (!isNumeric(region_str)){
			//숫자가 아니면
			err.rejectValue("region_no", "field.error.region_no");
			return;
		} else {
			region_no = toInteger(region_str);
			if (region_no == 0){
				//0이면
				err.rejectValue("region_no", "field.error.region_no");
				return;
			} else {
				int result = regionService.regionExistsSelect(region_no);
				if (result == 0){
					//해당지역이 없으면
					err.rejectValue("region_no", "field.error.region_no");
					return;
				}
			}
		}
		
		//>>>유형
		String type = getParam(inVO.getType());
		if (isNull(type) || isEmpty(type)) {
			//값이 없으면
			err.rejectValue("type", "field.required.type");
			return;
		} else {
			GubunVO gubunVO = new GubunVO(0, "type", type, null, null);
			int result = gubunService.gubunExistsSelect(gubunVO);
		}
		if (!type.equals("B") && !type.equals("D") && !type.equals("S")){
			//B, D, S도 아니면
			err.rejectValue("type", "field.error.type");
			return;
		}
	}
}
