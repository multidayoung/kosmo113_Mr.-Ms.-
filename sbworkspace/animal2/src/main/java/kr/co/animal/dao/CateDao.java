package kr.co.animal.dao;

import java.util.List;
import java.util.Map;

import kr.co.animal.vo.CateVO;
import kr.co.animal.vo.SearchCriteria;

public interface CateDao {
	public int getCnt();
	public List<CateVO> doglist(Map<String, Integer> map);
	public List<CateVO> catlist(Map<String, Integer> map);
	public CateVO detail(int cate_num);
	public void updateCate(CateVO cvo);
	public void delCate(int cate_num);
	public List<CateVO> listPage(SearchCriteria scri);
	public int listCount(SearchCriteria scri);
	public List<CateVO> listPage2(SearchCriteria scri);
	public int listCount2(SearchCriteria scri);
}
