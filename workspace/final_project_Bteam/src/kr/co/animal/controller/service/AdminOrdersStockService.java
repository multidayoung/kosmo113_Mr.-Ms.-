package kr.co.animal.controller.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.animal.dao.AdminOrdersDao;
import kr.co.animal.vo.OrdersVO;
import kr.co.animal.vo.SearchVO;
import kr.co.animal.vo.SuperDTO;

@Service
public class AdminOrdersStockService {

	@Autowired
	private AdminOrdersDao adminOrdersDao;

	// �����ڿ� ��totalnum��ȯ
	public int getAdminServiceCnt(SearchVO svo) {
		return adminOrdersDao.getAdminCnt(svo);
	}

	// ������ �ֹ� list
	public List<? extends SuperDTO> getAdminServiceList(SearchVO svo) {
		return adminOrdersDao.getAdminList(svo);
	}

	// ������ �󼼺���
	public OrdersVO detailAdminServiceOrders(int num) {
		return adminOrdersDao.detailAdminOrders(num);
	}

	// �����ϱ�
	@Transactional
	public void updateAdminServiceOrders(OrdersVO ovo) {
		adminOrdersDao.updateAdminOrders(ovo);
	}

	// ������ �ֹ� ���� üũ
	public int deleteAdminServiceOrdersCheck(int ord_no) {
		return adminOrdersDao.deleteAdminOrdersCheck(ord_no);
	}

	// ������ �ֹ� ����
	@Transactional
	public void deleteAdminServiceOrders(int ord_no) {
		adminOrdersDao.deleteAdminOrders(ord_no);
	}

}
