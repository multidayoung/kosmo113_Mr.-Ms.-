package kr.co.animal.controller.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.animal.dao.BasketDao;
import kr.co.animal.vo.BasketVO;

@Service
public class BasketOrderService {
	
	@Autowired
	private BasketDao basketDao;
	
	@Transactional
	public void deleteServiceBasket(BasketVO bvo, int b_num) {
		basketDao.addBasketOrder(bvo);
		basketDao.delBasket(b_num);
		System.out.println(b_num);
	}
}
