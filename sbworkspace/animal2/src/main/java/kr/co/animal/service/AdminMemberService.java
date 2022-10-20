package kr.co.animal.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.animal.dao.AdminMemberDao;
import kr.co.animal.vo.CateVO;
import kr.co.animal.vo.MemberVO;
import kr.co.animal.vo.ReviewsVO;
import kr.co.animal.vo.SearchCriteria;

@Service
public class AdminMemberService {

	@Autowired
	private AdminMemberDao dao;

	public int getAdminCnt(SearchCriteria scri) {
		return dao.alistCount(scri);
	}
	public MemberVO getDetail(String member_id) {
		return dao.detail(member_id);
	}
	public void upMember(MemberVO mvo) {
		dao.mupdate(mvo);
	}
	public void delMember(String member_id) {
		dao.del(member_id);
	}
	public List<MemberVO> listpage2(SearchCriteria scri){
		return dao.listpage2(scri);
	}
	public int totalUsers(MemberVO vo) {
		return dao.totalUsers(vo);
	}
	public int totalReviews(ReviewsVO vo) {
		return dao.totalReviews(vo);
	}
	public int totalProduct(ReviewsVO vo) {
		return dao.totalProduct(vo);
	}
	public int totalCatelist(CateVO vo) {
		return dao.totalCatelist(vo);
	}
	public int totalPost() {
		return dao.totalPost();
	}
	public int totalOrder() {
		return dao.totalOrder();
	}
}
