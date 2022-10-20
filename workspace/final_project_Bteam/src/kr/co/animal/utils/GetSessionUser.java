package kr.co.animal.utils;

import javax.servlet.http.HttpSession;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

public class GetSessionUser {
	public static String getUser() {
		ServletRequestAttributes servletRequestAttributes = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
		HttpSession httpSession = servletRequestAttributes.getRequest().getSession(true);
		
		return (String) httpSession.getAttribute("sessionID");
		
	}
}
