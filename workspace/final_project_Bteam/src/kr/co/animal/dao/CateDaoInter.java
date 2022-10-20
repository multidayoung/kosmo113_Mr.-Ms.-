package kr.co.animal.dao;

import java.util.List;
import java.util.Map;

import kr.co.animal.vo.CateVO;
import kr.co.animal.vo.SearchCriteria;

public interface CateDaoInter {
	
	public List<CateVO> kindcollect(String animal);
	
	//�ؼ��� ������ ��Ʈ���� ���°�
	public List<CateVO> dogList(Map<String, Integer> map);
	public List<CateVO> catList(Map<String, Integer> map);
	public CateVO det(int cate_num);
	public void upCate(CateVO cvo);
	public void dCate(int cate_num);
	public List<CateVO> list(SearchCriteria scri);
	public int listcount(SearchCriteria scri);
	public List<CateVO> list2(SearchCriteria scri);
	public int listcount2(SearchCriteria scri);
}
