package kr.re.hep.validate;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import kr.re.hep.common.ParamValidatChk;
import kr.re.hep.service.GubunService;
import kr.re.hep.service.RegionService;
import kr.re.hep.service.TagService;
import kr.re.hep.vo.GubunVO;
import kr.re.hep.vo.QuestVO;
import kr.re.hep.vo.TagVO;

@Component
public class QuestValidation extends ParamValidatChk implements Validator {

	@Resource(name="regionService")
	RegionService regionService;
	
	@Resource(name="gubunService")
	GubunService gubunService;
	
	@Resource(name="tagService")
	TagService tagService;
	
	public boolean supports(Class<?> arg0) {
		// TODO Auto-generated method stub
		return false;
	}

	public void validate(Object obj, Errors err) {
		QuestVO inVO = (QuestVO) obj;
		
		//>>>지역번호
		String region_str = getParam(inVO.getRegion_str());
		int region_no;
		if (isNull(region_str) || isEmpty(region_str) || region_str.equals("0")) {
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
			int result = regionService.regionExistsSelect(region_no);
			if (result == 0){
				//해당지역이 없으면
				err.rejectValue("region_no", "field.error.region_no");
				return;
			} else {
				inVO.setRegion_no(region_no);
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
		
		//>>>오픈여부
		String open_str = getParam(inVO.getOpen_str());
		boolean open_yn;
		if (isNull(open_str) || isEmpty(open_str)) {
			open_yn = false;
		} else {
			if (open_str.equals("true")) {
				open_yn = true;
			} else {
				//true, false 도 아닌 경우
				err.rejectValue("open_yn", "field.error.open_yn");
				return;
			}
		}
		inVO.setOpen_yn(open_yn);
		
		//>>>오픈조건
		String badge_str = getParam(inVO.getBadge_str());
		int badge_cnt;
		if (open_yn == false) {
			if (isNull(badge_str) || isEmpty(badge_str) || badge_str.equals("0")) {
				//최초오픈이 아닌데 빈값인경우
				err.rejectValue("badge_cnt", "field.required.badge_cnt");
				return;
			}
			if (!isNumeric(badge_str)) {
				//숫자가 아닌경우
				err.rejectValue("badge_cnt", "field.error.badge_cnt");
				return;
			}
			badge_cnt = toInteger(badge_str);
		} else {
			badge_cnt = 0;
		}
		inVO.setBadge_cnt(badge_cnt);
		
		//>>>퀘스트클리어 조건
		String quest_str = getParam(inVO.getQuest_str());
		int quest_clear;
		
	}
	
}
