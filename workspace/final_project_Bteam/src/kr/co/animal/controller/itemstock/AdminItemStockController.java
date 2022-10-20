package kr.co.animal.controller.itemstock;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.animal.controller.service.AdminItemStockService;
import kr.co.animal.dao.AdminItemStockInter;
import kr.co.animal.vo.ItemVO;
import kr.co.animal.vo.SearchVO;
import kr.co.animal.vo.StockVO;
import kr.co.animal.vo.SuperDTO;

@Controller
@RequestMapping("/adminitemstock")
public class AdminItemStockController {

		@Autowired
		private AdminItemStockService itemStockService;
		
		@Autowired
		private AdminItemStockInter adminItemStockInter;
		
		// ��ǰ��� Form���� �̵��ϴ� �޼���
		@GetMapping(value = "adminitemstockForm")
		public ModelAndView adminitemstockForm() {
			ModelAndView mav = new ModelAndView("adminitemstock/adminitemstockForm");
			return mav;
		}
		
		// ��ǰ��� ������ �޾Ƽ� �Է��ϴ� �޼���
		@PostMapping(value = "adminitemstockIn")
		public String adminitemstockIn(ItemVO ivo, StockVO svo, HttpServletRequest request) {
			System.out.println("��ǰ�� : "+ivo.getI_name());
			//request�� ������ �̹����� ��θ� �޾Ƽ� ���
			String img_path = "resources\\imagefile";
			String r_path = request.getRealPath("/");
			System.out.println("r_path : "+r_path);
			
			String oriFn = ivo.getMfile().getOriginalFilename();
			// �̹����� ������ �� contentTypeȮ��
			long size = ivo.getMfile().getSize();
			String contentType = ivo.getMfile().getContentType();
			System.out.println("���� ũ�� : "+size);
			System.out.println("���� ũ�� : "+contentType);
			System.out.println("oriFn : "+oriFn);
			StringBuffer path = new StringBuffer();
			path.append(r_path).append(img_path).append("\\");
			path.append(oriFn);
			System.out.println("Fullpath : "+ path);
			// �߻���(�̹����� ������ ���) File ��ü�� ����
			File f = new File(path.toString());
			try {
				ivo.getMfile().transferTo(f);
				ivo.setI_img(oriFn);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
				
			itemStockService.addServiceItemStock(ivo, svo);
			return "redirect:adminitemstockList";
		}
		
		private int nowPage = 1;// ���� ������ ��
		private int nowBlock = 1;// ���� ��
		private int totalRecord = 0;// �� �Խù� ��
		private int numPerPage = 5;// �� �������� ������ �Խù� ��
		private int pagePerBlock = 5;// �� ���� ������ ������ ��
		private int totalPage = 0;// ��ü ������ �� => totalRecord/numPerPage
		private int totalBlock = 0;// ��ü �� ��
		private int beginPerPage = 0;// �� �������� ���� �Խù��� index��
		private int endPerPage = 0;// �� �������� ������ �Խù��� index��
		
		@RequestMapping(value = "/adminitemstockList")
		public ModelAndView adminitemstockList(SearchVO svo, ModelAndView mav) {
			
			System.out.println("���������� : "+svo.getBeginPerPage());
			System.out.println("������������ : "+svo.getEndPerPage());
			System.out.println("�˻� : "+svo.getSearch());
			System.out.println("�з� : "+svo.getCategory());
			//aop���� cnt�� �޾ƿ���
			totalRecord = (int) mav.getModel().get("cnt");
			System.out.println("orders�� ��ǰ �� ǰ��� : "+totalRecord);
			totalPage = (int) Math.ceil(totalRecord / (double) numPerPage);
			totalBlock = (int) Math.ceil((double) totalPage / pagePerBlock);
		
			if (svo.getSearchreset().equals("1")) {
				System.out.println("cPage ������ ���� =>"+ svo.getcPage());
				nowPage = Integer.parseInt(svo.getcPage());
			}else {
				System.out.println("cPage ������ ������ ��ȣ ���ý� =>"+svo.getcPage());
				nowPage = Integer.parseInt(svo.getcPage());
			}
			
			beginPerPage = (nowPage - 1) * numPerPage + 1;
			endPerPage = (beginPerPage - 1) + numPerPage;
			
			svo.setBeginPerPage(beginPerPage);
			svo.setEndPerPage(endPerPage);
		
			List<? extends SuperDTO> list = itemStockService.getList(svo);
			
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
			System.out.println("startPage :"+ startPage);
			System.out.println("endPage :"+ endPage);
			System.out.println("nowPage :"+ nowPage);
			System.out.println("pagePerBlock :"+ pagePerBlock);
			System.out.println("totalPage :"+ totalPage);
			return mav;
		}
		
		// detail ������
		@GetMapping(value = "adminitemstockDetail")
		public ModelAndView adminitemstockDetail(int i_no) {
			ModelAndView mav = new ModelAndView();
			mav.addObject("vo", itemStockService.detailItemstock(i_no));
			mav.setViewName("adminitemstock/adminitemstockDetail");
			return mav;
		}
		
		@PostMapping(value = "adminitemUpdate")
		public String adminitemUpdate(ItemVO ivo, StockVO svo, HttpServletRequest request) {
			System.out.println("���� ���� : "+ivo.getI_price());
			String img_path= "resources\\imagefile";
			String r_path = request.getRealPath("/");
			System.out.println("r_path : "+r_path);
			String oriFn = ivo.getMfile().getOriginalFilename();
			long size = ivo.getMfile().getSize();
			String contentType = ivo.getMfile().getContentType();
			System.out.println("���� ũ�� : "+size);
			System.out.println("���� ũ�� : "+contentType);
			System.out.println("oriFn : "+oriFn);
			StringBuffer path = new StringBuffer();
			path.append(r_path).append(img_path).append("\\");
			path.append(oriFn);
			System.out.println("Fullpath : "+ path);
			File f = new File(path.toString());
			try {
				ivo.getMfile().transferTo(f);
				ivo.setI_img(oriFn);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
			svo.setS_no(ivo.getI_no());
			itemStockService.updateServiceItemStock(ivo, svo);
			
			return "redirect: adminitemstockList";
		}
		
		@GetMapping(value = "adminitemDelete")
		public String admindelteItemstock(int i_no) {
			itemStockService.deleteServiceItemstock(i_no);
			return "redirect: adminitemstockList";
		}
		
		@GetMapping(value = "/itemNameChk")
		public ModelAndView itemNameChk(@RequestParam("i_name") String i_name) {
			ModelAndView mav = new ModelAndView("adminitemstock/adminitemstock/inamechk");
			Map<String, String> map = new HashMap<String, String>();
			map.put("i_name",i_name);
			int cnt = adminItemStockInter.itemNameChk(map);
			System.out.println("��Ʈ�ѷ� i_name"+i_name);
			System.out.println("��Ʈ�ѷ� cnt=>"+cnt);
			mav.addObject("cnt", cnt);
			return mav;
		}
		
		
}
