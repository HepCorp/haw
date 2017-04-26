package kr.re.hep.quest.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

	@RequestMapping(value="/index.do", method=RequestMethod.GET)
	private String main(){
		return "/quest/index";
	}
}
