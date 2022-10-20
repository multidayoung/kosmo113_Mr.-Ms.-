package kr.co.animal.controller.itemstock;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.animal.service.AdminItemService;
import kr.co.animal.service.AdminItemStockService;
import kr.co.animal.vo.ItemVO;
import kr.co.animal.vo.SearchVO;
import kr.co.animal.vo.StockVO;

@Controller
@RequestMapping("/adminitemstock")
public class AdminItemStockController {

		@Autowired
		private AdminItemService service;
		
		@GetMapping(value = "adminitemstockForm")
		public ModelAndView adminitemstockForm() {
			ModelAndView mav = new ModelAndView("adminitemstock/adminitemstockForm");
			return mav;
		}
		
		@PostMapping(value = "adminitemstockIn")
		public String adminitemstockIn(ItemVO ivo, StockVO svo,
				HttpServletRequest request) {
			String img_path = "resources\\imagefile";
			String r_path = request.getRealPath("/");
			
			String oriFn = ivo.getMfile().getOriginalFilename();
			long size = ivo.getMfile().getSize();
			String contentType = ivo.getMfile().getContentType();
			StringBuffer path = new StringBuffer();
			path.append(r_path).append(img_path).append("\\");
			path.append(oriFn);
			File f = new File(path.toString());
			try {
				ivo.getMfile().transferTo(f);
				ivo.setI_img(oriFn);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		
			return "redirect:adminitemstockList";
		}
		
		
		private int nowPage = 1;
		private int nowBlock = 1;
		private int totalRecord = 0;
		private int numPerPage = 5;
		private int pagePerBlock = 5;
		private int totalPage = 0;
		private int totalBlock = 0;
		private int beginPerPage = 0;
		private int endPerPage = 0;
		
		
		@RequestMapping(value = "/adminitemstockList")
		public ModelAndView adminitemstockList(SearchVO svo, ModelAndView mav, HttpSession session) {
			
			totalRecord = (int) mav.getModel().get("cnt");
			totalPage = (int) Math.ceil(totalRecord / (double) numPerPage);
			totalBlock = (int) Math.ceil((double) totalPage / pagePerBlock);
		
			if (svo.getSearchreset().equals("1")) {
				nowPage = Integer.parseInt(svo.getcPage());
			}else {
				nowPage = Integer.parseInt(svo.getcPage());
			}
			
			beginPerPage = (nowPage - 1) * numPerPage + 1;
			endPerPage = (beginPerPage - 1) + numPerPage;
			
			svo.setBeginPerPage(beginPerPage);
			svo.setEndPerPage(endPerPage);
		
			List<ItemVO> list = service.getList(svo);
			
			int startPage = (int) ((nowPage - 1) / pagePerBlock) * pagePerBlock + 1;
			int endPage = startPage + pagePerBlock - 1;
			if (endPage > totalPage) {
				endPage = totalPage;
			}
			
			
			mav.addObject("list", list);
			mav.addObject("category", svo.getCategory());
			mav.addObject("search", svo.getSearch());
			mav.addObject("startPage", startPage);
			mav.addObject("endPage", endPage);
			mav.addObject("nowPage", nowPage);
			mav.addObject("pagePerBlock", pagePerBlock);
			mav.addObject("totalPage", totalPage);
			mav.setViewName("adminitemstock/adminitemstockList");
			return mav;
		}
		
		@GetMapping(value = "adminitemstockDetail")
		public ModelAndView adminitemstockDetail(int i_no) {
			ModelAndView mav = new ModelAndView();
			mav.addObject("vo", service.detailItemstock(i_no));
			mav.setViewName("adminitemstock/adminitemstockDetail");
			return mav;
		}
		
		/*
		 * @PostMapping(value = "adminitemUpdate") public String adminitemUpdate(ItemVO
		 * ivo, StockVO svo, HttpServletRequest request) {
		 * System.out.println("���� ���� : "+ivo.getI_price()); String img_path=
		 * "resources\\imagefile"; String r_path = request.getRealPath("/");
		 * System.out.println("r_path : "+r_path); String oriFn =
		 * ivo.getMfile().getOriginalFilename(); long size = ivo.getMfile().getSize();
		 * String contentType = ivo.getMfile().getContentType();
		 * System.out.println("���� ũ�� : "+size);
		 * System.out.println("���� ũ�� : "+contentType);
		 * System.out.println("oriFn : "+oriFn); StringBuffer path = new StringBuffer();
		 * path.append(r_path).append(img_path).append("\\"); path.append(oriFn);
		 * System.out.println("Fullpath : "+ path); File f = new File(path.toString());
		 * try { ivo.getMfile().transferTo(f); ivo.setI_img(oriFn); } catch
		 * (IllegalStateException | IOException e) { e.printStackTrace(); }
		 * svo.setS_no(ivo.getI_no()); service.updateServiceItemStock(ivo, svo);
		 * 
		 * return "redirect: adminitemstockList"; }
		 * 
		 * @GetMapping(value = "adminitemDelete") public String admindelteItemstock(int
		 * i_no) { service.deleteServiceItemstock(i_no); return
		 * "redirect: adminitemstockList"; }
		 */
		
//		@GetMapping(value = "/itemNameChk")
//		public ModelAndView itemNameChk(@RequestParam("i_name") String i_name) {
//			ModelAndView mav = new ModelAndView("adminitemstock/adminitemstock/inamechk");
//			Map<String, String> map = new HashMap<String, String>();
//			map.put("i_name",i_name);
//			int cnt = service
//			System.out.println("��Ʈ�ѷ� i_name"+i_name);
//			System.out.println("��Ʈ�ѷ� cnt=>"+cnt);
//			mav.addObject("cnt", cnt);
//			return mav;
//		}
		
		
}
