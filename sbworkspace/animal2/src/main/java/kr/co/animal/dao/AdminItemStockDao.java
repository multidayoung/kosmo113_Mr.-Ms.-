package kr.co.animal.dao;

import java.util.List;
import java.util.Map;

import kr.co.animal.vo.ItemVO;
import kr.co.animal.vo.SearchVO;
import kr.co.animal.vo.StockVO;

public interface AdminItemStockDao {
	public void additem(ItemVO ivo);
	public void addstock(StockVO stvo);
	public List<ItemVO> listpage(SearchVO vo);
	public ItemVO idetail(int num);
	public void updateitem(ItemVO vo);
	public void updateitemstock(StockVO vo);
	public void deleteitem(int num);
	public void deletestock(int num);
	public int itemNameChk(Map<String, String> map);
}
