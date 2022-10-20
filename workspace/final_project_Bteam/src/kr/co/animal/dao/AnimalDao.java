package kr.co.animal.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.animal.vo.AnimalVO;
import kr.co.animal.vo.MemberVO;


@Repository
public class AnimalDao implements AnimalDaoInter {

	@Autowired
	private SqlSessionTemplate ss;


	@Override
	public void addAnimal(AnimalVO vo) {
		System.out.println("DAOOOOOOOOOOOOOO"+vo.getAnimal_gender());
		ss.insert("animal.add", vo);
	}

	@Override
	public List<AnimalVO> listAnimal(String id) {
		List<AnimalVO> alist = ss.selectList("animal.list", id);
		return alist;
	}
	
	@Override
	public int getCnt() {
		int cnt = ss.selectOne("animal.totalCount");
		return cnt;
	}
	
	@Override
	public void updateAnimal(AnimalVO vo) {
		ss.update("animal.updateanimal", vo);
		
	}
	@Override
	public AnimalVO detailAnimal(int anum) {
		AnimalVO vo = ss.selectOne("animal.detail", anum);
		return vo;
	}
	
	@Override
	public void deleteAnimal(int anum) {
		ss.delete("animal.animaldelete", anum);
	}
	@Override
	public AnimalVO detailAnimal2(String id) {
		AnimalVO vo = ss.selectOne("animal.detail2", id);
		return vo;
	}
	@Override
	public void deleteAnimal2(String id) {
		ss.delete("animal.animaldelete2", id);
		
	}
}
