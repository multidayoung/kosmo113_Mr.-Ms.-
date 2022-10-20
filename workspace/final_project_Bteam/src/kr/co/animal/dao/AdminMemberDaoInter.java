package kr.co.animal.dao;

import java.util.List;

import kr.co.animal.vo.MemberVO;
import kr.co.animal.vo.OrdersVO;
import kr.co.animal.vo.SearchVO;
import kr.co.animal.vo.SuperDTO;

public interface AdminMemberDaoInter extends AdminListcountInter {
	public int getAdminCnt(SearchVO vo);// memberList 출력하기위한 총 member 수 가져오기
	public MemberVO getDetail(int num);// member 상세정보 페이지
	public void upMember(MemberVO vo); // member 정보 수정
	public void delMember(int num); // member 삭제
	public List<OrdersVO> getRankMem(); // ranking AOP
	public List<? extends SuperDTO> getList(SearchVO vo);
}
