package kr.co.animal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/main")
public class DefaultController {
	
	@RequestMapping("/index")
	public String defaultIndex() {
		return "main/index";
	}
}
