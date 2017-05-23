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
import kr.re.hep.service.QuestService;
import kr.re.hep.service.RegionService;
import kr.re.hep.service.TagService;
import kr.re.hep.vo.GubunVO;
import kr.re.hep.vo.QuestVO;
import kr.re.hep.vo.RegionConditionVO;
import kr.re.hep.vo.TagVO;

@Controller
@RequestMapping("/quest/*")
public class QuestController extends ParamValidatChk {

	@Resource(name="gubunService")
	GubunService gubunService;
	
	@Resource(name="regionService")
	RegionService regionService;
	
	@Resource(name="tagService")
	TagService tagService;
	
	@Resource(name="questService")
	QuestService questService;
	
	@Autowired
	QuestValidation questValidation;
	
	@RequestMapping(value="write.do", method=RequestMethod.GET)
	public String write(@RequestParam(value="no", required=false) String quest
			, ModelMap model){
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
		
		model.addAttribute("typeList", typeList);
		model.addAttribute("levelList", levelList);
		model.addAttribute("regionList", regionList);
		model.addAttribute("questVO", questVO);
		return "/quest/write";
	}
	
	//퀘스트 저장
	@RequestMapping(value="questSave.do", method=RequestMethod.POST)
	public String save(@ModelAttribute("questVO") QuestVO inVO
			, BindingResult result
			, HttpServletRequest request
			, ModelMap model){
		
		questValidation.validate(inVO, result);
		if (result.hasErrors()){
			return "/quest/write";
		}
		
		questService.questInsert(inVO);
		int quest_no = inVO.getQuest_no();
		
		return "redirect:/quest/write.do?no="+ quest_no;
	}
	
	//태그 전송
	@RequestMapping(value="tagSave.do", method=RequestMethod.POST)
	public @ResponseBody TagVO tagSave(
			@RequestParam(value="tag_nm", required=true) String tag_nm){
		int count = tagService.tagExistsSelect(tag_nm);
		int tag_no = 0;
		if (count == 0){
			TagVO inVO = new TagVO();
			inVO.setTag_nm(tag_nm);
			tagService.tagInsert(inVO);
			tag_no = inVO.getTag_no();
		} else {
			tag_no = tagService.tagSelect(tag_nm);
		}
		TagVO tagVO = new TagVO(tag_no, tag_nm, null, null);
		
		return tagVO;
	}
	//퀘스트 미션 목록 (AJAX)
	
	
	
	//미션 저장
	
	//힌트 저장
	
	//퀘스트 상세보기
	
	//퀘스트 미션 목록
	
	//미션 힌트 목록
	

}
