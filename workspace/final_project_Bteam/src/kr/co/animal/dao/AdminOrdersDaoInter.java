package kr.co.animal.dao;

import java.util.List;

import kr.co.animal.vo.OrdersVO;
import kr.co.animal.vo.SearchVO;
import kr.co.animal.vo.SuperDTO;

public interface AdminOrdersDaoInter extends AdminListcountInter {
	// 관리자용 주문관리 페이징 메서드
//	public int getAdminCnt(SearchVO svo);
	public List<? extends SuperDTO> getAdminList(SearchVO svo);
	// 주문관리 디테일폼
	public OrdersVO detailAdminOrders(int num);
	
	// 주문 수정
	public void updateAdminOrders(OrdersVO ovo);
	
	// 주문 삭제
	public void deleteAdminOrders(int ord_no);

	// 주문취소 상태에서만 삭제가 가능
	public int deleteAdminOrdersCheck(int ord_no);
}
