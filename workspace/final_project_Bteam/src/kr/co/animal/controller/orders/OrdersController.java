package kr.co.animal.controller.orders;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.animal.dao.ItemDaoInter;
import kr.co.animal.dao.OrdersDaoInter;
import kr.co.animal.dao.PointDaoInter;
import kr.co.animal.dao.ReviewDaoInter;
import kr.co.animal.service.point.PointService;
import kr.co.animal.vo.ItemVO;
import kr.co.animal.vo.MemberVO;
import kr.co.animal.vo.OrdersVO;
import kr.co.animal.vo.SearchVO;

@Controller
@RequestMapping("/orders")
public class OrdersController {

	private int nowPage = 1;// 현재 페이지 값
	private int nowBlock = 1;// 현재 블럭
	private int totalRecord = 0;// 총 게시물 수
	private int numPerPage = 10;// 한 페이지당 보여질 게시물 수
	private int pagePerBlock = 5;// 한 블럭당 보여질 페이지 수
	private int totalPage = 0;// 전체 페이지 수 => totalRecord/numPerPage
	private int totalBlock = 0;// 전체 블럭 수
	private int beginPerPage = 0;// 각 페이지별 시작 게시물의 index값
	private int endPerPage = 0;// 각 페이지별 마지막 게시물의 index값

	@Autowired
	private OrdersDaoInter ordersDaoInter;
	@Autowired
	private ReviewDaoInter review;
	@Autowired
	private ItemDaoInter itemDaoInter;
	@Autowired
	private PointDaoInter pointDaoInter;
	@Autowired
	private PointService pointService;

	@PostMapping(value = "/orderForm") // itemDetail ->
	public String orderForm(Model m) {
		return "orders/ordersForm";
	}

	@PostMapping(value = "/order") // itemDetail - > orderForm ->
	public ModelAndView ordersForm(HttpServletRequest request, HttpSession session) {
		ModelAndView mav = new ModelAndView("orders/ordersForm");

		int s_no = Integer.parseInt(request.getParameter("i_no"));
		int stock = Integer.parseInt(request.getParameter("num"));
		int price = Integer.parseInt(request.getParameter("i_price"));
		int total = price * stock;
		ItemVO vo = itemDaoInter.getDetail(s_no);
		
		String id = (String) session.getAttribute("sessionID");
		int point = pointDaoInter.allPoint(id);
		System.out.println("----------------------Order에서 보이는 포인트!!!!!!!!!!!!!!!!!"+point);
		mav.addObject("detail", vo);
		mav.addObject("price", price);
		mav.addObject("stock", stock);
		mav.addObject("total", total);
		
		mav.addObject("point", point);

		return mav;
	}

	@PostMapping(value = "/orderIn")
	public String addOrders(OrdersVO vo, HttpServletRequest request, HttpSession session) {
		String member_id = (String) session.getAttribute("sessionID");
		System.out.println("sessionMember_id" + member_id);
		//int member_no = (int) session.getAttribute("sessionNo");// 로그인 되어있는 사용자의 회원 번호
		//System.out.println("sessionMember_no" + member_no);
		int ord_count = Integer.parseInt(request.getParameter("number"));// 구매할 상품의 상품번호
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		
		int s_no = Integer.parseInt(request.getParameter("i_no"));
		int s_stock = Integer.parseInt(request.getParameter("number"));
		map.put("s_no", s_no);
		map.put("s_stock", s_stock);
		ordersDaoInter.updateStock(map);

		vo.setMember_id(member_id);
		vo.setOrd_count(ord_count);
		
		int price = Integer.parseInt(request.getParameter("i_price"));
		int total = price * s_stock;
		int minuspoint = Integer.parseInt(request.getParameter("point"));
		System.out.println("차감된 포인트 : "+minuspoint);
	
		vo.setTotalPrice(total - minuspoint);	
		ordersDaoInter.addOrders(vo);
		
		// point테이블에 차감된 포인트를 들고감
		if (minuspoint > 0) {
			vo.setTotalPrice(minuspoint);
			pointService.minusBuyPoint(vo);
		}
		
		System.out.println(vo.getI_status());

		return "redirect:/main";
	}

	// 일반회원 구매리스트
	@RequestMapping(value = "/ordersList")
	public String orderList(Model m, HttpSession session, SearchVO svo, MemberVO mvo) {
		System.out.println("여기는 일반회원ordersController");
		//mvo.setMember_no((int) session.getAttribute("sessionNo"));
		//System.out.println("Controller sessionNo : " + (int) session.getAttribute("sessionNo"));
		String id = (String) session.getAttribute("sessionID");
		mvo.setMember_id(id);
		
		totalRecord = ordersDaoInter.getCnt(mvo);
		System.out.println("totalRecord : " + totalRecord);
		totalPage = (int) Math.ceil(totalRecord / (double) numPerPage);
		totalBlock = (int) Math.ceil((double) totalPage / pagePerBlock);
		String cPage = svo.getcPage();
		if (cPage != null) {
			nowPage = Integer.parseInt(cPage);
		}
		System.out.println("sessionID : " + session.getAttribute("sessionID"));
		beginPerPage = (nowPage - 1) * numPerPage + 1;
		endPerPage = (beginPerPage - 1) + numPerPage;

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("beginPerPage", beginPerPage);
		map.put("endPerPage", endPerPage);
		map.put("member_id",id);

		List<OrdersVO> list = ordersDaoInter.getList(map);
		System.out.println("order list size => " + list.size());
		int startPage = (int) ((nowPage - 1) / pagePerBlock) * pagePerBlock + 1;
		int endPage = startPage + pagePerBlock - 1;
		if (endPage > totalPage) {
			endPage = totalPage;
		}
		m.addAttribute("list", list);
		m.addAttribute("startPage", startPage);
		m.addAttribute("endPage", endPage);
		m.addAttribute("nowPage", nowPage);
		m.addAttribute("pagePerBlock", pagePerBlock);
		m.addAttribute("totalPage", totalPage);

		System.out.println(nowPage);
		System.out.println(pagePerBlock);
		System.out.println(totalPage);

		return "orders/ordersList";
	}

	// 판매 top3 item
	@RequestMapping(value = "/rankOrdersList")
	public String rankOrdersList(Model m, HttpServletRequest request) {
		List<OrdersVO> list = ordersDaoInter.getRankOrdersList();
		m.addAttribute("list", list);
		String r_path = request.getRealPath("/");
		System.out.println("orders에 랭킹 r_path : " + r_path);
		return "orders/rankOrdersList";
	}

}
