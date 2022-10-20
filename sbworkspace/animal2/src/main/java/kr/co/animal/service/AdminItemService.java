package kr.co.animal.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.animal.dao.AdminItemStockDao;
import kr.co.animal.vo.ItemVO;
import kr.co.animal.vo.SearchVO;
import kr.co.animal.vo.StockVO;

@Service
public class AdminItemService  {
	
	@Autowired
	private AdminItemStockDao dao;
	
	// 재고 등록
	public void addItem(ItemVO ivo) {
		dao.additem(ivo);
	}
	public void addStock(StockVO svo) {
		dao.addstock(svo);
	}

	// 재고 조회 
	public List<ItemVO> getList(SearchVO vo) {
		return dao.listpage(vo);
	}
	// 재고 상세
	public ItemVO detailItemstock(int num) {
		return dao.idetail(num);
	}
	// 재고 수정
	public void updateItem(ItemVO vo) {
		dao.updateitem(vo);
	}
	public void updateStock(StockVO vo) {
		dao.updateitemstock(vo);
	}
	// 재고 삭제
	public void deleteItem(int num) {
		dao.deleteitem(num);
	}
	public void deleteStock(int num) {
		dao.deletestock(num);
	}
	// 이름 검사 
	public int itemNameChk(Map<String, String> map) {
		return dao.itemNameChk(map);
	}
	
}
