package kr.co.animal.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.animal.vo.ItemVO;
import kr.co.animal.vo.SearchVO;
import kr.co.animal.vo.StockVO;
import kr.co.animal.vo.SuperDTO;

@Repository("adminitemstockList")
public class AdminItemStockDao implements AdminItemStockInter {
	
	@Autowired
	private SqlSessionTemplate ss;
	
	// item,stock �űԵ��
	@Override
	public void addItem(ItemVO ivo) {
		ss.insert("ybh_itemStock.additem", ivo);
	}
	@Override
	public void addStock(StockVO svo) {
		ss.insert("ybh_itemStock.addstock", svo);
	}
	
	// �� ��ǰ�� / ����¡ ó�� �޼��� 
	
	public int getTotalCnt(SearchVO vo) {
		System.out.println("����� total dao");
		System.out.println("category : "+vo.getCategory());
		System.out.println("search : "+vo.getSearch());
		return ss.selectOne("ybh_itemStock.totalCount", vo);
	}
	
	@Override
	public List<? extends SuperDTO> getList(SearchVO vo) {
		System.out.println("����� dao");
		return ss.selectList("ybh_itemStock.listpage", vo);
	}
	// ��ǰ detail����
	@Override
	public ItemVO detailItemstock(int num) {
		return ss.selectOne("ybh_itemStock.idetail", num);
	}
	// ��ǰ �����ϱ�
	@Override
	public void updateItem(ItemVO vo) {
		ss.update("ybh_itemStock.updateitem", vo);
	}
	@Override
	public void updateStock(StockVO vo) {
		ss.update("ybh_itemStock.updateitemstock", vo);
		
	}
	
	@Override
	public void deleteItem(int num) {
		ss.delete("ybh_itemStock.deleteitem", num);
	}
	@Override
	public void deleteStock(int num) {
		ss.delete("ybh_itemStock.deletestock", num);
		
	}
	// aop TotalCount
	@Override
	public int getAllItemcount(SearchVO vo) {
		System.out.println("����� advice�� total dao");
		return ss.selectOne("ybh_itemStock.totalCount", vo);
	}
	// itemNameChk �ߺ�üũ
	@Override
	public int itemNameChk(Map<String, String> map) {
		return ss.selectOne("ybh_itemStock.itemNameChk", map);
	}
	


}
