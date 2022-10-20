package kr.co.animal.controller.basket;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.animal.dao.BasketDaoInter;
import kr.co.animal.dao.PointDaoInter;
import kr.co.animal.vo.BasketVO;
import kr.co.animal.vo.ItemVO;
import kr.co.animal.vo.OrdersVO;
import kr.co.animal.vo.SearchVO;

@Controller
@RequestMapping("/basket")
public class BasketController {

	@Autowired
	private BasketDaoInter basket;

	@Autowired
	private PointDaoInter pointDaoInter;
	
	// 장바구니에 상품을 추가하는 메서드
	@PostMapping(value = "/addBasket")
	public ModelAndView addBasket(BasketVO vo, ItemVO ivo, HttpSession session, HttpServletRequest request) {

		String member_id = (String) session.getAttribute("sessionID");
		int i_no = ivo.getI_no();
		int b_stock = Integer.parseInt(request.getParameter("num"));
		vo.setMember_id(member_id);
		vo.setI_no(i_no);
		vo.setB_stock(b_stock);

		System.out.println("장바구니컨 회원번호 : " + vo.getMember_id());
		System.out.println("장바구니컨  상품번호" + vo.getI_no());

		basket.addBasket(vo);
		System.out.println("장바구니 입력");
		ModelAndView mav = new ModelAndView("redirect:basketList");
		return mav;
	}

	// 로그인 한 회원의 장바구니 리스트 출력 메서드
	@GetMapping(value = "/basketList")
	public ModelAndView getBasketList(Model m, HttpSession session, BasketVO vo, SearchVO svo) {
		ModelAndView mav = new ModelAndView("basket/basketList");
		String member_id = (String) session.getAttribute("sessionID");

		int allPrice = basket.allPrice(member_id);
		System.out.println("장바구니 총 금액:" + allPrice);

		List<BasketVO> list = basket.getBasketList(member_id);

		for (BasketVO e : list) {
			System.out.println(e);
		}
		mav.addObject("list", list);
		mav.addObject("allPrice", allPrice);

		return mav;
	}

	// 장바구니 리스트에서 상세보기
	@GetMapping(value = "/basketDetail")
	public ModelAndView getBasketDetail(BasketVO vo) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("basketdetail", basket.getBasketDetail(vo.getB_num()));
		System.out.println(vo.getB_num());
		mav.setViewName("basket/basketDetail");
		return mav;
	}

	// 장바구니에서 주문 버튼 클릭시
	@RequestMapping(value = "/basketorderIn")
	public ModelAndView basketorderIn(HttpSession session) {
		ModelAndView mav = new ModelAndView("basket/basketDetail");
		String member_id = (String) session.getAttribute("sessionID");
		System.out.println("basketorder member_id=>" + member_id);
		List<BasketVO> basketDetailList = basket.getBasketList(member_id);
		mav.addObject("basketDetailList", basketDetailList);
		int point = pointDaoInter.allPoint(member_id);
		System.out.println("----------------------basketorder에서 보이는 포인트!!!!!!!!!!!!!!!!!"+point);
		mav.addObject("point", point);
		return mav;
	}

	// 장바구니 모든 품목 구매
	@RequestMapping(value = "/basketorder")
	public String basketorder(HttpSession session, HttpServletRequest request) {
		String member_id = (String) session.getAttribute("sessionID");
		String ord_name = request.getParameter("ordersvo.ord_name");
		String ord_address = request.getParameter("ordersvo.ord_address");
		System.out.println("1:" + ord_name);
		System.out.println("2:" + ord_address);
		// 회원의 장바구니 리스트
		List<BasketVO> basketDetailList = basket.getBasketList(member_id);

		OrdersVO avo = new OrdersVO();
		avo.setOrd_name(ord_name);
		avo.setOrd_address(ord_address);

		// 제품 주문
		for (BasketVO e : basketDetailList) {
			e.setOrdersvo(avo);
			basket.addBasketOrder(e);
		}
		// 재고 수정
		for (BasketVO e : basketDetailList) {
			Map<String, Integer> map = new HashMap<String, Integer>();
			int s_no = e.getI_no();
			int s_stock = e.getB_stock();
			System.out.println("상품번호:" + s_no);
			System.out.println("주문 수량:" + s_stock);
			map.put("s_no", s_no);
			map.put("s_stock", s_stock);
			basket.updateStock(map);
		}
		// 장바구니 삭제
		for (BasketVO e : basketDetailList) {
			int b_num = e.getB_num();
			basket.delBasket(b_num);
		}

		return "redirect:/orders/ordersList";
	}
}
