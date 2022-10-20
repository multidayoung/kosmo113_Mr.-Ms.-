package kr.co.animal.dao;

import java.util.List;

import kr.co.animal.vo.MemberVO;
import kr.co.animal.vo.OrdersVO;
import kr.co.animal.vo.SearchVO;
import kr.co.animal.vo.SuperDTO;

public interface AdminMemberDaoInter extends AdminListcountInter {
	public int getAdminCnt(SearchVO vo);// memberList ����ϱ����� �� member �� ��������
	public MemberVO getDetail(int num);// member ������ ������
	public void upMember(MemberVO vo); // member ���� ����
	public void delMember(int num); // member ����
	public List<OrdersVO> getRankMem(); // ranking AOP
	public List<? extends SuperDTO> getList(SearchVO vo);
}
