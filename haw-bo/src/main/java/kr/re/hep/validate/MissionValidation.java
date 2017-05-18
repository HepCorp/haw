package kr.re.hep.validate;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import kr.re.hep.common.ParamValidatChk;
import kr.re.hep.service.GubunService;
import kr.re.hep.service.TagService;
import kr.re.hep.vo.GubunVO;
import kr.re.hep.vo.MissionVO;
import kr.re.hep.vo.TagVO;

@Component
public class MissionValidation extends ParamValidatChk implements Validator {

	@Resource(name="gubunService")
	GubunService gubunService;

	@Resource(name="tagService")
	TagService tagService;

	public boolean supports(Class<?> arg0) {
		// TODO Auto-generated method stub
		return false;
	}

	public void validate(Object obj, Errors err) {
		MissionVO inVO = (MissionVO) obj;
		
		//>>>퀘스트번호
		String quest_str = getParam(inVO.getQuest_str());
		int quest_no = 0;
		if (isNull(quest_str) || isEmpty(quest_str) || quest_str.equals("0")){
			err.rejectValue("quest_no", "field.required.quest_no");
			return;
		}
		if (!isNumeric(quest_str)){
			err.rejectValue("quest_no", "field.error.quest_no");
			return;
		}
		quest_no = toInteger(quest_str);
		if (quest_no <= 0) {
			err.rejectValue("quest_no", "field.error.quest_no");
			return;
		}
		inVO.setQuest_no(quest_no);
		
		//>>>유형
		String type = getParam(inVO.getType());
		if (isNull(type) || isEmpty(type)) {
			//값이 없으면
			err.rejectValue("type", "field.required.type");
			return;
		} else {
			GubunVO gubunVO = new GubunVO(0, "type", type, null, null);
			int result = gubunService.gubunExistsSelect(gubunVO);
			
			if (result == 0){
				//해당 구분값이 존재하지 않는 경우
				err.rejectValue("type", "field.error.type");
				return;
			}
		}
		
		//>>>태그번호
		String tag_str = getParam(inVO.getTag_str());
		if (!isNull(tag_str) && !isEmpty(tag_str)){
			String[] tag = tag_str.split("|");
			tag_str = "";
			int cnt=0;
			if (tag.length > 0){
				tag_str += "|";
				for (int i=0 ; i < tag.length ; i++){
					if (!tag[i].equals("|")){
						if (isNumeric(tag[i]) && !tag[i].equals("0")){
							tag_str += tag[i] + "|";
							cnt++;
						} else {
							//태그번호가 숫자가 아닌경우
							err.rejectValue("tag_str", "field.error.tag_str");
							return;
						}
					}
				}
			}
			
			List<TagVO> tagList = tagService.tagSelectAll(tag_str);
			if (tagList.size() != cnt){
				//태그리스트 로우수랑 태그스트링의 번호 갯수 체크
				err.rejectValue("tag_str", "field.error.tag_str");
				return;
			} else {
				inVO.setTag_str(tag_str);
			}
		}


	}

}
