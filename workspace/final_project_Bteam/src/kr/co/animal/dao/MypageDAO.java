package kr.co.animal.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.animal.vo.AnimalVO;
import kr.co.animal.vo.FriendsVO;
import kr.co.animal.vo.MemberVO;
import kr.co.animal.vo.MessageVO;

@Repository
public class MypageDAO implements MypageDaoInter{

	@Autowired
	private SqlSessionTemplate ss;
	
	// 안드로이드 친구목록
	@Override
	public List<MemberVO> Androidfriendslist(String name) {
		List<MemberVO> list = ss.selectList("mypage.Androidfriendslist",name);
		return list;
	}
	
	// 안드로이드 친구이미지
	@Override
	public String androidFriendDetail(String id) {
		String animal_img1 = ss.selectOne("mypage.androidFriendDetail",id);
		return animal_img1;
	}
	
	// 마이페이지
	@Override
	public List<AnimalVO> friendsList(String name) {
		List<AnimalVO> list = ss.selectList("mypage.friendslist",name);
		return list;
	}

	@Override
	public List<AnimalVO> requestList(String name) {
		List<AnimalVO> list = ss.selectList("mypage.requestlist",name);
		return list;
	}

	@Override
	public List<AnimalVO> responseList(String name) {
		List<AnimalVO> list = ss.selectList("mypage.responselist",name);
		return list;
	}
	
	@Override
	public void friendsDel(FriendsVO vo) {
		ss.delete("mypage.friendsdel",vo);
	}
	
	@Override
	public void requestNo(FriendsVO vo) {
		ss.delete("mypage.requestNo",vo);
	}
	
	@Override
	public void responseOk(FriendsVO vo) {
		ss.update("mypage.responseOk",vo);
	}
	
	@Override
	public void responseNo(FriendsVO vo) {
		ss.delete("mypage.responseNo",vo);
	}

	@Override
	public List<MemberVO> messageList(String name) {
		List<MemberVO> list = ss.selectList("mypage.messagelist",name);
		return list;
	}

	@Override
	public List<MemberVO> reqmessageList(String name) {
		List<MemberVO> list = ss.selectList("mypage.reqmessagelist",name);
		return list;
	}

	@Override
	public MessageVO messageDetail(int num) {
		MessageVO vo = ss.selectOne("mypage.messageDetail",num);
		return vo;
	}

	@Override
	public void messageReadChk(int num) {
		ss.update("mypage.messageReadChk",num);		
	}

	
	
	
}
