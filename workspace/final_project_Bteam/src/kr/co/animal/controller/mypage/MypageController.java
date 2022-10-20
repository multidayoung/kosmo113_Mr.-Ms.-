package kr.co.animal.controller.mypage;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.animal.dao.MypageDaoInter;
import kr.co.animal.dao.PointDaoInter;
import kr.co.animal.vo.AnimalVO;
import kr.co.animal.vo.MemberVO;
import kr.co.animal.vo.MessageVO;
import kr.co.animal.vo.PointVO;

@Controller
@RequestMapping(value = "/mypage")
public class MypageController {
	
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
	private MypageDaoInter mypageDaoInter;
	@Autowired
	private PointDaoInter pointDao;
	
	// 포인트 전체 기록과 회원의 총 보유 포인트
	@RequestMapping(value = "/pointList")
	public String PointList(Model m, HttpSession session) {
		String member_id = (String) session.getAttribute("sessionID");
		//Map<String, Object> map = new HashedMap();
		//map.put("member_id", member_id)
		List<PointVO> pointlist = pointDao.listPoint(member_id);
		m.addAttribute("pointlist", pointlist);
		
		
		
		
		int allPoint = pointDao.allPoint(member_id);
		m.addAttribute("allPoint", allPoint);
		return "mypage/pointList";
	}
	
	// 친구 목록
	@RequestMapping(value = "/friendslist")
	public String friendsList(Model m, HttpSession session) {
		String member_id = (String) session.getAttribute("sessionID");
		System.out.println(member_id);
		List<AnimalVO> friendslist = mypageDaoInter.friendsList(member_id);
		m.addAttribute("friendslist", friendslist);
		return "mypage/friendslist";
	}
	
	// 요청 한 목록
	@RequestMapping(value = "/requestlist")
	public String requestList(Model m, HttpSession session) {
		String member_id = (String) session.getAttribute("sessionID");
		System.out.println(member_id);
		List<AnimalVO> requestlist = mypageDaoInter.requestList(member_id);
		m.addAttribute("requestlist", requestlist);
		return "mypage/reqfriendslist";
	}
	
	// 요청 받은 목록
	@RequestMapping(value = "/responselist")
	public String responseList(Model m, HttpSession session) {
		String member_id = (String) session.getAttribute("sessionID");
		System.out.println(member_id);
		List<AnimalVO> responselist = mypageDaoInter.responseList(member_id);
		m.addAttribute("responselist", responselist);
		return "mypage/resfriendslist";
	}
	
	// 받은 쪽지 목록
	@RequestMapping(value = "/messageList")
	public String messageList(Model m, HttpSession session) {
		String member_id = (String) session.getAttribute("sessionID");
		System.out.println(member_id);
		List<MemberVO> messagelist = mypageDaoInter.messageList(member_id);
		m.addAttribute("messagelist", messagelist);
		return "mypage/messagelist";
	}
	
	// 보낸 쪽지 목록
	@RequestMapping(value = "/reqmessageList")
	public String reqmessageList(Model m, HttpSession session) {
		String member_id = (String) session.getAttribute("sessionID");
		System.out.println(member_id);
		List<MemberVO> reqmessagelist = mypageDaoInter.reqmessageList(member_id);
		m.addAttribute("reqmessagelist", reqmessagelist);
		return "mypage/reqmessagelist";
	}
	
	// 메시지 상세
	@RequestMapping(value = "/messageDetail")
	public String messageDetail(Model m, int message_num) {
		System.out.println(message_num);	
		MessageVO vo = mypageDaoInter.messageDetail(message_num);	
		mypageDaoInter.messageReadChk(message_num);
		m.addAttribute("vo", vo);
		return "mypage/messageDetail";
	}
	
	
	
}
