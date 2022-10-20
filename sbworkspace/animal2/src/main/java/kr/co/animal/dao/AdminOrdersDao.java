package kr.co.animal.dao;

import java.util.List;

import kr.co.animal.vo.OrdersVO;
import kr.co.animal.vo.SearchCriteria;
import kr.co.animal.vo.SuperDTO;

public interface AdminOrdersDao {
	public List<? extends SuperDTO> adminlistpage(SearchCriteria scri);
	public int adminTotoalCount(SearchCriteria scri);
	public OrdersVO detailAdminOrders(int ord_no);
	public void updateAdminOrders(OrdersVO ovo);
	public void deleteAdminOrders(int ord_no);
	public int deleteAdminOrdersCheck(int ord_no);
	
}
