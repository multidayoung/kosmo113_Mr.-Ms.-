package kr.co.animal.dao;

import java.util.List;
import java.util.Map;

import kr.co.animal.vo.MemberVO;
import kr.co.animal.vo.OrdersVO;
import kr.co.animal.vo.PointVO;
import kr.co.animal.vo.ReviewsVO;

public interface PointDaoInter {

	public void addPoint(PointVO vo);
	
	public void updatePoint(Map<String, Object> map);
	public void deletePoint(String id);
	public int getCnt(PointVO pvo);
	public List<PointVO> listPoint(String id);
	public int allPoint(String id);
	public String memberId(int no);
	
	//public String memberNo(OrdersVO ovo);
	//public String memberNo(ReviewsVO rvo);
	//public int totalPoint(String id);
}
