package kr.co.animal.controller.review;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.animal.dao.ItemDaoInter;
import kr.co.animal.dao.OrdersDaoInter;
import kr.co.animal.dao.ReviewDaoInter;
import kr.co.animal.service.point.PointService;
import kr.co.animal.vo.ItemVO;
import kr.co.animal.vo.OrdersVO;
import kr.co.animal.vo.ReviewsVO;

@Controller
@RequestMapping(value = "/review")
public class ReviewController {

	@Autowired
	private ReviewDaoInter reviewDaoInter;
	
	@Autowired
	private OrdersDaoInter ordersDaoInter; 
	
	@Autowired
	private ItemDaoInter itemDaoInter;
	
	@Autowired
	private PointService pointService;


	@GetMapping(value = "/reviewForm")
	public ModelAndView reviewForm(ReviewsVO rvo, OrdersVO ovo ,HttpSession session) {
		System.out.println("getOrd_no = "+rvo.getOrd_no());
		ModelAndView mav = new ModelAndView();
		int cnt = reviewDaoInter.chkReviews(rvo);// ��ۿϷ��� ��ǰ�� �ֹ���ȣ�� �������̺� �����Ͱ� �ִ��� üũ

		System.out.println("������ ��Ʈ cnt = " + cnt);
		
		int i_no = rvo.getI_no();
	    ItemVO ivo = itemDaoInter.getDetail(i_no);

		if(cnt==1) {
			mav.addObject("emsg", "���並 �̹� �ۼ��ϼ̽��ϴ�!!");
			mav.setViewName("error/paramException");
		}
		
		mav.addObject("vo", rvo);
		mav.addObject("ivo", ivo);
		return mav;
	}
	
	@PostMapping(value = "/reviewIn")
	public String addReview(ReviewsVO vo,HttpServletRequest request, HttpSession session) {
		String member_id = (String) session.getAttribute("sessionID");
		vo.setMember_id(member_id);
		System.out.println();
		reviewDaoInter.addReview(vo);
		pointService.addReviewPoint(vo);
		//���⿡ ������Ʈ
		System.out.println("����!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!getOrd_no = "+vo.getOrd_no());
		ordersDaoInter.updateRcnt(vo.getOrd_no());
		return "redirect:/orders/ordersList";
	}
	
}





