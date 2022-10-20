package kr.co.animal.controller.orders;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.animal.service.AdminOrdersService;
import kr.co.animal.vo.CateVO;
import kr.co.animal.vo.MemberVO;
import kr.co.animal.vo.OrdersVO;
import kr.co.animal.vo.PageMaker;
import kr.co.animal.vo.SearchCriteria;

@Controller
@RequestMapping("/adminorders")
public class AdminOrdersController {

	@Autowired
	private AdminOrdersService service;

	@RequestMapping(value = "/orderlist", method = RequestMethod.GET)
	public String dlist(Model model, @ModelAttribute("scri") SearchCriteria scri) throws Exception {

		model.addAttribute("list", service.adminlistpage(scri));
		System.out.println(service.adminlistpage(scri));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(service.adminTotoalCount(scri));

		model.addAttribute("pageMaker", pageMaker);

		return "adminorders/adminordersList";
	}

	@RequestMapping(value = "adminDetailForm")
	public String adminOrdersDetail(Model model, int ord_no) {
		OrdersVO dto = service.detailAdminOrders(ord_no);
		model.addAttribute("ovo", dto);
		return "adminorders/adminOrdersDetail";
	}

	@PostMapping(value = "/adminordersUpdate")
	public ModelAndView adminorersUpdate(OrdersVO ovo) {
		ModelAndView mav = new ModelAndView();

		new Thread(new Runnable() {
			@Override
			public void run() {
				try {
					System.out.println("���� ��Ʈ�ѷ� �ֹ����� : " + ovo.getI_status());
					if (ovo.getI_status().equals("상품준비중")) {
						service.updateAdminOrders(ovo);
					} else if (ovo.getI_status().equals("발송완료")){
						service.updateAdminOrders(ovo);
						Thread.sleep(5000);
						ovo.setI_status("배송완료");
						service.updateAdminOrders(ovo);
					} else {
						service.updateAdminOrders(ovo);
						Thread.sleep(5000);
						ovo.setI_status("주문취소");
						ovo.setRcnt(1);
						service.updateAdminOrders(ovo);
					}
				} catch (InterruptedException e) {
					e.printStackTrace();
				}
			}
		}).start();

		mav.addObject("vo", service.detailAdminOrders(ovo.getOrd_no()));
		mav.setViewName("redirect:orderlist");
		return mav;
	}

	@RequestMapping(value = "adminordersDelete")
	public String admindeleteOrders(int ord_no) {
		service.deleteAdminOrders(ord_no);
		return "redirect:orderlist";
	}

}
