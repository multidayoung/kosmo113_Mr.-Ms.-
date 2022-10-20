package kr.co.animal.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.animal.vo.AndroidRecomMember;
import kr.co.animal.vo.AnimalVO;
import kr.co.animal.vo.FriendsVO;
import kr.co.animal.vo.MessageVO;

@Repository
public class CommunityDao implements CommunityDaoInter {
	@Autowired
	private SqlSessionTemplate ss;
	
	//안드로이드
	@Override
	public List<AndroidRecomMember> androidRecomMember(String member_id) {
		List<AndroidRecomMember> recomList = ss.selectList("community.androidRecomFriend", member_id);
		return recomList;
	}
	
	//웹
	@Override
	public int getCnt() {
		int cnt = ss.selectOne("community.totalCount");
		return cnt;
	}
	
	@Override
	public int getCntDog() {
		int cnt = ss.selectOne("community.totalCount_dog");
		return cnt;
	}
	
	@Override
	public int getCntCat() {
		int cnt = ss.selectOne("community.totalCount_cat");
		return cnt;
	}
	
	@Override
	public List<AnimalVO> communityList(AnimalVO vo) {
		List<AnimalVO> list = ss.selectList("community.list", vo);
		return list;
	}
	
	@Override
	public List<AnimalVO> communityListDog(AnimalVO vo) {
		List<AnimalVO> list = ss.selectList("community.list_dog", vo);
		return list;
	}
	
	@Override
	public List<AnimalVO> communityListCat(AnimalVO vo) {
		List<AnimalVO> list = ss.selectList("community.list_cat", vo);
		return list;
	}
	
	@Override
	public AnimalVO communityDetail(int anum) {
		AnimalVO vo = ss.selectOne("community.detail", anum);
		return vo;
	}

	@Override
	public void addFriends(FriendsVO vo) {
		ss.insert("community.addfriends",vo);
	}

	@Override
	public int statfriends(FriendsVO vo) {
		int num = ss.selectOne("community.statfriends",vo);
		return num;
	}

	@Override
	public List<AnimalVO> recommendList(String name) {
		List<AnimalVO> list = ss.selectList("community.recommend",name);
		return list;
	}
	
	@Override
	public int checkfriends(FriendsVO vo) {
		int num = ss.selectOne("community.checkfriends",vo);
		return num;
	}

	@Override
	public void addMessage(MessageVO vo) {
		ss.insert("community.addmessage",vo);
	}

	@Override
	public int messageCount(String name) {
		int num = ss.selectOne("community.messageCount",name);
		return num;
	}

	
	

}
