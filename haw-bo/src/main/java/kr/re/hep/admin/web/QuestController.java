package kr.re.hep.admin.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.re.hep.service.GubunService;
import kr.re.hep.vo.GubunVO;

@Controller
@RequestMapping("/quest/*")
public class QuestController {

	@Resource(name="gubunService")
	GubunService gubunService;
	
	@RequestMapping(value="write.do", method=RequestMethod.GET)
	public String write(){
		List<GubunVO> gubunVO = gubunService.gubunTypeSelect("type");
		
		
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
