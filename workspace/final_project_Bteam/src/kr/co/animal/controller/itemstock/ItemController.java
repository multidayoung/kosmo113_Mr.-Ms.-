package kr.co.animal.controller.itemstock;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.animal.controller.service.ReviewsService;
import kr.co.animal.dao.ItemDaoInter;
import kr.co.animal.vo.ItemVO;
import kr.co.animal.vo.ReviewsVO;
import kr.co.animal.vo.SearchVO;
import kr.co.animal.vo.SuperDTO;

@Controller
@RequestMapping("/item")
public class ItemController {
   
   private int nowPage = 1;// ���� ������ ��
   private int nowBlock = 1;// ���� ��
   private int totalRecord = 0;// �� �Խù� ��
   private int numPerPage = 20;// �� �������� ������ �Խù� ��
   private int pagePerBlock = 5;// �� ���� ������ ������ ��
   private int totalPage = 0;// ��ü ������ �� => totalRecord/numPerPage
   private int totalBlock = 0;// ��ü �� ��
   private int beginPerPage = 0;// �� �������� ���� �Խù��� index��
   private int endPerPage = 0;// �� �������� ������ �Խù��� index��

   @Autowired
   private ItemDaoInter item;
   
   @Autowired
   private ReviewsService service;
   
   // ��ǰ ����Ʈ ���
      @RequestMapping(value = "/itemList")
      public ModelAndView itemList(Model m, SearchVO svo, ItemVO ivo, HttpServletRequest request) {
         ModelAndView mav = new ModelAndView("item/itemList");
         
         // url�� query�� m, w������ ���� i_gender ���� �������ִ� if��
         if (svo.getGender().equals("m")) {
            svo.setGender("����");
         } else if (svo.getGender().equals("w")) {
            svo.setGender("����");
         } else if(svo.getGender().equals("c")){
            svo.setGender("����");
         } else if (svo.getGender().equals("dog")) {
            svo.setGender("��");
         } else if(svo.getGender().equals("cat")){
            svo.setGender("�����");
         }
         
         totalRecord = item.getCnt(svo);
         System.out.println("totalRecord : " + totalRecord);
         totalPage = (int) Math.ceil(totalRecord / (double) numPerPage);
         totalBlock = (int) Math.ceil((double) totalPage / pagePerBlock);
         String r_path = request.getRealPath("/");
           System.out.println("r_path : "+r_path);
         if (svo.getSearchreset().equals("1")) {
            nowPage = Integer.parseInt(svo.getcPage());
         }else {
            nowPage = Integer.parseInt(svo.getcPage());
         }
         
         beginPerPage = (nowPage - 1) * numPerPage + 1;
         endPerPage = (beginPerPage - 1) + numPerPage;

         svo.setBeginPerPage(beginPerPage);
         svo.setEndPerPage(endPerPage);
         
         List<? extends SuperDTO> list = item.getItemList(svo);
         int startPage = (int) ((nowPage - 1) / pagePerBlock) * pagePerBlock + 1;
         int endPage = startPage + pagePerBlock - 1;
         if (endPage > totalPage) {
            endPage = totalPage;
         }
//         System.out.println(svo.getCategory());
//         System.out.println(svo.getSearch());
//         System.out.println(svo.getGender());
         
         mav.addObject("list", list);
         mav.addObject("category", svo.getCategory());
         mav.addObject("search", svo.getSearch());
         mav.addObject("startPage", startPage);
         mav.addObject("endPage", endPage);
         mav.addObject("nowPage", nowPage);
         mav.addObject("pagePerBlock", pagePerBlock);
         mav.addObject("totalPage", totalPage);
         mav.addObject("g", svo.getGender());
         return mav;
      }


   // ���� üũ�ؼ� �� �ݾ� ����ϴ� �޼���
   @GetMapping(value = "/numchk")
   public String numberCheck(Model m, int num) {
      m.addAttribute("numchk", num);
      return "item/item/numchk";
   }

   // ��ȭ ������ ����Ʈ
//   @GetMapping(value = "/categoryList")
//   public ModelAndView categoryList(SearchVO svo, ItemVO ivo, HttpServletRequest request) {
//      ModelAndView mav = new ModelAndView("item/categoryList");
//      totalRecord = item.getCnt(svo);
//      System.out.println("Cnt : "+item.getCnt(svo));
//      System.out.println("totalRecord : " + totalRecord);
//      totalPage = (int) Math.ceil(totalRecord / (double) numPerPage);
//      totalBlock = (int) Math.ceil((double) totalPage / pagePerBlock);
//        if (svo.getSearchreset().equals("1")) {
//         nowPage = Integer.parseInt(svo.getcPage());
//      }else {
//         nowPage = Integer.parseInt(svo.getcPage());
//      }
//      beginPerPage = (nowPage - 1) * numPerPage + 1;
//      endPerPage = (beginPerPage - 1) + numPerPage;
//
//      svo.setBeginPerPage(beginPerPage);
//      svo.setEndPerPage(endPerPage);
//
//      int startPage = (int) ((nowPage - 1) / pagePerBlock) * pagePerBlock + 1;
//      int endPage = startPage + pagePerBlock - 1;
//      if (endPage > totalPage) {
//         endPage = totalPage;
//      }
//      List<? extends SuperDTO> list = item.getCategoryList(svo);
//      mav.addObject("list", list);
//      mav.addObject("category", svo.getCategory());
//      mav.addObject("search", svo.getSearch());
//      mav.addObject("startPage", startPage);
//      mav.addObject("endPage", endPage);
//      mav.addObject("nowPage", nowPage);
//      mav.addObject("pagePerBlock", pagePerBlock);
//      mav.addObject("totalPage", totalPage);
//      return mav;
//   }

   // ��ǰ ����Ʈ���� ��ǰ�� Ŭ�� �� �󼼺��� �������� �Ѿ�� �ش� ��ǰ�� PK�� �������� �����͸� �̾Ƽ� �����ִ� ����Ʈ
   @GetMapping(value = "/itemDetail")
   public String itemDetail(Model m, int s_no) {
      System.out.println("s_no : " +s_no);
      ItemVO vo = item.getDetail(s_no);
      int i_no = vo.getI_no();
      m.addAttribute("detail", vo);
      
      List<ReviewsVO> rvo = service.getReviews(i_no); 
      //controller - service - dao ��
      //��ǰ��ȣ�� �ش��ϴ� ���� ����Ʈ 
      m.addAttribute("list", rvo);
      
      return "item/itemDetail";
   }
   
   // ��ȭ ����Ʈ���� ��ǰ�� Ŭ�� �� �󼼺��� �������� �Ѿ�� ����Ʈ
//   @GetMapping(value = "/categoryDetail")
//   public String categoryDetail(Model m, int s_no) {
//      System.out.println("s_no : " + s_no);
//      // s_no(stock���̺��� pk) = i_no(item���̺��� pk)
//      ItemVO vo = item.getDetail(s_no);
//      m.addAttribute("detail", vo);// detail.jsp�� �������� �����ֱ�
//      return "item/categoryDetail";
//   }


   @PostMapping(value="/recommendProduction")
   public ModelAndView recommendProduction(HttpSession session, String data_str) {
      ModelAndView mav = new ModelAndView("item/recommendProduction");
      System.out.println("11111111111111111111111111111111111111" + data_str);
      if (data_str != null) {
         System.out.println("null�� �ƴ� ��");
//            System.out.println("���Ͷ� ����!!!!!!!!!!!!!!!!!!!" + data_str);
            String products1 = data_str.substring(2);
            //System.out.println("11111" + products1);
            String products2 = products1.substring(0, (products1.length()-2));
            System.out.println("22222" + products2);
            //String aa = products2.replace("\"", "");
            //System.out.println("3333333333" + aa);
            String[] items = products2.split("\",\"");
            System.out.println("=========================" + items[0]);
            List<String> productList = new ArrayList<String>();
            for (int i = 0; i < 10; i++) {
               productList.add(items[i]);
            }
            //System.out.println("4444444" + productList);
            for(String e : productList) {
               System.out.println(e);
            }
            // ��ǰ ����Ʈ�� ���� ó�� => ���ΰ�ħ�ϰ� �Ǹ� ���� ���޾ƿ��� ������ �ѹ� �޾ƿ� �� �ٷ� ���ǿ� �����ؼ� ���
            session.setAttribute("productList", productList);
            List<String> sList = (List<String>) session.getAttribute("productList");
            //for(String e : sList) {
            //   System.out.println("==> " + e);
            //}
            // ��ǰ ����Ʈ�� ���� ��� ������ ������
            List<ItemVO> pList = item.getRecommendProduction(sList);
//            for(ItemVO e : pList) {
//               System.out.println(e.getI_img());
//            }
            mav.addObject("pList", pList);
            
         } else {
           System.out.println("data_str�� null�� ��!!");
            List<String> sList = (List<String>) session.getAttribute("productList");
            for(String e : sList) {
               System.out.println("===> " + e);
            }
            // ��ǰ ����Ʈ�� ���� ��� ������ ������
            List<ItemVO> pList = item.getRecommendProduction(sList);
//            for(ItemVO e : pList) {
//               System.out.println(e.getI_img());
//          }
            mav.addObject("pList", pList);
         }
      return mav;
   }
}