package kr.co.animal.dao;

import java.util.List;

import kr.co.animal.vo.ItemVO;
import kr.co.animal.vo.SearchVO;
import kr.co.animal.vo.SuperDTO;

public interface ItemDaoInter {
	// �ڿ��� ��ǰ��õ����Ʈ
	public List<ItemVO> getRecommendProduction(List<String> sList);
	
	public List<? extends SuperDTO> getItemList(SearchVO vo);
	public List<? extends SuperDTO> getCategoryList(SearchVO vo);
	public ItemVO getDetail(int num);
	public ItemVO getCategoryDetail(int num);
	public int getCnt(SearchVO svo);
}
