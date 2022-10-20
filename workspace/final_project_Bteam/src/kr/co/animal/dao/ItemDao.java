package kr.co.animal.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.animal.vo.ItemVO;
import kr.co.animal.vo.SearchVO;
import kr.co.animal.vo.SuperDTO;

@Repository("item")
public class ItemDao implements ItemDaoInter{

	@Autowired
	private SqlSessionTemplate ss;

	// ¹Ú¿¹Âù
	@Override
	public List<ItemVO> getRecommendProduction(List<String> sList) {
        List<ItemVO> list = ss.selectList("jhy_item.recommendProduction", sList);
        return list;
	}
	
	@Override
	public int getCnt(SearchVO svo) {
		int cnt = ss.selectOne("jhy_item.totalCount", svo);
		return cnt;
	}
	
	@Override
	public List<? extends SuperDTO> getItemList(SearchVO vo) {
		return ss.selectList("jhy_item.list", vo);
	}
	
	@Override
	public List<? extends SuperDTO> getCategoryList(SearchVO vo) {
		return ss.selectList("jhy_item.category", vo);
	}

	@Override
	public ItemVO getDetail(int num) {
		return ss.selectOne("jhy_item.detail", num);
	}

	@Override
	public ItemVO getCategoryDetail(int num) {
		return ss.selectOne("jhy_item.detail", num);
	}

	
}
