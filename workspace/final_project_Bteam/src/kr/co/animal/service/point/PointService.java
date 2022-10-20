package kr.co.animal.service.point;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.animal.dao.AnimalDaoInter;
import kr.co.animal.dao.MemberDaoInter;
import kr.co.animal.dao.PointDaoInter;
import kr.co.animal.vo.AnimalVO;
import kr.co.animal.vo.MemberVO;
import kr.co.animal.vo.OrdersVO;
import kr.co.animal.vo.PointVO;
import kr.co.animal.vo.ReviewsVO;

@Service
public class PointService {
	@Autowired
	private MemberDaoInter memberDao;
	@Autowired
	private AnimalDaoInter animalDao;
	@Autowired
	private PointDaoInter pointDao;

	// 회원가입시 자동으로 반려동물 생성
	public AnimalVO addAnimalMini(MemberVO mvo) {
		AnimalVO avo = new AnimalVO();
		avo.setMember_id(mvo.getMember_id());
		avo.setAnimal_name("미니반려펫");
		avo.setAnimal_age(1);
		// System.out.println();
		avo.setAnimal_gender("암");
		avo.setCate_species("개");
		avo.setCate_kind("몰티즈");
		avo.setAnimal_img1("aidog.jpg");
		avo.setAnimal_img2("aidog.jpg");
		avo.setAnimal_img3("aidog.jpg");
		avo.setAnimal_detail("나는야 AI반려동물~ 이야이야호~ 너와 함께하고 싶어~");
		return avo;
	}

	// 회원가입시 포인트 적립
	public PointVO addJoinPoint(MemberVO mvo) {
		PointVO pvo = new PointVO();
		pvo.setMember_id(mvo.getMember_id());
		pvo.setPoint_cate("적립");
		pvo.setPoint(1000);
		pvo.setPoint_cont("회원가입");
		return pvo;
	}

	@Transactional
	public void addMember(MemberVO mvo) {
		PointService pointService = new PointService();
		memberDao.addMember(mvo);
		AnimalVO avo = pointService.addAnimalMini(mvo);
		// AnimalVO avo = animalDao.detailAnimal(1);
		animalDao.addAnimal(avo);
		PointVO pvo = pointService.addJoinPoint(mvo);
		pointDao.addPoint(pvo);
	}

	// 구매시 포인트 적립
	public void addBuyPoint(OrdersVO ovo) {
		PointVO pvo = new PointVO();
		String id = ovo.getMember_id();
		pvo.setMember_id(id);
		pvo.setPoint_cate("적립");
		pvo.setPoint((int) (ovo.getTotalPrice() * 0.01));
		pvo.setPoint_cont("상품구매");

		pointDao.addPoint(pvo);
	}

	// 산책시 포인트 적립
	@Transactional
	public void addtrailPoint(ArrayList<Object> id_line) {
		String my_id = (String) id_line.get(0);
		int km = (int) id_line.get(1);
		
		PointVO pvo = new PointVO();
		pvo.setMember_id(my_id);
		pvo.setPoint_cate("적립");
		int plusPoint = km * 10;
		pvo.setPoint(plusPoint);
		pvo.setPoint_cont("산책"+km+"km");

		pointDao.addPoint(pvo);

		// 포인트가 적립될 때 멤버테이블에 포인트가 변경
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("member_id", my_id);
		int member_point = pointDao.allPoint(my_id);
		System.out.println("************member_point : "+member_point);
		map.put("member_point", member_point+plusPoint);
		pointDao.updatePoint(map);
	}
	

	// 후기 작성시 포인트 적립
	public void addReviewPoint(ReviewsVO rvo) {
		PointVO pvo = new PointVO();
		String id =rvo.getMember_id();
		pvo.setMember_id(id);
		pvo.setPoint_cate("적립");
		pvo.setPoint(100);
		pvo.setPoint_cont("후기작성");

		pointDao.addPoint(pvo);
	}
	
	// 회원탈퇴시 포인트 삭제
	@Transactional
	public void deletePoint(String id) {
		memberDao.deleteMember(id);
		pointDao.deletePoint(id);
	}
		
	// 상품구매시 포인트 차감
	@Transactional
	public void minusBuyPoint(OrdersVO ovo) {
		PointVO pvo = new PointVO();
		String id = ovo.getMember_id();
		pvo.setMember_id(id);
		pvo.setPoint_cate("차감");
		int minuspoint = ovo.getTotalPrice();
		pvo.setPoint(minuspoint);
		pvo.setPoint_cont("상품구매");
		pointDao.addPoint(pvo);

		// 포인트가 적립될 때 멤버테이블에 포인트가 변경
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("member_id", ovo.getMember_id());
		int member_point = pointDao.allPoint(id);
		System.out.println("************member_point : "+member_point);
		map.put("member_point", member_point-minuspoint);
		pointDao.updatePoint(map);
	}
}
