package kr.co.animal.controller.member;

import java.awt.PageAttributes.MediaType;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.animal.service.AdminMemberService;
import kr.co.animal.vo.CateVO;
import kr.co.animal.vo.MemberVO;
import kr.co.animal.vo.PageMaker;
import kr.co.animal.vo.ReviewsVO;
import kr.co.animal.vo.SearchCriteria;

@Controller
@RequestMapping(value = "/member")
public class AdminMemberController {
	
	@Autowired
	private AdminMemberService service;
	
	@RequestMapping(value = "/adminMemberList")
	public String adminMemberList(Model model, @ModelAttribute("scri") SearchCriteria scri, MemberVO mvo, ReviewsVO rvo, CateVO cvo, HttpServletRequest request) throws UnsupportedEncodingException {
		request.setCharacterEncoding("euc-kr");
		String  keyword = request.getParameter("keyword");
		System.out.println("k =>"+keyword);
		System.out.println("key =>"+scri.getKeyword());
		model.addAttribute("orderCnt", service.totalOrder());
		model.addAttribute("postCnt", service.totalPost());
		model.addAttribute("CatelistCnt", service.totalCatelist(cvo));
		model.addAttribute("proCnt", service.totalProduct(rvo));
		model.addAttribute("reviewCnt", service.totalReviews(rvo));
		model.addAttribute("userCnt", service.totalUsers(mvo));
		model.addAttribute("list", service.listpage2(scri));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(service.getAdminCnt(scri));
		
		model.addAttribute("pageMaker", pageMaker);

		return "member/adminMemberList";
	}

	// detail
	@RequestMapping(value = "/memberDetail")
	public String memberDetail(Model model, String member_id) {
		MemberVO dto = service.getDetail(member_id);
		model.addAttribute("mvo", dto);
		System.out.println(dto.getMember_img());
		return "member/adminMemberDetail";

	}

	// update
	@RequestMapping(value = "/memberUpdate")
	public ModelAndView memberUp(MemberVO mvo) {
		ModelAndView mav = new ModelAndView("member/adminUpdate");
		mav.addObject("mvo", mvo);
		return mav;
	}
	@RequestMapping(value = "/memberModify")
	public String memberUp(Model m, MemberVO mvo) {
		service.upMember(mvo);
		return "redirect:/member/adminMemberList";
	}

	// delete
	@RequestMapping(value = "/memberDelete")
	public String memberDel(String member_id) {
		service.delMember(member_id);
		return "redirect:/member/adminMemberList";
	} 
	
}
