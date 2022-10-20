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

	// ȸ�����Խ� �ڵ����� �ݷ����� ����
	public AnimalVO addAnimalMini(MemberVO mvo) {
		AnimalVO avo = new AnimalVO();
		avo.setMember_id(mvo.getMember_id());
		avo.setAnimal_name("�̴Ϲݷ���");
		avo.setAnimal_age(1);
		// System.out.println();
		avo.setAnimal_gender("��");
		avo.setCate_species("��");
		avo.setCate_kind("��Ƽ��");
		avo.setAnimal_img1("aidog.jpg");
		avo.setAnimal_img2("aidog.jpg");
		avo.setAnimal_img3("aidog.jpg");
		avo.setAnimal_detail("���¾� AI�ݷ�����~ �̾��̾�ȣ~ �ʿ� �Բ��ϰ� �;�~");
		return avo;
	}

	// ȸ�����Խ� ����Ʈ ����
	public PointVO addJoinPoint(MemberVO mvo) {
		PointVO pvo = new PointVO();
		pvo.setMember_id(mvo.getMember_id());
		pvo.setPoint_cate("����");
		pvo.setPoint(1000);
		pvo.setPoint_cont("ȸ������");
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

	// ���Ž� ����Ʈ ����
	public void addBuyPoint(OrdersVO ovo) {
		PointVO pvo = new PointVO();
		String id = ovo.getMember_id();
		pvo.setMember_id(id);
		pvo.setPoint_cate("����");
		pvo.setPoint((int) (ovo.getTotalPrice() * 0.01));
		pvo.setPoint_cont("��ǰ����");

		pointDao.addPoint(pvo);
	}

	// ��å�� ����Ʈ ����
	@Transactional
	public void addtrailPoint(ArrayList<Object> id_line) {
		String my_id = (String) id_line.get(0);
		int km = (int) id_line.get(1);
		
		PointVO pvo = new PointVO();
		pvo.setMember_id(my_id);
		pvo.setPoint_cate("����");
		int plusPoint = km * 10;
		pvo.setPoint(plusPoint);
		pvo.setPoint_cont("��å"+km+"km");

		pointDao.addPoint(pvo);

		// ����Ʈ�� ������ �� ������̺� ����Ʈ�� ����
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("member_id", my_id);
		int member_point = pointDao.allPoint(my_id);
		System.out.println("************member_point : "+member_point);
		map.put("member_point", member_point+plusPoint);
		pointDao.updatePoint(map);
	}
	

	// �ı� �ۼ��� ����Ʈ ����
	public void addReviewPoint(ReviewsVO rvo) {
		PointVO pvo = new PointVO();
		String id =rvo.getMember_id();
		pvo.setMember_id(id);
		pvo.setPoint_cate("����");
		pvo.setPoint(100);
		pvo.setPoint_cont("�ı��ۼ�");

		pointDao.addPoint(pvo);
	}
	
	// ȸ��Ż��� ����Ʈ ����
	@Transactional
	public void deletePoint(String id) {
		memberDao.deleteMember(id);
		pointDao.deletePoint(id);
	}
		
	// ��ǰ���Ž� ����Ʈ ����
	@Transactional
	public void minusBuyPoint(OrdersVO ovo) {
		PointVO pvo = new PointVO();
		String id = ovo.getMember_id();
		pvo.setMember_id(id);
		pvo.setPoint_cate("����");
		int minuspoint = ovo.getTotalPrice();
		pvo.setPoint(minuspoint);
		pvo.setPoint_cont("��ǰ����");
		pointDao.addPoint(pvo);

		// ����Ʈ�� ������ �� ������̺� ����Ʈ�� ����
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("member_id", ovo.getMember_id());
		int member_point = pointDao.allPoint(id);
		System.out.println("************member_point : "+member_point);
		map.put("member_point", member_point-minuspoint);
		pointDao.updatePoint(map);
	}
}
