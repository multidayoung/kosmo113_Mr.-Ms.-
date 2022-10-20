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
	
	private int nowPage = 1;// ���� ������ ��
	private int nowBlock = 1;// ���� ��
	private int totalRecord = 0;// �� �Խù� ��
	private int numPerPage = 10;// �� �������� ������ �Խù� ��
	private int pagePerBlock = 5;// �� ���� ������ ������ ��
	private int totalPage = 0;// ��ü ������ �� => totalRecord/numPerPage
	private int totalBlock = 0;// ��ü �� ��
	private int beginPerPage = 0;// �� �������� ���� �Խù��� index��
	private int endPerPage = 0;// �� �������� ������ �Խù��� index��
	
	@Autowired
	private MypageDaoInter mypageDaoInter;
	@Autowired
	private PointDaoInter pointDao;
	
	// ����Ʈ ��ü ��ϰ� ȸ���� �� ���� ����Ʈ
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
	
	// ģ�� ���
	@RequestMapping(value = "/friendslist")
	public String friendsList(Model m, HttpSession session) {
		String member_id = (String) session.getAttribute("sessionID");
		System.out.println(member_id);
		List<AnimalVO> friendslist = mypageDaoInter.friendsList(member_id);
		m.addAttribute("friendslist", friendslist);
		return "mypage/friendslist";
	}
	
	// ��û �� ���
	@RequestMapping(value = "/requestlist")
	public String requestList(Model m, HttpSession session) {
		String member_id = (String) session.getAttribute("sessionID");
		System.out.println(member_id);
		List<AnimalVO> requestlist = mypageDaoInter.requestList(member_id);
		m.addAttribute("requestlist", requestlist);
		return "mypage/reqfriendslist";
	}
	
	// ��û ���� ���
	@RequestMapping(value = "/responselist")
	public String responseList(Model m, HttpSession session) {
		String member_id = (String) session.getAttribute("sessionID");
		System.out.println(member_id);
		List<AnimalVO> responselist = mypageDaoInter.responseList(member_id);
		m.addAttribute("responselist", responselist);
		return "mypage/resfriendslist";
	}
	
	// ���� ���� ���
	@RequestMapping(value = "/messageList")
	public String messageList(Model m, HttpSession session) {
		String member_id = (String) session.getAttribute("sessionID");
		System.out.println(member_id);
		List<MemberVO> messagelist = mypageDaoInter.messageList(member_id);
		m.addAttribute("messagelist", messagelist);
		return "mypage/messagelist";
	}
	
	// ���� ���� ���
	@RequestMapping(value = "/reqmessageList")
	public String reqmessageList(Model m, HttpSession session) {
		String member_id = (String) session.getAttribute("sessionID");
		System.out.println(member_id);
		List<MemberVO> reqmessagelist = mypageDaoInter.reqmessageList(member_id);
		m.addAttribute("reqmessagelist", reqmessagelist);
		return "mypage/reqmessagelist";
	}
	
	// �޽��� ��
	@RequestMapping(value = "/messageDetail")
	public String messageDetail(Model m, int message_num) {
		System.out.println(message_num);	
		MessageVO vo = mypageDaoInter.messageDetail(message_num);	
		mypageDaoInter.messageReadChk(message_num);
		m.addAttribute("vo", vo);
		return "mypage/messageDetail";
	}
	
	
	
}
