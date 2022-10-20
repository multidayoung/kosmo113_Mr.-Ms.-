package kr.co.animal.controller.chart;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(value = "/chart")
public class ChartController {
	
	@RequestMapping("/test")
	public String defaultIndex() {
		return "chart/text";
	}
	
	
	@RequestMapping("/test2")
	public String defaultIndex2() {
		return "chart/text2";
	}
	
	@RequestMapping("/wordcloud")
	public String wordcloud() {
		return "cloud/wordcloud";
	}
}
