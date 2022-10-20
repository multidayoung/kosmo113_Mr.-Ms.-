package kr.co.animal.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.animal.dao.ShopDao;
import kr.co.animal.vo.SearchCriteria;
import kr.co.animal.vo.ShopVO;

@Service
public class ShopService {

	@Autowired
	private ShopDao dao;
	
	// 상세보기
	public ShopVO det(int shopping_mall_num) {
		return dao.detail(shopping_mall_num);
	}
	// 업데이트
	public void upShop(ShopVO svo) {
		dao.updateShop(svo);
	}
	// 삭제
	public void dShop(int shopping_mall_num) {
		dao.delShop(shopping_mall_num);
	}
	// 카테고리 별 상품 목록
	public List<ShopVO> list(SearchCriteria scri) {
		return dao.shoplist(scri);
	}
	public List<ShopVO> list2(SearchCriteria scri) {
		return dao.shoplist2(scri);
	}
	public List<ShopVO> list3(SearchCriteria scri) {
		return dao.shoplist3(scri);
	}
	public List<ShopVO> list4(SearchCriteria scri) {
		return dao.shoplist4(scri);
	}
	// 카테고리별 게시물 총 갯수
	public int listcount(SearchCriteria scri) {
		return dao.listCount(scri);
	}
	public int listcount2(SearchCriteria scri) {
		return dao.listCount2(scri);
	}
	public int listcount3(SearchCriteria scri) {
		return dao.listCount3(scri);
	}
	public int listcount4(SearchCriteria scri) {
		return dao.listCount4(scri);
	}
}
