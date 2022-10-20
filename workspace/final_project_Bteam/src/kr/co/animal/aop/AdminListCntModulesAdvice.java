//package kr.co.animal.aop;
//
//
//import org.aspectj.lang.JoinPoint;
//import org.aspectj.lang.annotation.Aspect;
//import org.aspectj.lang.annotation.Before;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.ApplicationContext;
//import org.springframework.stereotype.Component;
//import org.springframework.web.servlet.ModelAndView;
//
//import kr.co.animal.dao.AdminListcountInter;
//import kr.co.animal.vo.SearchVO;
//
//@Component
//@Aspect
//public class AdminListCntModulesAdvice {
//
//	// PageListInter�� getBean�޾ƿ��� ���ؼ�
//	@Autowired
//	private ApplicationContext applicationContext;
//	
//	@Before("execution(* kr.co.animal.controller.*.*Controller.admin*List(..))")
//	public void allCountModule(JoinPoint jp) {
//		// ------------ ����ó�� ����
//		Object[] args = jp.getArgs();
//
//		// ù��° ���� : SearchVO, �ι�° ���� : ModelAndView cPage
//		SearchVO svo =  (SearchVO) args[0];
//		ModelAndView mav = (ModelAndView) args[1];
//		System.out.println("advice category1 =>"+svo.getCategory());
//		System.out.println("advice search1 =>"+svo.getSearch());
//		
//		String myDao = jp.getSignature().getName();
//		System.out.println("myDao : "+myDao);
//		
//		AdminListcountInter adminListcountInter =  applicationContext.getBean(myDao, AdminListcountInter.class);
//		int cnt = adminListcountInter.getAllItemcount(svo);
//		System.out.println("advice cnt=>"+cnt);
//		System.out.println("advice category2 =>"+svo.getCategory());
//		System.out.println("advice search2 =>"+svo.getSearch());
//		if (svo.getCategory() != "") {
//			mav.addObject("cMsg", svo.getCategory());
//		}else {
//			mav.addObject("cMsg","��");
//		}
//		mav.addObject("sMsg", svo.getSearch());
//		mav.addObject("cnt", cnt);
//	}
//}