package kr.co.animal.controller.cnn;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/cnn_guess")
public class CNNController {

	@RequestMapping(value = "/form")   // html page�� �Ѿ
	public ModelAndView cnnGuessForm() {
		ModelAndView mav = new ModelAndView("cnn/cnn_test");
		//�ȴٸ� ���� ��ǥ������ ���� �ɾ� ����
		return mav;
	}
}
