package kr.co.animal.controller.main;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.animal.dao.AnimalDaoInter;
import kr.co.animal.dao.CateDaoInter;
import kr.co.animal.dao.MemberDAO;
import kr.co.animal.service.point.PointService;
import kr.co.animal.vo.AnimalVO;
import kr.co.animal.vo.CateVO;
import kr.co.animal.vo.MemberVO;

@Controller
@RequestMapping("/animal")
public class AnimalController {
	
	private int nowPage = 1; // ���� ������ ��
	private int nowBlock = 1; // ���� ��
	private int totalRecord = 0; // �� �Խù� ��   
	private int numPerPage = 9; // �� �������� ������ �Խù� ��
	private int pagePerBlock = 5; // �� ���� ������ ������ ��
	private int totalPage = 0; // ��ü ������ �� => totalRecord/numPerPage
	private int totalBlock = 0; // ��ü �� ��   
	private int beginPerPage = 0; // �� �������� ���� �Խù��� index��
	private int endPerPage = 0; // �� �������� ������ �Խù��� index��  
	
	@Autowired
	private AnimalDaoInter animalDaoInter;
	
	@Autowired
	private MemberDAO memberDaoInter;
	
	@Autowired
	private PointService pointService;
	
	@Autowired
	private CateDaoInter cateDaoInter;
	
	@GetMapping(value="/animalForm")
	public String memberForm(Model m , @RequestParam(value = "animal") String animal1, HttpSession session) {
		System.out.println("������ �����ϱ��?"+animal1);
		
		String id = (String) session.getAttribute("sessionID");
		
		
		String animal;
		
		if(animal1.equals("dog")) {
			animal = "��";
		}
		else {
			animal = "�����";
		}
		
		List<CateVO> list = cateDaoInter.kindcollect(animal);

	
			System.out.println(list.get(2));
		m.addAttribute("id" ,id);
		m.addAttribute("list", list);
		
		return "animal/animalForm";
	}
	
	
	// ���� ���ε�
		@PostMapping(value="/animalIn")
		public String animalIn(AnimalVO vo, HttpServletRequest request, HttpSession session) {
			System.out.println("session : "+session);
			// �α��΋� ������ �Ӽ��� sessionid���� �����ȿͼ� String������ ĳ���� 
			String id = (String) session.getAttribute("sessionID");

			//System.out.println("idŸ�� : "+id.getClass().getName());
			System.out.println("id : "+id);

			if(id == null) {
				id = "test_id";	
			} else {
				id = (String) session.getAttribute("sessionID");
			}
			System.out.println("id : "+id);
			vo.setMember_id(id);

			String img_path = "resources\\animalimage";
			// request�� ������ �̹����� ��θ� �޾Ƽ� ���
			String r_path = request.getRealPath("/");
			System.out.println(r_path);
			// ���ε� �� �̹����� �̸��� �޾Ƽ� �̹����� ����
			String oriFn = vo.getMfile().getOriginalFilename();
			String oriFn2 = vo.getMfile2().getOriginalFilename();
			String oriFn3 = vo.getMfile3().getOriginalFilename();
			System.out.println(oriFn);
			// �̹����� ���ε� ���� ���� ��� noimage�� �⺻���� ����ȴ�.
			if(oriFn.length() == 0 && oriFn2.length() == 0 && oriFn3.length() == 0) {
				oriFn = "noimage.jpg";
				vo.setAnimal_img1(oriFn);
				vo.setAnimal_img2(oriFn);
				vo.setAnimal_img3(oriFn);
			} else {
				// �޸𸮻�(�ӽ���¡���)�� ������ �츮�� ������ ��ο� ����
				StringBuffer path = new StringBuffer();
				path.append(r_path).append(img_path).append("\\");
				path.append(oriFn);
				StringBuffer path2 = new StringBuffer();
				path2.append(r_path).append(img_path).append("\\");
				path2.append(oriFn2);
				StringBuffer path3 = new StringBuffer();
				path3.append(r_path).append(img_path).append("\\");
				path3.append(oriFn3);
				System.out.println(path);
				// �߻��� (�̹����� ������ ���) File ��ü�� ����
				File f = new File(path.toString());
				File f2 = new File(path2.toString());
				File f3 = new File(path3.toString());

				// �ӽ� �޸𸮿� ��� ���ε��� ������ �� -> File Ŭ������ ��η� ����
				try {
					vo.getMfile().transferTo(f);
					vo.getMfile2().transferTo(f2);
					vo.getMfile3().transferTo(f3);
					// �̹��� �̸��� DB�� �����ϱ� ���ؼ� VO�� ���� �缳��
					vo.setAnimal_img1(oriFn);
					vo.setAnimal_img2(oriFn2);
					vo.setAnimal_img3(oriFn3);
					System.out.println("oriFn"+oriFn);
				} catch (IllegalStateException | IOException e) {
					e.printStackTrace();
				}
			}
			System.out.println("=====��Ȯ�μ�=====");
			System.out.println(vo.getAnimal_num());
			System.out.println(vo.getAnimal_age());
			System.out.println(vo.getAnimal_detail());
			System.out.println(vo.getAnimal_gender());
			System.out.println(vo.getAnimal_img1());
			System.out.println(vo.getAnimal_name());
			System.out.println(vo.getAnimal_num());
			System.out.println(vo.getCate_kind());
			System.out.println(vo.getMember_id());
			animalDaoInter.deleteAnimal2(id);
			animalDaoInter.addAnimal(vo);

			return "redirect:/animal/animalList";
		}
	
		@PostMapping(value = "/reForm")
		public String modifyaniaml(AnimalVO vo, HttpServletRequest request) {
			String img_path = "resources\\animalimage";
			String r_path = request.getRealPath("/");
			String oriFn = vo.getMfile().getOriginalFilename();
			String oriFn2 = vo.getMfile2().getOriginalFilename();
			String oriFn3 = vo.getMfile3().getOriginalFilename();
			if(oriFn.length() == 0 && oriFn2.length() == 0 && oriFn3.length() == 0) {
				oriFn = "noimage.jpg";
				vo.setAnimal_img1(oriFn);
				vo.setAnimal_img2(oriFn);
				vo.setAnimal_img3(oriFn);
			} else {
				StringBuffer path = new StringBuffer();
				path.append(r_path).append(img_path).append("\\");
				path.append(oriFn);
				
				StringBuffer path2 = new StringBuffer();
				path2.append(r_path).append(img_path).append("\\");
				path2.append(oriFn2);
				
				StringBuffer path3 = new StringBuffer();
				path3.append(r_path).append(img_path).append("\\");
				path3.append(oriFn3);
				
				File f = new File(path.toString());
				File f2 = new File(path2.toString());
				File f3 = new File(path3.toString());
			
				try {
					vo.getMfile().transferTo(f);
					vo.getMfile2().transferTo(f2);
					vo.getMfile3().transferTo(f3);
					vo.setAnimal_img1(oriFn);
					vo.setAnimal_img2(oriFn2);
					vo.setAnimal_img3(oriFn3);
				} catch (IllegalStateException | IOException e) {
					e.printStackTrace();
				}
			}
			System.out.println("-----------------------"+vo.getAnimal_num());
			animalDaoInter.updateAnimal(vo);
			
			return "redirect:/animal/animalList";
			//="+vo.getAnimal_num();
		}
		
		
	//@RequestParam("member_id")
		@RequestMapping(value = "/animalList")
		public ModelAndView animalList(Model m, HttpSession session) {
			ModelAndView mav = new ModelAndView();
			
			String id = (String) session.getAttribute("sessionID");
			
	System.out.println("Ȯ���� �غ���"+id);
			
			AnimalVO vo = animalDaoInter.detailAnimal2(id);
			
			mav.addObject("vo", vo);
			
			System.out.println("====Ȯ�μ�======");
			System.out.println(vo.getAnimal_img1());
			System.out.println(vo.getAnimal_img2());
			System.out.println(vo.getAnimal_img3());
			

			if(vo.getAnimal_img1().equals("aidog.jpg") && vo.getAnimal_img2().equals("aidog.jpg") && vo.getAnimal_img3().equals("aidog.jpg")) {
				mav.setViewName("animal/animalList");
			}
			else{
				mav.setViewName("animal/animalList2");
			}
			
			return mav;
		}
		
		/*@RequestMapping("/reFormForm")
		public String reFormForm(Model m) {
			
			return "animal/reForm";
		}*/
		
		@GetMapping(value = "/detail")
		public ModelAndView detailAnimal(int anum) {
			ModelAndView mav = new ModelAndView();
			AnimalVO vo = animalDaoInter.detailAnimal(anum);
			mav.addObject("vo", vo);
			mav.setViewName("animal/detail");
			return mav;
		}
		
		@GetMapping(value = "/delet")
		public String deleteAnimal(@RequestParam("member_id") String id) {
			animalDaoInter.deleteAnimal2(id);
			MemberVO mvo = memberDaoInter.getDetail2(id);
			AnimalVO vo = pointService.addAnimalMini(mvo);
			animalDaoInter.addAnimal(vo);
			return "redirect:/animal/animalList";
		}
		
		@RequestMapping("/reFormForm")
		public String reFormFrom(Model m, HttpSession session) {
			String id = (String) session.getAttribute("sessionID");
			AnimalVO vo = animalDaoInter.detailAnimal2(id);
			m.addAttribute("vo", vo);
			
			return "animal/reForm";
		}
		
//		@PostMapping(value = "/reForm")
//		public ModelAndView updateRoom(AnimalVO vo) {
//			ModelAndView mav = new ModelAndView();
//			
//			animalDaoInter.updateAnimal(vo);
//			mav.setViewName("redirect:/animal/animalList");
//			return mav;
//		}
		
		
		
//		@GetMapping(value = "/commDel")
//		   public ModelAndView commDel(HttpSession session, @RequestParam("renum")int renum) {
//		      ModelAndView mav = new ModelAndView();
//		      ReviewVO vo = reviewCommDaoInter.rcdetail(renum);
//		      String aaname = vo.getComm().getAdmin().getAname(); // ����ۼ��� �������� �̸�
//		      String aname = (String) session.getAttribute("sessionname"); //�α����� �������� �̸�
//		      //System.out.println("aaname : "+aaname);
//		      //System.out.println("aname : "+aname);
//		      if (aname.equals(aaname)) {
//		         reviewCommDaoInter.delRC(renum);
//		         mav.setViewName("redirect:/manager/comm/rcommList");
//		      }else {
//		         mav.setViewName("manager/error/paramException");
//		         mav.addObject("emsg", "�ۼ��� �����ڸ� ������ �� �ֽ��ϴ�.");
//		      }
//		      return mav;
//		   }
	
}
