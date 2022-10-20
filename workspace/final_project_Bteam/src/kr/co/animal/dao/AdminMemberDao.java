package kr.co.animal.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.animal.vo.MemberVO;
import kr.co.animal.vo.OrdersVO;
import kr.co.animal.vo.SearchVO;
import kr.co.animal.vo.SuperDTO;

@Repository("adminMemberList")
public class AdminMemberDao implements AdminMemberDaoInter{

	@Autowired
	private SqlSessionTemplate ss;

	// 관리자 로그인 시 - 회원 리스트
	@Override
	public List<? extends SuperDTO> getList(SearchVO vo) {
		List<? extends SuperDTO> list = ss.selectList("cmr_member.listpage", vo);
		System.out.println("memberDao list => "+list.size());
		return list;
	}

	@Override
	public int getAdminCnt(SearchVO vo) {
		int cnt = ss.selectOne("cmr_member.adminTotalCount", vo);
		return cnt;
	}

	// 관리자 로그인 - 회원 리스트에서 상세정보 보기
	@Override
	public MemberVO getDetail(int num) {
		return ss.selectOne("cmr_member.detail", num);
	}

	// 관리자가 회원 정보 수정
	@Override
	public void upMember(MemberVO vo) {
		ss.update("cmr_member.update", vo);
	}

	// 관리자가 회원 정보 삭제
	@Override
	public void delMember(int num) {
		ss.delete("cmr_member.del", num);
	}

	// MemberList 뽑을 때 AOP 메서드
	@Override
	public List<OrdersVO> getRankMem() {
		List<OrdersVO> list = ss.selectList("cmr_member.rankMember");
		System.out.println("DAO RankMem => "+list.size());
		return list;
	}

	@Override
	public int getAllItemcount(SearchVO vo) {
		int cnt = ss.selectOne("cmr_member.adminTotalCount", vo);
		return cnt;
	}
	
	
}
