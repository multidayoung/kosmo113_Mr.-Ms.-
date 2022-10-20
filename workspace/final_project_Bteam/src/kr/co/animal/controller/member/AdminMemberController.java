package kr.co.animal.controller.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.animal.dao.AdminMemberDaoInter;
import kr.co.animal.vo.MemberVO;
import kr.co.animal.vo.SearchVO;
import kr.co.animal.vo.SuperDTO;

@Controller
@RequestMapping(value = "/member")
public class AdminMemberController {
	@Autowired
	private AdminMemberDaoInter adminMemberDaoInter;
	
	private int nowPage = 1;// ���� ������ ��
	private int nowBlock = 1;// ���� ��
	private int totalRecord = 0;// �� �Խù� ��
	private int numPerPage = 10;// �� �������� ������ �Խù� ��
	private int pagePerBlock = 5;// �� ���� ������ ������ ��
	private int totalPage = 0;// ��ü ������ �� => totalRecord/numPerPage
	private int totalBlock = 0;// ��ü �� ��
	private int beginPerPage = 0;// �� �������� ���� �Խù��� index��
	private int endPerPage = 0;// �� �������� ������ �Խù��� index��
	
	@RequestMapping("/adminMemberList")
	public ModelAndView adminMemberlist(SearchVO svo, ModelAndView mav, Model m) {

		System.out.println("���������� : "+svo.getBeginPerPage());
		System.out.println("������������ : "+svo.getEndPerPage());
		System.out.println("�˻� : "+svo.getSearch());
		System.out.println("�з� : "+svo.getCategory());
		
		totalRecord =  (int) mav.getModel().get("cnt");
		System.out.println("adminMemberList - totalRecord : "+totalRecord);
		totalPage = (int) Math.ceil(totalRecord / (double) numPerPage);
		totalBlock = (int) Math.ceil((double) totalPage / pagePerBlock);
		if (svo.getcPage() != null) {
			nowPage = Integer.parseInt(svo.getcPage());
		}
		beginPerPage = (nowPage - 1) * numPerPage + 1;
		endPerPage = (beginPerPage - 1) + numPerPage;
		
		svo.setBeginPerPage(beginPerPage);
		svo.setEndPerPage(endPerPage);
	
		List<? extends SuperDTO> list = adminMemberDaoInter.getList(svo);
		
		int startPage = (int) ((nowPage - 1) / pagePerBlock) * pagePerBlock + 1;
		int endPage = startPage + pagePerBlock - 1;
		if (endPage > totalPage) {
			endPage = totalPage;
		}
		mav.addObject("list", list);
		mav.addObject("category", svo.getCategory());
		mav.addObject("search", svo.getSearch());
		mav.addObject("totalRecord", totalRecord);
		mav.addObject("startPage", startPage);
		mav.addObject("endPage", endPage);
		mav.addObject("nowPage", nowPage);
		mav.addObject("pagePerBlock", pagePerBlock);
		mav.addObject("totalPage", totalPage);
		mav.setViewName("member/adminMemberList");
		System.out.println("����� adminmemberList ��Ʈ�ѷ� �����Դϴ�.!");
		return mav;
	}
// 	������ ���
//	@RequestMapping("/adminMemberList")
//	public String memberList(Model m, SearchVO svo) {
//		int totalRecord = memberDaoInter.getAdminCnt(svo);
//		System.out.println("adminMemberList�� totalRecord : "+totalRecord);
//		m.addAttribute("totalRecord", totalRecord);
//		return "member/adminMemberList";
//	}
	
	// detail
	@GetMapping(value = "/memberDetail")
	public ModelAndView memberDetail(int num) {
		ModelAndView mav = new ModelAndView("member/adminMemberDetail");
		mav.addObject("vo", adminMemberDaoInter.getDetail(num));
		return mav;
	}

	// update
	@PostMapping(value = "memberUpdate")
	public String memberUp(MemberVO vo) {
		System.out.println("���� ���� : " + vo.getMember_id());
		adminMemberDaoInter.upMember(vo);
		return "redirect:/member/adminMemberList";
	}

	// delete
	@GetMapping(value = "memberDelete")
	public String memberDel(int num) {
		adminMemberDaoInter.delMember(num);
		return "redirect:/member/adminMemberList";
	} 
	
}
