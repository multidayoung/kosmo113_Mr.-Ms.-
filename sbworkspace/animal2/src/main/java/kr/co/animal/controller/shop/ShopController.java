package kr.co.animal.controller.shop;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.animal.service.ShopService;
import kr.co.animal.vo.PageMaker;
import kr.co.animal.vo.SearchCriteria;
import kr.co.animal.vo.ShopVO;

@Controller
public class ShopController {

	@Autowired
	private ShopService service;

	// 게시판 목록 조회
	@RequestMapping(value = "/slist", method = RequestMethod.GET)
	public String list(Model model, @ModelAttribute("scri") SearchCriteria scri) throws Exception {
		// logger.info("list");

		model.addAttribute("list", service.list(scri));

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(service.listcount(scri));

		model.addAttribute("pageMaker", pageMaker);

		return "shop/shopList";

	}

	@RequestMapping(value = "/slist2", method = RequestMethod.GET)
	public String list2(Model model, @ModelAttribute("scri") SearchCriteria scri) throws Exception {
		// logger.info("list");

		model.addAttribute("list", service.list2(scri));

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(service.listcount2(scri));

		model.addAttribute("pageMaker", pageMaker);

		return "shop/shopList";

	}

	@RequestMapping(value = "/slist3", method = RequestMethod.GET)
	public String list3(Model model, @ModelAttribute("scri") SearchCriteria scri) throws Exception {
		// logger.info("list");

		model.addAttribute("list", service.list3(scri));

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(service.listcount3(scri));

		model.addAttribute("pageMaker", pageMaker);

		return "shop/shopList";

	}

	@RequestMapping(value = "/slist4", method = RequestMethod.GET)
	public String list4(Model model, @ModelAttribute("scri") SearchCriteria scri) throws Exception {
		// logger.info("list");

		model.addAttribute("list", service.list4(scri));

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(service.listcount4(scri));

		model.addAttribute("pageMaker", pageMaker);

		return "shop/shopList";

	}
	// 업데이트
	@RequestMapping(value = "/shopUpdate")
	public ModelAndView shopUpdate(ShopVO svo) {
		ModelAndView mav = new ModelAndView("shop/shopUpdate");
		mav.addObject("svo", svo);
		return mav;
	}
	// 수정
	@RequestMapping(value = "/shopModify")
	public String shopUpdate(Model m, ShopVO svo) {
		service.upShop(svo);
		return "redirect:slist";
	}
	// 상세보기
	@RequestMapping(value = "/shopDetail")
	public String shopDetail(Model model, int shopping_mall_num) {
		ShopVO dto = service.det(shopping_mall_num);
		model.addAttribute("svo", dto);
		return "shop/shopDetail";
	}
}
