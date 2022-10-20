package kr.co.animal.dao;

import java.util.List;

import kr.co.animal.vo.OrdersVO;
import kr.co.animal.vo.SearchVO;
import kr.co.animal.vo.SuperDTO;

public interface AdminOrdersDaoInter extends AdminListcountInter {
	// �����ڿ� �ֹ����� ����¡ �޼���
//	public int getAdminCnt(SearchVO svo);
	public List<? extends SuperDTO> getAdminList(SearchVO svo);
	// �ֹ����� ��������
	public OrdersVO detailAdminOrders(int num);
	
	// �ֹ� ����
	public void updateAdminOrders(OrdersVO ovo);
	
	// �ֹ� ����
	public void deleteAdminOrders(int ord_no);

	// �ֹ���� ���¿����� ������ ����
	public int deleteAdminOrdersCheck(int ord_no);
}
