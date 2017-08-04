package kr.re.hep.admin.web;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.re.hep.admin.validation.QuestValidation;
import kr.re.hep.common.ParamValidatChk;
import kr.re.hep.service.GubunService;
import kr.re.hep.service.RegionService;
import kr.re.hep.vo.GubunVO;
import kr.re.hep.vo.RegionVO;
import kr.re.hep.vo.RegionConditionVO;


@Controller
@RequestMapping("/region/*")
public class RegionController extends ParamValidatChk {

	@Resource(name="gubunService")
	GubunService gubunService;
	
	@Resource(name="regionService")
	RegionService regionService;
		
	
	// 지 리스트 
	@RequestMapping(value="region.do", method=RequestMethod.GET)
	public String list(@RequestParam(value="no", required=false) String quest
			, ModelMap model){
		/*
		int quest_no;
		QuestVO questVO;
		if (isNull(quest) || isEmpty(quest) || quest.equals("0")){
			questVO = new QuestVO();
		} else {
			if (isNumeric(quest)){
				quest_no = toInteger(quest); 
				if (quest_no > 0){
					questVO = questService.questSelect(quest_no);
				} else {
					questVO = new QuestVO();
				}
			} else {
				questVO = new QuestVO();
			}
		}
		List<GubunVO> typeList = gubunService.gubunTypeSelect("type");
		List<GubunVO> levelList = gubunService.gubunTypeSelect("level");
		List<RegionConditionVO> regionList = regionService.regionSelectAll();
		List<TagVO> tagList = tagService.tagSelectAll(questVO.getTag_str());
		
		model.addAttribute("typeList", typeList);
		model.addAttribute("levelList", levelList);
		model.addAttribute("regionList", regionList);
		model.addAttribute("tagList", tagList);
		model.addAttribute("questVO", questVO);
		*/
		return "/region/region";
	}
	
}
