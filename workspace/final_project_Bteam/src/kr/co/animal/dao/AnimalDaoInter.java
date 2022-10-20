package kr.co.animal.dao;

import java.util.List;

import kr.co.animal.vo.AnimalVO;
import kr.co.animal.vo.MemberVO;

public interface AnimalDaoInter {

	public void addAnimal(AnimalVO vo);
	public int getCnt();
	public List<AnimalVO> listAnimal(String id);
	public void updateAnimal(AnimalVO vo);
	public AnimalVO detailAnimal(int anum);
	public void deleteAnimal(int anum);

	public AnimalVO detailAnimal2(String id);
	public void deleteAnimal2(String id);
}
