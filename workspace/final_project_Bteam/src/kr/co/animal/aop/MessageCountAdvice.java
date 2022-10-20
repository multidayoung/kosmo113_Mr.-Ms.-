package kr.co.animal.aop;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import kr.co.animal.dao.CommunityDaoInter;
import kr.co.animal.utils.GetSessionUser;

@Component
@Aspect
public class MessageCountAdvice {

	@Autowired
	private CommunityDaoInter communityDaoInter;
	
	private int msgcnt = 0;
	
	@Before("execution(* kr.co.animal.controller.*.*Controller.*List*(..))")
	public void messageCount(JoinPoint jp) {
		
		Object[] args = jp.getArgs();
		//String member_id = (String) ((HttpSession) args[1]).getAttribute("sessionID");
		String member_id = GetSessionUser.getUser();
		if(member_id != null) {
			System.out.println("���� ���� ���̿��� �α����� ���̵�:"+member_id);
			Model m = (Model) args[0];
			msgcnt = communityDaoInter.messageCount(member_id);
			System.out.println("�α����� ���̵� ������ �޽���:"+msgcnt);
			m.addAttribute("msgcnt",msgcnt);
		}
	}
}
