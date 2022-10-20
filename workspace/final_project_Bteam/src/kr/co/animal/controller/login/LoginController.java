package kr.co.animal.controller.login;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.animal.dao.MemberDaoInter;
import kr.co.animal.service.login.LoginService;
import kr.co.animal.vo.MemberVO;

@Controller
public class LoginController {
	
	@Autowired
	private LoginService ms;
	
	@Autowired
	private MemberDaoInter memberlist;
	
	@RequestMapping("/loginForm")
	public String loginForm() {
		
		return "login/loginForm";
	}
		
	@PostMapping(value = "/loginProcess")
	public ModelAndView loginfProcess(HttpSession session, HttpServletRequest request, MemberVO vo,
			@RequestHeader("User-Agent") String userAgent) {
		ModelAndView mav = new ModelAndView("redirect:/main");
		MemberVO dto = memberlist.loginCheck(vo);
		if (dto == null) {
			mav.setViewName("login/loginForm");
			mav.addObject("emsg", "로그인 실패 입니다. 아이디혹은 비밀번호가 존재하기 않습니다.");
		} else {
			System.out.println(dto.getMember_id());
			session.setAttribute("sessionID", dto.getMember_id());
			session.setAttribute("sessionName", dto.getMember_name());
			System.out.println("sessionID : " + session.getAttribute("sessionID"));
			System.out.println("sessionNo : " + session.getAttribute("sessionNo"));
		}
		return mav;
	}
	
	@GetMapping(value = "/logout")
	public ModelAndView loginfoutProsess(HttpSession session, HttpServletRequest request,
			@RequestHeader("User-Agent") String userAgent) {
		ModelAndView mav = new ModelAndView();
		session.removeAttribute("sessionID");
		session.removeAttribute("sessionName");
		mav.setViewName("redirect:/main");
		return mav;
	}
	
	// 아이디 찾기 페이지 이동
	@RequestMapping(value = "find_id_form")
	public String findIdView() {
		return "login/findId";
	}

	// 아이디 찾기 실행
	@RequestMapping(value = "find_id", method = RequestMethod.POST)
	public String findIdAction(MemberVO vo, Model model) {
		System.out.println(vo.getMember_name()+vo.getMember_phone());
		MemberVO mvo = memberlist.findId(vo);
		//System.out.println(mvo.getMember_id());
		
		if (mvo == null) {
			model.addAttribute("check", 1);
		} else {
			model.addAttribute("check", 0);
			model.addAttribute("member_id", mvo.getMember_id());
		}
		return "login/findId";
	}

	// 비밀번호 찾기 페이지로 이동
	@RequestMapping(value = "find_password_form")
	public String findPasswordView() {
		return "login/findPassword";
	}

	// 비밀번호 찾기 실행
	@RequestMapping(value = "find_password", method = RequestMethod.POST)
	public String findPasswordAction(MemberVO vo, Model model) {
		MemberVO mvo = memberlist.findPassword(vo);

		if (mvo == null) {
			model.addAttribute("check", 1);
		} else {
			model.addAttribute("check", 0);
			model.addAttribute("updateid", mvo.getMember_id());
		}
		return "login/findPassword";
	}

	// 비밀번호 바꾸기 실행
	@RequestMapping(value = "update_password", method = RequestMethod.POST)
	public String updatePasswordAction(
			@RequestParam(value = "updateid", defaultValue = "", required = false) String getMember_id, MemberVO vo) {
		vo.setMember_id(getMember_id);
		
		System.out.println(vo);
		memberlist.updatePassword(vo);
		return "login/findPasswordConfirm";
	}

	// 비밀번호 바꾸기할 경우 성공 페이지 이동
	@RequestMapping(value = "check_password_view")
	public String checkPasswordForModify(HttpSession session, Model model) {
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");

		if (loginUser == null) {
			return "login/loginForm";
		} else {
			return "mypage/checkformodify";
		}
	}
	
	// 카카오 로그인 API
		@RequestMapping(value = "/kakaologin")
		public ModelAndView kakaoLogin() {
			ModelAndView mav = new ModelAndView("login/kakaologin2");
			String redirct_uri = "http://localhost:80/final_project_Bteam/main";
			String REST_API_KEY = "2d889d4cd225aec73c1e04a047d5f679";
			mav.addObject("REDIRECT_URI", redirct_uri);
			mav.addObject("REST_API_KEY", REST_API_KEY);
			return mav;
		}
		
		@GetMapping(value="/kakaologin30")
		public ModelAndView kakaoLogin30(){
			ModelAndView mav = new ModelAndView("login/kakaologin3");
			String redirct_uri ="http://localhost:80/final_project_Bteam/kakaologin3";
			String REST_API_KEY ="2d889d4cd225aec73c1e04a047d5f679";
			mav.addObject("REDIRECT_URI", redirct_uri);
			mav.addObject("REST_API_KEY", REST_API_KEY);
			return mav;
	    }
		
		@GetMapping(value="/kakaologin3")
		public String kakaoLogin3(@RequestParam(value = "code", required = false) String code) throws Exception {
			System.out.println("#########" + code);
			String access_Token = ms.getAccessToken(code);
			System.out.println("###access_Token#### : " + access_Token);
			HashMap<String, Object> userInfo = ms.getUserInfo(access_Token);
			System.out.println("###access_Token#### : " + access_Token);
			System.out.println("###nickname#### : " + userInfo.get("nickname"));
			System.out.println("###email#### : " + userInfo.get("email"));
			return "login/NewFile";
			/*
			 * 리턴값의 testPage는 아무 페이지로 대체해도 괜찮습니다.
			 * 없는 페이지를 넣어도 무방합니다.
			 * 404가 떠도 제일 중요한건 #########인증코드 가 잘 출력이 되는지가 중요하므로 너무 신경 안쓰셔도 됩니다.
			 */
	    }
		
		
		// 네이버 로그인 API
		@RequestMapping(value = "/naverlogin")
		public String naverLogin() {
			return "login/naverlogin";
		}
	
}
