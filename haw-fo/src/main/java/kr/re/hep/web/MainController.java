package kr.re.hep.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/*")
public class MainController {

	@RequestMapping(value="/", method=RequestMethod.GET)
	private String main(){
		return "redirect:/member/index.do";
	}
	
	
}
