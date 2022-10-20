package kr.co.animal.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.animal.vo.BasketVO;

@Repository("basket")
public class BasketDao implements BasketDaoInter{

	@Autowired
	private SqlSessionTemplate ss;
	
	@Override
	public void addBasket(BasketVO vo) {
		ss.insert("jhy_basket.add", vo);
	}

	// ��ٱ��� ����Ʈ ���
	@Override
	public List<BasketVO> getBasketList(String name) {
		return ss.selectList("jhy_basket.basketlist", name);
	}

	@Override
	public BasketVO getBasketDetail(int b_num) {
		return ss.selectOne("jhy_basket.basketdetail", b_num);
	}

	@Override
	public void updateBasket(BasketVO vo) {
		ss.update("jhy_basket.update", vo);
	}

	@Override
	public void delBasket(int b_num) {
		ss.delete("jhy_basket.del", b_num);
	}

	@Override
	public int getCnt(Map<String, Object> map) {
		int cnt = ss.selectOne("jhy_basket.totalCount", map);
		return cnt;
	}

	@Override
	public void addBasketOrder(BasketVO bvo) {
		ss.insert("jhy_basket.addorder", bvo);
	}
	
	// �ֹ��ϸ� ������ ����
	@Override
	public void updateStock(Map<String, Integer> map) {
		ss.update("jhy_basket.updatestock", map);
	}

	@Override
	public int allPrice(String name) {
		return ss.selectOne("jhy_basket.allPrice", name);
	}

}
