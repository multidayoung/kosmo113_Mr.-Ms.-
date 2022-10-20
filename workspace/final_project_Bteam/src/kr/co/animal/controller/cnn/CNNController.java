package kr.co.animal.controller.cnn;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/cnn_guess")
public class CNNController {

	@RequestMapping(value = "/form")   // html page로 넘어감
	public ModelAndView cnnGuessForm() {
		ModelAndView mav = new ModelAndView("cnn/cnn_test");
		//된다면 동물 대표사진을 옆에 걸어 놓자
		return mav;
	}
}
