package kr.co.animal.controller.board;

import java.io.File;
import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.animal.dao.IBoardDaoInter;
import kr.co.animal.vo.IBoardCommDTO;
import kr.co.animal.vo.IBoardDTO;

@Controller
public class IBoardController {

	@Autowired
	private IBoardDaoInter iboardDaoInter;

	private int nowPage = 1;
	private int nowBlock = 1;
	private int totalRecord = 0;
	private int totalBlock = 0;
	private int numPerPage = 9;
	private int pagePerBlock = 10;
	private int totalPage = 0;
	private int beginPerPage = 0;
	private int endPerPage = 0;

	
	/*
	@RequestMapping(value = "/iboardList")
	public String iboardList1(Model model, Map<String, Integer> map,
			@RequestParam(value = "cPage", required = true, defaultValue = "1") String s_page) {

		totalRecord = iboardDaoInter.getCnt();
		totalPage = (int) Math.ceil(totalRecord / (double) numPerPage);
		totalBlock = (int) Math.ceil(totalPage / (double) pagePerBlock);

		if (s_page != null) {
			nowPage = Integer.parseInt(s_page);
		}

		beginPerPage = (nowPage - 1) * numPerPage + 1;
		endPerPage = (beginPerPage - 1) + numPerPage;

		map.put("begin", beginPerPage);
		map.put("end", endPerPage);

		List<IBoardDTO> list = iboardDaoInter.getList(map);
		
		model.addAttribute("list", list);
						// ("jsp���� ����� �̸�", ��ü�̸�)
		int startPage = (int) ((nowPage - 1) / pagePerBlock) * pagePerBlock + 1;
		int endPage = startPage + pagePerBlock - 1;
		if (endPage > totalPage) {
			endPage = totalPage;
		}
		

		
		model.addAttribute("pagePerBlock", pagePerBlock);
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("nowPage", nowPage);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		return "iboard/iboardList";
	}
	*/

	@RequestMapping(value = "/iboardForm")   // html page�� �Ѿ
	public ModelAndView boardForm() {
		ModelAndView mav = new ModelAndView("iboard/iboardForm");
		return mav;
	}

	@RequestMapping(value = "/iboardDetail")
	public String boardDetail(Model model, int board_num) {
		IBoardDTO idto = iboardDaoInter.detail(board_num);
		String member_id = idto.getMember_id();
		// System.out.println("member_id => " + member_id);
		iboardDaoInter.iboardCnt(board_num);
		List<IBoardCommDTO> comentList = iboardDaoInter.showIReply(board_num);
		
		model.addAttribute("ibvo", idto);
		model.addAttribute("comentList", comentList);

		return "iboard/iboardDetail";
	}

	@RequestMapping(value = "/iboardIn")  // �ۼ��� ���� insert�Ѵ�. 
	public ModelAndView boardIn(IBoardDTO ibvo, HttpServletRequest request ,HttpSession session) {
		String member_id = (String) session.getAttribute("sessionID");
		ibvo.setMember_id(member_id);
		
		String img_path = "resources\\boardimg";
		
		// request�� ������ �̹����� ��θ� �޾Ƽ� ���
		String r_path = request.getRealPath("/");
		System.out.println(r_path);
		// ���ε� �� �̹����� �̸��� �޾Ƽ� �̹����� ����
		String oriFn = ibvo.getMfile().getOriginalFilename();
		System.out.println(oriFn);
		// �̹����� ���ε� ���� ���� ��� noimage�� �⺻���� ����ȴ�.
		if(oriFn.length() == 0) {
			oriFn = "noimg.png";
			ibvo.setBoard_img(oriFn);
		} else {
			// �޸𸮻�(�ӽ���¡���)�� ������ �츮�� ������ ��ο� ����
			StringBuffer path = new StringBuffer();
			path.append(r_path).append(img_path).append("\\");
			path.append(oriFn);
			System.out.println(path);
			// �߻��� (�̹����� ������ ���) File ��ü�� ����
			File f = new File(path.toString());
			
			// �ӽ� �޸𸮿� ��� ���ε��� ������ �� -> File Ŭ������ ��η� ����
			try {
				ibvo.getMfile().transferTo(f);
				// �̹��� �̸��� DB�� �����ϱ� ���ؼ� VO�� ���� �缳��
				ibvo.setBoard_img(oriFn);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		}
		
		ModelAndView mav = new ModelAndView("redirect:contentSearch");
		iboardDaoInter.addIBoard(ibvo);
		return mav;
	}

	@RequestMapping(value = "/iboardDel")
	public String boardDel(int board_num) {
		iboardDaoInter.delIBoard(board_num);
		return "redirect:contentSearch";
	}

	@RequestMapping(value = "/iboardUpdate")  //html �������� �ѱ�
	public ModelAndView boardUpdate(IBoardDTO ibvo) {
		System.out.println("����� ��.");
		ModelAndView mav = new ModelAndView("iboard/iboardUpdate");
		mav.addObject("ibvo", ibvo);
		System.out.println("�Խ����̹��� :"+ibvo.getBoard_img());
		System.out.println(ibvo.getBoard_cont());
		System.out.println(ibvo.getBoard_title());

		return mav;
	}

	@RequestMapping(value = "/iboardModify")  //iboardModify ������ �����ǰ� �ϴ� ��
	public String boardModify(Model m, IBoardDTO ibvo, HttpServletRequest request ,HttpSession session) {
		
		String member_id = (String) session.getAttribute("sessionID");
		ibvo.setMember_id(member_id);
		
		String img_path = "resources\\boardimg";
		
		// request�� ������ �̹����� ��θ� �޾Ƽ� ���
		String r_path = request.getRealPath("/");
		System.out.println(r_path);
		// ���ε� �� �̹����� �̸��� �޾Ƽ� �̹����� ����
		String oriFn = ibvo.getMfile().getOriginalFilename();
		System.out.println(oriFn);
		// �̹����� ���ε� ���� ���� ��� noimage�� �⺻���� ����ȴ�.
		if(oriFn.length() == 0) {
			oriFn = "noimg.png";
			ibvo.setBoard_img(oriFn);
		} else {
			// �޸𸮻�(�ӽ���¡���)�� ������ �츮�� ������ ��ο� ����
			StringBuffer path = new StringBuffer();
			path.append(r_path).append(img_path).append("\\");
			path.append(oriFn);
			System.out.println(path);
			// �߻��� (�̹����� ������ ���) File ��ü�� ����
			File f = new File(path.toString());
			
			// �ӽ� �޸𸮿� ��� ���ε��� ������ �� -> File Ŭ������ ��η� ����
			try {
				ibvo.getMfile().transferTo(f);
				// �̹��� �̸��� DB�� �����ϱ� ���ؼ� VO�� ���� �缳��
				ibvo.setBoard_img(oriFn);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		}
		
		// ModelAndView mav = new ModelAndView("redirect:contentSearch");
		// iboardDaoInter.addIBoard(ibvo);
		// return mav;
		
		iboardDaoInter.updateIBoard(ibvo);
		return "redirect:contentSearch";
	}
	
	// ��� �Է�
	@GetMapping(value = "/ireply")
	public String addReply(IBoardCommDTO bcvo, HttpSession session) {
		String member_id = (String) session.getAttribute("sessionID");
		bcvo.setMember_id(member_id);
		iboardDaoInter.addIReply(bcvo);
		int board_num = bcvo.getBoard_num();
		
		return "redirect: iboardDetail?board_num=" + board_num; 
	}
    // ��� ����
	@GetMapping(value = "/idelReply")
	public String delReply(int board_content_num, int board_num) {
		iboardDaoInter.delIReply(board_content_num);
		System.out.println(board_content_num);
		System.out.println(board_num);
		return "redirect: iboardDetail?board_num=" + board_num; 
	}
	
	//��� ����
	@PostMapping(value = "/iupReply")
	public ModelAndView upIReply(IBoardCommDTO bcvo) {
		
		ModelAndView mav = new ModelAndView("redirect:iboardDetail?board_num=" + bcvo.getBoard_num());
		mav.addObject("bcvo", bcvo);
		
		iboardDaoInter.upIReply(bcvo);
		return mav;
	}

	// ����Ʈ�� �˻� ����� ���ÿ� �����ϰ� ����
	@RequestMapping("contentSearch")
	public String contentSearchList(Model model,HttpSession session, @RequestParam(defaultValue = "1") int cPage,
			@RequestParam(defaultValue = "") String content, @RequestParam(defaultValue = "") String seacrchSelect) {
		
		String member_id = (String) session.getAttribute("sessionID");
	    model.addAttribute("member_id", member_id);
		model.addAttribute("content", content);
		model.addAttribute("seacrchSelect", seacrchSelect);
		if (cPage != 0) {
			nowPage = cPage;
		}
		
		HashMap<String, Object> params = new HashMap<>();
//		model.addAttribute("plmn", "contentSearch"); // "plmn" : PrintListMethodName
		if (seacrchSelect.equals("selectedT")) {
			params.put("searchTitle", content);
		} else if (seacrchSelect.equals("selectedC")) {
			params.put("searchContent", content);
		} else if (seacrchSelect.equals("selectedI")) {
			params.put("searchId", content);
		}
//		totalRecord1 = iboardDaoInter.getCnt();
		totalRecord = iboardDaoInter.getContentSearchCnt(params);
		totalPage = (int) (Math.ceil((totalRecord) / (double) numPerPage));
		model.addAttribute("nowPage", nowPage);
		beginPerPage = (nowPage - 1) * numPerPage + 1;
		endPerPage = (beginPerPage - 1) + numPerPage;
		int startPage = (int) ((nowPage - 1) / pagePerBlock) * pagePerBlock + 1;
		model.addAttribute("startPage", startPage);
		int endPage = startPage + pagePerBlock - 1;
		if (endPage > totalPage) {
			endPage = totalPage;
		}
		model.addAttribute("endPage", endPage);
		model.addAttribute("totalPage", totalPage);

		params.put("begin", beginPerPage);
		params.put("end", endPerPage);

		List<IBoardDTO> list = iboardDaoInter.getIBoardSearchList(params);
		
		for (IBoardDTO e : list) {
			System.out.println("AnimalImg1=>"+e.getAnimal().getAnimal_img1());
		}
		
		model.addAttribute("list", list);
		return "iboard/iboardList";
	}
	
}
