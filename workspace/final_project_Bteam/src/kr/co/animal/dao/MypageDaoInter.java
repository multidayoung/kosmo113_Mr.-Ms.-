package kr.co.animal.dao;

import java.util.List;

import kr.co.animal.vo.AnimalVO;
import kr.co.animal.vo.FriendsVO;
import kr.co.animal.vo.MemberVO;
import kr.co.animal.vo.MessageVO;

public interface MypageDaoInter {
	//안드로이드 
	public List<MemberVO> Androidfriendslist(String name);
	public String androidFriendDetail(String id);
	
	//마이페이지
	public List<AnimalVO> friendsList(String name);
	public List<AnimalVO> requestList(String name);
	public List<AnimalVO> responseList(String name);
	public void friendsDel(FriendsVO vo);
	public void requestNo(FriendsVO vo);
	public void responseOk(FriendsVO vo);
	public void responseNo(FriendsVO vo);
	public List<MemberVO> messageList(String name);
	public List<MemberVO> reqmessageList(String name);
	public MessageVO messageDetail(int num);
	public void messageReadChk(int num);
}
