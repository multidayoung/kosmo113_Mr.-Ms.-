package kr.co.animal.controller.insta;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(value = "/insta")

public class InstaController {

	
	@RequestMapping("/inList")
	public String defaultIndex() {
		return "insta";
	}
	@RequestMapping("/main")
	public String defaultIndex2() {
		return "main";
	}
	@RequestMapping("/login")
	public String defaultIndex3() {
		return "login";
	}
}
