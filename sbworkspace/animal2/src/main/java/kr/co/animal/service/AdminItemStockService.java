package kr.co.animal.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.animal.vo.ItemVO;
import kr.co.animal.vo.SearchVO;
import kr.co.animal.vo.StockVO;

@Service
public class AdminItemStockService {
	
	@Autowired
	private AdminItemService itemStockDao;
	
	@Transactional
	public void addServiceItemStock(ItemVO ivo, StockVO svo) {
		itemStockDao.addItem(ivo);
		itemStockDao.addStock(svo);
	}
	
//	public int getTotalCntService(SearchVO vo) {
//		return itemStockDao.getTotalCnt(vo);
//	}
	
	public List<ItemVO> getList(SearchVO vo) {
		return itemStockDao.getList(vo);
	}
	
	public ItemVO detailItemstock(int num) {
		return itemStockDao.detailItemstock(num);
	}
	
	@Transactional
	public void updateServiceItemStock( ItemVO ivo, StockVO svo) {
		itemStockDao.updateItem(ivo);
		itemStockDao.updateStock(svo);
	}
	
	@Transactional
	public void deleteServiceItemstock(int num) {
		itemStockDao.deleteItem(num);
		itemStockDao.deleteStock(num);
		
	}
}
