package kr.co.animal.dao;

import java.util.List;

import kr.co.animal.vo.SearchCriteria;
import kr.co.animal.vo.ShopVO;

public interface ShopDao {
	// 상세보기
	public ShopVO detail(int shopping_mall_num);
	// 업데이트
	public void updateShop(ShopVO svo);
	// 삭제
	public void delShop(int shopping_mall_num);
	// 게시물 목록 조회
	public List<ShopVO> shoplist(SearchCriteria scri);
	public List<ShopVO> shoplist2(SearchCriteria scri);
	public List<ShopVO> shoplist3(SearchCriteria scri);
	public List<ShopVO> shoplist4(SearchCriteria scri);
	// 게시물 총 갯수
	public int listCount(SearchCriteria scri);
	public int listCount2(SearchCriteria scri);
	public int listCount3(SearchCriteria scri);
	public int listCount4(SearchCriteria scri);
	
}
