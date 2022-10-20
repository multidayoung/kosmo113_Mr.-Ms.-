package kr.co.animal.controller.cate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.animal.dao.CateDaoInter;
import kr.co.animal.vo.CateVO;
import kr.co.animal.vo.PageMaker;
import kr.co.animal.vo.SearchCriteria;

@Controller
@RequestMapping(value = "/cate")
public class CateController {

	@Autowired
	private CateDaoInter CateDao;
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String dlist(Model model, @ModelAttribute("scri") SearchCriteria scri) throws Exception {

		model.addAttribute("list", CateDao.list(scri));

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(CateDao.listcount(scri));

		model.addAttribute("pageMaker", pageMaker);

		return "cate/list";
	}
	
	@RequestMapping(value = "/list2", method = RequestMethod.GET)
	public String clist(Model model, @ModelAttribute("scri") SearchCriteria scri) throws Exception {

		model.addAttribute("list", CateDao.list2(scri));

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(CateDao.listcount2(scri));

		model.addAttribute("pageMaker", pageMaker);

		return "cate/list2";
	}
	
	@RequestMapping(value = "/cateDel")
	public String cateDel(int cate_num) {
		CateDao.dCate(cate_num);
		return "redirect:list";
	}
	
	@RequestMapping(value = "/cateUpdate")
	public ModelAndView cateUpdate(CateVO cvo) {
		ModelAndView mav = new ModelAndView("cate/cateUpdate");
		mav.addObject("cvo", cvo);
		return mav;
	}
	
	@RequestMapping(value = "/cateModify")
	public String cateUpdate(Model m, CateVO cvo) {
		CateDao.upCate(cvo);
		return "redirect:list";
	}
	
	@RequestMapping(value = "/cateDetail")
	public String cateDetail(Model model, int cate_num) {
		CateVO dto = CateDao.det(cate_num);
		model.addAttribute("cvo", dto);
		return "cate/cateDetail";
	}
}
