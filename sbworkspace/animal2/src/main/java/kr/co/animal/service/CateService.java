package kr.co.animal.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.animal.dao.CateDao;
import kr.co.animal.vo.CateVO;
import kr.co.animal.vo.SearchCriteria;

@Service
public class CateService {

	@Autowired
	private CateDao dao;
	
	
	public int getCnt1() {
		return dao.getCnt();
	}
	// 개 리스트
	public List<CateVO> dogList(Map<String, Integer> map){
		return dao.doglist(map);
	}
	// 고양이 리스트
	public List<CateVO> catList(Map<String, Integer> map){
		return dao.catlist(map);
	}
	public CateVO det(int cate_num) {
		return dao.detail(cate_num);
	}
	public void upCate(CateVO cvo) {
		dao.updateCate(cvo);
	}
	public void dCate(int cate_num) {
		dao.delCate(cate_num);
	}
	public List<CateVO> list(SearchCriteria scri) {
		return dao.listPage(scri);
	}
	public int listcount(SearchCriteria scri) {
		return dao.listCount(scri);
	}
	public List<CateVO> list2(SearchCriteria scri) {
		return dao.listPage2(scri);
	}
	public int listcount2(SearchCriteria scri) {
		return dao.listCount2(scri);
	}

}
