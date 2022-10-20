package kr.co.animal.dao;

import java.util.List;
import java.util.Map;

import kr.co.animal.vo.SuperDTO;

public interface PageListInter {
	public List<? extends SuperDTO> getList(Map<String, Integer> map);
}
