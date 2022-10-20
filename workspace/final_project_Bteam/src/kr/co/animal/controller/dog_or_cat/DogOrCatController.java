package kr.co.animal.controller.dog_or_cat;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/dogorcat")
public class DogOrCatController {
	

	
	@RequestMapping("/form")
	public String dogOrCatForm() {
		return "dog_or_cat/dog_cat_final";
	}

}
