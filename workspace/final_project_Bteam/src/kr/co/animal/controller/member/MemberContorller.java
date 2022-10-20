package kr.co.animal.controller.member;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.animal.dao.MemberDaoInter;
import kr.co.animal.service.point.PointService;
import kr.co.animal.vo.MemberVO;

@Controller
@RequestMapping("/member")
public class MemberContorller {
	
	@Autowired
	private MailSendService mailService;

	@Autowired
	private MemberDaoInter memberDaoInter;
	
	@Autowired
	private PointService pointService;

	@GetMapping(value = "/memberForm")
	public String memberForm() {
		return "member/memberForm1";
	}
	
	@GetMapping(value = "/memberForm1")
	public String memberForm1() {
		return "member/memberForm";
	}

	@RequestMapping(value = "/mailCheck", method = RequestMethod.GET)
	@ResponseBody // �񵿱� ���亻��, url�� �ƴ� String�� ��ü ��ȯ
	public String mailCheck(String member_email) {
		System.out.println("From Ajax Email : " + member_email);
		return mailService.joinEmail(member_email);
	}
	
	@RequestMapping("/adressPopup")
	public String popUp() {
		return "member/adressPopup";
	}
	
	// ���� ���ε� ó��
	@PostMapping(value="/memberIn")
	public String memberIn(MemberVO vo, HttpServletRequest request) {
		String img_path = "resources\\member";
		
		// request�� ������ �̹����� ��θ� �޾Ƽ� ���
		String r_path = request.getRealPath("/");
		System.out.println(r_path);
		// ���ε� �� �̹����� �̸��� �޾Ƽ� �̹����� ����
		String oriFn = vo.getMfile().getOriginalFilename();
		System.out.println(oriFn);
		// �̹����� ���ε� ���� ���� ��� noimage�� �⺻���� ����ȴ�.
		if(oriFn.length() == 0) {
			oriFn = "noimage.jpg";
			vo.setMember_img(oriFn);
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
				vo.getMfile().transferTo(f);
				// �̹��� �̸��� DB�� �����ϱ� ���ؼ� VO�� ���� �缳��
				vo.setMember_img(oriFn);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		}
		
		//memberDaoInter.addMember(vo);
		pointService.addMember(vo);
		return "redirect:/main";
	}

	@GetMapping(value = "/idcheck")
	public String idCheck(Model m, @RequestParam("member_id") String member_id) {
		int cnt = memberDaoInter.idcheck(member_id);
		m.addAttribute("msg", cnt);
		return "idchk";
	}

	@RequestMapping(value = "/myPage")
	public String myPage(Model m, HttpSession session) {
		// �α��΋� ������ �Ӽ��� sessionid���� �����ȿͼ� String������ ĳ����
		String member_id = (String) session.getAttribute("sessionID");
		MemberVO vo = memberDaoInter.getDetail2(member_id);
		m.addAttribute("vo", vo);

		return "member/myPage";
	}

	@RequestMapping(value = "/memberReform")
	public String memberReform(Model m, @RequestParam("member_id") String id) {
		MemberVO vo = memberDaoInter.getDetail2(id);
		m.addAttribute("vo", vo);
		System.out.println("�����" + id);
		System.out.println("���� ����1?");
		return "member/memberReform";
	}


	@PostMapping(value = "/memberrf")
	public String memberrf(MemberVO vo, HttpServletRequest request) {
		String img_path = "resources\\member";
		String r_path = request.getRealPath("/");
		String oriFn = vo.getMfile().getOriginalFilename();
		if(oriFn.length() == 0) {
			oriFn = "noimage.jpg";
			vo.setMember_img(oriFn);
		} else {
			StringBuffer path = new StringBuffer();
			path.append(r_path).append(img_path).append("\\");
			path.append(oriFn);
			File f = new File(path.toString());
			try {
				vo.getMfile().transferTo(f);
				vo.setMember_img(oriFn);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		}
		memberDaoInter.updateMember(vo);
		return "redirect:/member/myPage";
	}

	@RequestMapping(value = "/memberdelete")
	public String memberdelete(HttpSession session, @RequestParam("member_id") String id) {
		System.out.println("�߿�����?" + id);
		memberDaoInter.deleteMember(id);
		session.removeAttribute("sessionID");
		session.removeAttribute("sessionName");
		return "redirect:/main";
	}
	
	
}