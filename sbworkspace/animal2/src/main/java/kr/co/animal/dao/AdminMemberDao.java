package kr.co.animal.dao;

import java.util.List;

import kr.co.animal.vo.CateVO;
import kr.co.animal.vo.MemberVO;
import kr.co.animal.vo.ReviewsVO;
import kr.co.animal.vo.SearchCriteria;

public interface AdminMemberDao {
	public int alistCount(SearchCriteria scri);
	public MemberVO detail(String member_id);
	public void mupdate(MemberVO vo); 
	public void del(String member_id);
	public List<MemberVO> listpage2(SearchCriteria scri);
	public int totalUsers(MemberVO vo);
	public int totalReviews(ReviewsVO vo);
	public int totalProduct(ReviewsVO vo);
	public int totalCatelist(CateVO vo);
	public int totalPost();
	public int totalOrder();
}
