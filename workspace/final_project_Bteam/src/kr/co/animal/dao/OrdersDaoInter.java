package kr.co.animal.dao;

import java.util.List;
import java.util.Map;

import kr.co.animal.vo.MemberVO;
import kr.co.animal.vo.OrdersVO;

public interface OrdersDaoInter {

	public int getCnt(MemberVO mvo);
	public void addOrders(OrdersVO vo);
	public List<OrdersVO> getList(Map<String, Object> map);
	

	// 판매 top3 item
	public List<OrdersVO> getRankOrdersList();	
	
	// 리뷰 카운터 관련
	public void updateRcnt(int ord_no);
	
	// 주문하면 재고수량 변경
	public void updateStock(Map<String, Integer> map);
}
