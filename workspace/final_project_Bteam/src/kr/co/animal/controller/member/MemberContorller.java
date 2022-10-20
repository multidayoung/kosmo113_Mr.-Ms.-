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
	@ResponseBody // 비동기 응답본문, url이 아닌 String값 자체 반환
	public String mailCheck(String member_email) {
		System.out.println("From Ajax Email : " + member_email);
		return mailService.joinEmail(member_email);
	}
	
	@RequestMapping("/adressPopup")
	public String popUp() {
		return "member/adressPopup";
	}
	
	// 파일 업로드 처리
	@PostMapping(value="/memberIn")
	public String memberIn(MemberVO vo, HttpServletRequest request) {
		String img_path = "resources\\member";
		
		// request를 가지고 이미지의 경로를 받아서 출력
		String r_path = request.getRealPath("/");
		System.out.println(r_path);
		// 업로드 된 이미지의 이름을 받아서 이미지를 복사
		String oriFn = vo.getMfile().getOriginalFilename();
		System.out.println(oriFn);
		// 이미지를 업로드 하지 않을 경우 noimage가 기본으로 저장된다.
		if(oriFn.length() == 0) {
			oriFn = "noimage.jpg";
			vo.setMember_img(oriFn);
		} else {
			// 메모리상(임시저징장소)에 파일을 우리가 설정한 경로에 복사
			StringBuffer path = new StringBuffer();
			path.append(r_path).append(img_path).append("\\");
			path.append(oriFn);
			System.out.println(path);
			// 추상경로 (이미지를 저장할 경로) File 객체로 생성
			File f = new File(path.toString());
			
			// 임시 메모리에 담긴 업로드한 파일의 값 -> File 클래스의 경로로 복사
			try {
				vo.getMfile().transferTo(f);
				// 이미지 이름을 DB에 저장하기 위해서 VO에 값을 재설정
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
		// 로그인떄 저장한 속성인 sessionid값을 가져옴와서 String값으로 캐스팅
		String member_id = (String) session.getAttribute("sessionID");
		MemberVO vo = memberDaoInter.getDetail2(member_id);
		m.addAttribute("vo", vo);

		return "member/myPage";
	}

	@RequestMapping(value = "/memberReform")
	public String memberReform(Model m, @RequestParam("member_id") String id) {
		MemberVO vo = memberDaoInter.getDetail2(id);
		m.addAttribute("vo", vo);
		System.out.println("여기는" + id);
		System.out.println("여기 실행1?");
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
		System.out.println("잘오나요?" + id);
		memberDaoInter.deleteMember(id);
		session.removeAttribute("sessionID");
		session.removeAttribute("sessionName");
		return "redirect:/main";
	}
	
	
}