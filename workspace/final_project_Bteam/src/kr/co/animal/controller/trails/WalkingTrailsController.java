package kr.co.animal.controller.trails;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/trails")
public class WalkingTrailsController {

	@RequestMapping(value = "/trailsList")
	public String trailList(Model m) {

		return "trails/walkingTrails";
	}
}
