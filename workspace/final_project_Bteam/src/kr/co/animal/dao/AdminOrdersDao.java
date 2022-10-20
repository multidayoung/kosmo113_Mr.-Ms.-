package kr.co.animal.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.animal.vo.OrdersVO;
import kr.co.animal.vo.SearchVO;
import kr.co.animal.vo.SuperDTO;

@Repository("adminOrdersList")
public class AdminOrdersDao implements AdminOrdersDaoInter {

	@Autowired
	private SqlSessionTemplate ss;

	// �����ڿ� ��totalnum��ȯ
//	@Override
	public int getAdminCnt(SearchVO svo) {
		int cnt = ss.selectOne("ybh_orders.adminTotoalCount", svo);
		System.out.println("cnt ������ ��ȯ�� : " + cnt);
		return cnt;
	}

	// ������ �ֹ� list
	@Override
	public List<? extends SuperDTO> getAdminList(SearchVO svo) {
		System.out.println("dao category : " + svo.getCategory());
		System.out.println("dao search : " + svo.getSearch());
		return ss.selectList("ybh_orders.adminlistpage", svo);
	}

	// ������ �󼼺���
	@Override
	public OrdersVO detailAdminOrders(int num) {
		System.out.println("dao �ֹ� ��ȣ : " + num);
		return ss.selectOne("ybh_orders.adminDetailOrdes", num);
	}

	// ������ ����
	@Override
	public void updateAdminOrders(OrdersVO ovo) {
		ss.update("ybh_orders.updateOrders", ovo);
	}

	// ������ �ֹ� ����
	@Override
	public void deleteAdminOrders(int ord_no) {
		ss.delete("ybh_orders.deleteOrders", ord_no);
	}

	// ������ �ֹ� ���� üũ(��ۻ��°� �ֹ�����϶���)
	@Override
	public int deleteAdminOrdersCheck(int ord_no) {
		System.out.println("dao �ֹ���ȣ : " + ord_no);
		return ss.selectOne("ybh_orders.deleteCheck", ord_no);
	}

	@Override
	public int getAllItemcount(SearchVO svo) {
		int cnt = ss.selectOne("ybh_orders.adminTotoalCount", svo);
		System.out.println("cnt advice dao ������ ��ȯ�� : " + cnt);
		return cnt;
	}

}
