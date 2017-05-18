package kr.re.hep.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/*")
public class MainController {

	@RequestMapping(value="/", method=RequestMethod.GET)
	private String main(){
		return "/index";
	}
	
	//로그인
	@RequestMapping(value="/index.do", method=RequestMethod.GET)
	private String index(){
		
		return "/index";
	}
	
	//로그인시도

}
