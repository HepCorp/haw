package kr.re.hep.admin.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.re.hep.service.GubunService;
import kr.re.hep.service.RegionService;
import kr.re.hep.vo.GubunVO;
import kr.re.hep.vo.RegionConditionVO;

@Controller
@RequestMapping("/quest/*")
public class QuestController {

	@Resource(name="gubunService")
	GubunService gubunService;
	
	@Resource(name="regionService")
	RegionService regionService;
	
	@RequestMapping(value="write.do", method=RequestMethod.GET)
	public String write(ModelMap model){
		List<GubunVO> typeList = gubunService.gubunTypeSelect("type");
		List<GubunVO> levelList = gubunService.gubunTypeSelect("level");
		List<RegionConditionVO> regionList = regionService.regionSelectAll();
		
		model.addAttribute("typeList", typeList);
		model.addAttribute("levelList", levelList);
		model.addAttribute("regionList", regionList);
		return "/quest/write";
	}
	
	@RequestMapping(value="save.do", method=RequestMethod.POST)
	public String save(){
		return "";
	}
	
	//퀘스트 미션 목록 (AJAX)
	
	//퀘스트 저장
	
	//미션 저장
	
	//힌트 저장
	
	//퀘스트 상세보기
	
	//퀘스트 미션 목록
	
	//미션 힌트 목록
	

}
