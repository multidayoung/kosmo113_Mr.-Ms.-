package kr.co.animal.dao;

import java.util.List;
import java.util.Map;

import kr.co.animal.vo.BasketVO;

public interface BasketDaoInter {
	public void addBasket(BasketVO vo);
	public List<BasketVO> getBasketList(String name);
	public void updateBasket(BasketVO vo);
	public void delBasket(int b_num);
	public int getCnt(Map<String, Object> map);
	public void addBasketOrder(BasketVO bvo);
	public void updateStock(Map<String, Integer> map);
	public BasketVO getBasketDetail(int b_num);
	public int allPrice(String name);
}
