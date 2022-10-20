package kr.co.animal.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.animal.vo.CateVO;
import kr.co.animal.vo.SearchCriteria;

@Repository("Cate")
public class CateDAO implements CateDaoInter {
	
	@Autowired
	private SqlSessionTemplate ss;
	
	public List<CateVO> kindcollect(String animal){
		List<CateVO> list = ss.selectList("cate.kindcollection" , animal);
		return list;
	}
	
	@Override
	public List<CateVO> dogList(Map<String, Integer> map) {
		List<CateVO> cvo = ss.selectList("cate.doglist", map);
		return cvo;
	}

	@Override
	public List<CateVO> catList(Map<String, Integer> map) {
		List<CateVO> cvo = ss.selectList("cate.catlist", map);
		return cvo;
	}

	@Override
	public CateVO det(int cate_num) {
		CateVO cvo = ss.selectOne("cate.detail", cate_num);
		return cvo;
	}

	@Override
	public void upCate(CateVO cvo) {
		ss.update("cate.updateCate",cvo);
	}

	@Override
	public void dCate(int cate_num) {
		ss.delete("cate.delCate",cate_num);
	}

	@Override
	public List<CateVO> list(SearchCriteria scri) {
		List<CateVO> cvo = ss.selectList("cate.listPage", scri);
		return cvo;
	}

	@Override
	public int listcount(SearchCriteria scri) {
		int cnt = ss.selectOne("cate.listCount", scri);
		return cnt;
	}

	@Override
	public List<CateVO> list2(SearchCriteria scri) {
		List<CateVO> cvo = ss.selectList("cate.listPage2", scri);
		return cvo;
	}

	@Override
	public int listcount2(SearchCriteria scri) {
		int cnt = ss.selectOne("cate.listCount2", scri);
		return cnt;
	}
}
