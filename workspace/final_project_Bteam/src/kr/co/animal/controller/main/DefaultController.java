package kr.co.animal.controller.main;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DefaultController {

	@RequestMapping(value = {"/","/main"})
	public String defaultIndexList(Model m) {
		return "main/index";
	}
	
	/*
	 * @RequestMapping(value = {"/main2"}) public String defaultIndex2() { return
	 * "redirect:/orders/rankOrdersList"; }
	 */
}
