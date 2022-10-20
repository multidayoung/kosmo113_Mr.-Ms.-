package kr.co.animal.controller.json;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import kr.co.animal.dao.BasketDaoInter;
import kr.co.animal.dao.CommunityDaoInter;
import kr.co.animal.dao.MypageDaoInter;
import kr.co.animal.vo.BasketVO;
import kr.co.animal.vo.FriendsVO;
import kr.co.animal.vo.MessageVO;

@RestController
public class JsonController {
	
	@Autowired
	private CommunityDaoInter communityDaoInter;
	@Autowired
	private MypageDaoInter mypageDaoInter;
	@Autowired
	private BasketDaoInter basketDaoInter;
	
	// 친구요청
	@GetMapping(value = "/addfriend", produces = "text/plain;charset=EUC-KR")
	public String addFriend(Model m,@RequestParam("myId") String myId,@RequestParam("friendId") String friendId) {
		FriendsVO vo = new FriendsVO();
		vo.setFriends_userid(myId);
		vo.setFriends_friendid(friendId);		
		int num = communityDaoInter.statfriends(vo);
		if (num==0) {
			vo.setFriends_status("대기");
			communityDaoInter.addFriends(vo);		
			String status = vo.getFriends_status();
			return status;
		} else {
			String status = "몰라";
			return status;
		}	
	}
	
	// 친구 삭제
	@RequestMapping(value = "/friendsCancel",produces = "text/plain;charset=EUC-KR")
	public String friendsCancel(HttpSession session,@RequestBody String fid) {
		String member_id = (String) session.getAttribute("sessionID");
		String friendId = fid.split("=")[1];
		System.out.println("친구아이디:"+friendId);
		System.out.println("내아이디:"+member_id);
		FriendsVO vo = new FriendsVO();
		vo.setFriends_friendid(friendId);
		vo.setFriends_userid(member_id);
		mypageDaoInter.friendsDel(vo);
		return null;
	}

	// 요청 한 목록 취소
	@RequestMapping(value = "/requestCancel",produces = "text/plain;charset=EUC-KR")
	public String requestCancel(HttpSession session,@RequestBody String fid) {
		String member_id = (String) session.getAttribute("sessionID");
		String friendId = fid.split("=")[1];
		System.out.println("친구아이디:"+friendId);
		System.out.println("내아이디:"+member_id);
		FriendsVO vo = new FriendsVO();
		vo.setFriends_friendid(friendId);
		vo.setFriends_userid(member_id);
		mypageDaoInter.requestNo(vo);
		return null;
	}
	
	// 요청 받은 목록 수락
	@RequestMapping(value = "/responseOk", produces = "text/plain;charset=EUC-KR")
	public String responseOk(HttpSession session, @RequestBody String fid) {
		String member_id = (String) session.getAttribute("sessionID");
		String friendId = fid.split("=")[1];
		System.out.println("친구아이디:"+friendId);
		System.out.println("내아이디:"+member_id);
		FriendsVO vo = new FriendsVO();
		vo.setFriends_friendid(member_id);
		vo.setFriends_userid(friendId);
		mypageDaoInter.responseOk(vo);
		return null;
	}
	
	// 요청 받은 목록 거절
	@RequestMapping(value = "/responseNo", produces = "text/plain;charset=EUC-KR")
	public String responseNo(HttpSession session,@RequestBody String fid) {
		String member_id = (String) session.getAttribute("sessionID");
		String friendId = fid.split("=")[1];
		System.out.println("친구아이디:"+friendId);
		System.out.println("내아이디:"+member_id);
		FriendsVO vo = new FriendsVO();
		vo.setFriends_friendid(member_id);
		vo.setFriends_userid(friendId);
		mypageDaoInter.responseNo(vo);
		return null;
	}
	// 쪽지 전송 
	@GetMapping(value = "/sendMessage", produces = "text/plain;charset=EUC-KR")
	public String sendMessage(HttpSession session,Model m,@RequestParam("myId") String myId,@RequestParam("friendId") String friendId,@RequestParam("content") String content) {
		System.out.println("아아이디:"+myId);
		System.out.println("친구구아이디:"+friendId);
		System.out.println("내용용용:"+content);
		MessageVO vo = new MessageVO();
		vo.setMessage_sendid(myId);
		vo.setMessage_receiveid(friendId);
		vo.setMessage_content(content);
		communityDaoInter.addMessage(vo);
		return null;
	}
	
	// 장바구니 수량 수정하는 메서드
	@RequestMapping(value = "/basketupdate")
	public String updateBasket(BasketVO bvo,int num,int stock) {
		System.out.println("실행!");
		int b_num = num;
		int b_stock = stock;
		System.out.println("비넘:"+b_num);
		System.out.println("비스톡:"+b_stock);
		bvo.setB_num(b_num);
		bvo.setB_stock(b_stock);
		basketDaoInter.updateBasket(bvo);
		return null;
	}
	
	// 장바구니 목록 삭제하는 메서드
	@RequestMapping(value = "/basketdel")
	public String delBasket(int num) {
		basketDaoInter.delBasket(num);
		return null;
	}	
}
