package kr.co.animal.dao;

import java.util.List;
import java.util.Map;

import kr.co.animal.vo.MemberVO;
import kr.co.animal.vo.OrdersVO;

public interface OrdersDaoInter {

	public int getCnt(MemberVO mvo);
	public void addOrders(OrdersVO vo);
	public List<OrdersVO> getList(Map<String, Object> map);
	

	// �Ǹ� top3 item
	public List<OrdersVO> getRankOrdersList();	
	
	// ���� ī���� ����
	public void updateRcnt(int ord_no);
	
	// �ֹ��ϸ� ������ ����
	public void updateStock(Map<String, Integer> map);
}
