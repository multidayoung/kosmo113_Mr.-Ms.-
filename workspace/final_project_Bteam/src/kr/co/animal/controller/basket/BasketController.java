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
	
	// ��ٱ��Ͽ� ��ǰ�� �߰��ϴ� �޼���
	@PostMapping(value = "/addBasket")
	public ModelAndView addBasket(BasketVO vo, ItemVO ivo, HttpSession session, HttpServletRequest request) {

		String member_id = (String) session.getAttribute("sessionID");
		int i_no = ivo.getI_no();
		int b_stock = Integer.parseInt(request.getParameter("num"));
		vo.setMember_id(member_id);
		vo.setI_no(i_no);
		vo.setB_stock(b_stock);

		System.out.println("��ٱ����� ȸ����ȣ : " + vo.getMember_id());
		System.out.println("��ٱ�����  ��ǰ��ȣ" + vo.getI_no());

		basket.addBasket(vo);
		System.out.println("��ٱ��� �Է�");
		ModelAndView mav = new ModelAndView("redirect:basketList");
		return mav;
	}

	// �α��� �� ȸ���� ��ٱ��� ����Ʈ ��� �޼���
	@GetMapping(value = "/basketList")
	public ModelAndView getBasketList(Model m, HttpSession session, BasketVO vo, SearchVO svo) {
		ModelAndView mav = new ModelAndView("basket/basketList");
		String member_id = (String) session.getAttribute("sessionID");

		int allPrice = basket.allPrice(member_id);
		System.out.println("��ٱ��� �� �ݾ�:" + allPrice);

		List<BasketVO> list = basket.getBasketList(member_id);

		for (BasketVO e : list) {
			System.out.println(e);
		}
		mav.addObject("list", list);
		mav.addObject("allPrice", allPrice);

		return mav;
	}

	// ��ٱ��� ����Ʈ���� �󼼺���
	@GetMapping(value = "/basketDetail")
	public ModelAndView getBasketDetail(BasketVO vo) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("basketdetail", basket.getBasketDetail(vo.getB_num()));
		System.out.println(vo.getB_num());
		mav.setViewName("basket/basketDetail");
		return mav;
	}

	// ��ٱ��Ͽ��� �ֹ� ��ư Ŭ����
	@RequestMapping(value = "/basketorderIn")
	public ModelAndView basketorderIn(HttpSession session) {
		ModelAndView mav = new ModelAndView("basket/basketDetail");
		String member_id = (String) session.getAttribute("sessionID");
		System.out.println("basketorder member_id=>" + member_id);
		List<BasketVO> basketDetailList = basket.getBasketList(member_id);
		mav.addObject("basketDetailList", basketDetailList);
		int point = pointDaoInter.allPoint(member_id);
		System.out.println("----------------------basketorder���� ���̴� ����Ʈ!!!!!!!!!!!!!!!!!"+point);
		mav.addObject("point", point);
		return mav;
	}

	// ��ٱ��� ��� ǰ�� ����
	@RequestMapping(value = "/basketorder")
	public String basketorder(HttpSession session, HttpServletRequest request) {
		String member_id = (String) session.getAttribute("sessionID");
		String ord_name = request.getParameter("ordersvo.ord_name");
		String ord_address = request.getParameter("ordersvo.ord_address");
		System.out.println("1:" + ord_name);
		System.out.println("2:" + ord_address);
		// ȸ���� ��ٱ��� ����Ʈ
		List<BasketVO> basketDetailList = basket.getBasketList(member_id);

		OrdersVO avo = new OrdersVO();
		avo.setOrd_name(ord_name);
		avo.setOrd_address(ord_address);

		// ��ǰ �ֹ�
		for (BasketVO e : basketDetailList) {
			e.setOrdersvo(avo);
			basket.addBasketOrder(e);
		}
		// ��� ����
		for (BasketVO e : basketDetailList) {
			Map<String, Integer> map = new HashMap<String, Integer>();
			int s_no = e.getI_no();
			int s_stock = e.getB_stock();
			System.out.println("��ǰ��ȣ:" + s_no);
			System.out.println("�ֹ� ����:" + s_stock);
			map.put("s_no", s_no);
			map.put("s_stock", s_stock);
			basket.updateStock(map);
		}
		// ��ٱ��� ����
		for (BasketVO e : basketDetailList) {
			int b_num = e.getB_num();
			basket.delBasket(b_num);
		}

		return "redirect:/orders/ordersList";
	}
}
