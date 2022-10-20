package kr.co.animal.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.animal.dao.AdminOrdersDao;
import kr.co.animal.vo.OrdersVO;
import kr.co.animal.vo.SearchCriteria;
import kr.co.animal.vo.SuperDTO;

@Service
public class AdminOrdersService {

	@Autowired
	private AdminOrdersDao dao;

	public List<? extends SuperDTO> adminlistpage(SearchCriteria scri){
		return dao.adminlistpage(scri);
	}
	public int adminTotoalCount(SearchCriteria scri) {
		return dao.adminTotoalCount(scri);
	}
	public OrdersVO detailAdminOrders(int ord_no) {
		return dao.detailAdminOrders(ord_no);
	}
	public void updateAdminOrders(OrdersVO ovo) {
		dao.updateAdminOrders(ovo);
	}
	public void deleteAdminOrders(int ord_no) {
		dao.deleteAdminOrders(ord_no);
	}
	public int deleteAdminOrdersCheck(int ord_no) {
		return dao.deleteAdminOrdersCheck(ord_no);
	}

}
