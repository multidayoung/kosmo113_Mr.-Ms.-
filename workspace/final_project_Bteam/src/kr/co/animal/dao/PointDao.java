package kr.co.animal.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.animal.vo.MemberVO;
import kr.co.animal.vo.OrdersVO;
import kr.co.animal.vo.PointVO;
import kr.co.animal.vo.ReviewsVO;

@Repository
public class PointDao implements PointDaoInter {

	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public void addPoint(PointVO vo) {
		ss.insert("point.add", vo);
	}
	
	@Override
	public void updatePoint(Map<String, Object> map) {
		ss.update("point.updatePoint", map);
	}

	@Override
	public void deletePoint(String id) {
		ss.delete("point.deletePoint", id);
	}

	@Override
	public int getCnt(PointVO pvo) {
		int cnt = ss.selectOne("point.totalCount", pvo);
		System.out.println("cnt "+cnt);
		return cnt;
	}
	
	@Override
	public List<PointVO> listPoint(String id) {
		List<PointVO> list = ss.selectList("point.listPoint", id);
		return list;
	}

	@Override
	public int allPoint(String id) {
		int allpoint = ss.selectOne("point.allPoint", id);
		return allpoint;
	}
	
	@Override
	public String memberId(int no) {
		String id = ss.selectOne("point.memberId", no);
		return id;
	}
	
	
	
	//Áö¿ï°Å
/*	@Override
	public String memberNo(OrdersVO ovo) {
		String id = ss.selectOne("point.memberNo", ovo);
		return id;
	}
	
	@Override
	public String memberNo(ReviewsVO rvo) {
		String id = ss.selectOne("point.memberNoReview", rvo);
		return id;
	}
	
	@Override
	public int totalPoint(String id) {
		int totalP = ss.selectOne("point.totalPoint", id);
		return totalP;
	}*/
}
