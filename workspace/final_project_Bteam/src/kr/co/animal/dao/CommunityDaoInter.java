package kr.co.animal.dao;

import java.util.List;

import kr.co.animal.vo.AndroidRecomMember;
import kr.co.animal.vo.AnimalVO;
import kr.co.animal.vo.FriendsVO;
import kr.co.animal.vo.MessageVO;

public interface CommunityDaoInter {
	public List<AndroidRecomMember> androidRecomMember(String member_id);
	public int getCnt();
	public int getCntDog();
	public int getCntCat();
	public List<AnimalVO> communityList(AnimalVO vo);
	public List<AnimalVO> communityListDog(AnimalVO vo);
	public List<AnimalVO> communityListCat(AnimalVO vo);
	public AnimalVO communityDetail(int anum);
	public void addFriends(FriendsVO vo);
	public int statfriends(FriendsVO vo);
	public List<AnimalVO> recommendList(String name);
	public int checkfriends(FriendsVO vo);
	public void addMessage(MessageVO vo);
	public int messageCount(String name);
	
	
	
	
}
