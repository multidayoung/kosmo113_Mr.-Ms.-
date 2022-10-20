package kr.co.animal.aop;
 
import org.aspectj.lang.JoinPoint; import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect; 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import kr.co.animal.dao.ItemDaoInter; import kr.co.animal.vo.SearchVO;

@Component
@Aspect public class ItemListCountAdvice {

	int itemCount = 0;

	@Autowired 
	private ItemDaoInter item;
	
	@After("execution(* kr.co.animal.controller.*.ItemController.*List(..))")
	public void listCountModule(JoinPoint jp) { Object[] args = jp.getArgs();
		Model model = (Model) args[0]; 
		SearchVO svo = (SearchVO) args[1];
		
		String search = svo.getSearch(); 
		itemCount = item.getCnt(svo);
		
		System.out.println(itemCount);
		
		model.addAttribute("search", search); model.addAttribute("itemCount",
		itemCount);
	} 
}
