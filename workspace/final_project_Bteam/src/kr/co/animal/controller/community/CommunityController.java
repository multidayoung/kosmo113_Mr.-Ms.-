package kr.co.animal.controller.community;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.xml.stream.events.EndDocument;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.animal.controller.api.Friend_Recomm_API;
import kr.co.animal.dao.CommunityDaoInter;
import kr.co.animal.vo.AnimalVO;
import kr.co.animal.vo.FriendsVO;

@Controller
@RequestMapping(value = "/community")
public class CommunityController {
	@Autowired
	private CommunityDaoInter communityDaoInter;
	
	@Autowired
	private Friend_Recomm_API friend_Recomm_API;
	
	private int nowPage = 1; // 현재 페이지 값
	private int nowBlock = 1; // 현재 블럭
	private int totalRecord = 0; // 총 게시물 수   
	private int numPerPage = 10; // 한 페이지당 보여질 게시물 수
	private int pagePerBlock = 5; // 한 블럭당 보여질 페이지 수
	private int totalPage = 0; // 전체 페이지 수 => totalRecord/numPerPage
	private int totalBlock = 0; // 전체 블럭 수   
	private int beginPerPage = 0; // 각 페이지별 시작 게시물의 index값
	private int endPerPage = 0; // 각 페이지별 마지막 게시물의 index값
	
	// 목록
	@RequestMapping(value = "/communitylist")
	public ModelAndView communityList(Model m,HttpSession session,@RequestParam("cPage") int s_page) {
		ModelAndView mav = new ModelAndView();
		String member_id = (String) session.getAttribute("sessionID");
		System.out.println(member_id);
		List<Map<String, Object>> recommendlist = friend_Recomm_API.restPlatform(member_id, "http://192.168.0.113:9003/friends_recomm/recomm");
	      System.out.println("jsonRes => "+recommendlist);
	      mav.addObject("recommendlist", recommendlist);
		totalRecord = communityDaoInter.getCnt();
	    totalPage = (int) Math.ceil(totalRecord/(double)numPerPage);
	    totalBlock = (int) Math.ceil((double) totalPage/pagePerBlock);
	    if(s_page != 0){
	    	nowPage = s_page;
	    }

	    beginPerPage = (nowPage - 1) * numPerPage + 1;
	    endPerPage = (beginPerPage-1) + numPerPage;
	    
		AnimalVO vo = new AnimalVO();
		
		System.out.println("로그인한 아이디:"+member_id);
		vo.setMember_id(member_id);
		vo.setBegin(beginPerPage);
		vo.setEnd(endPerPage);
		
		List<AnimalVO> communitylist = communityDaoInter.communityList(vo);
		mav.addObject("communitylist", communitylist);
		
		int startPage = (int)((nowPage-1)/pagePerBlock)*pagePerBlock+1;
		int endPage = startPage + pagePerBlock - 1;
		if(endPage > totalPage){
			endPage = totalPage;
		}
		
		mav.addObject("startPage", startPage);
		mav.addObject("endPage", endPage);
		mav.addObject("nowPage", nowPage);
		mav.addObject("pagePerBlock", pagePerBlock);
		mav.addObject("totalPage",totalPage);
		mav.setViewName("community/communitylist");
		return mav;
	}
	
	// 목록 - 개
	@RequestMapping(value = "/communitylist_dog")
	public ModelAndView communityListDog(Model m,HttpSession session,@RequestParam("cPage") int s_page) {
		ModelAndView mav = new ModelAndView();
		String member_id = (String) session.getAttribute("sessionID");
		List<Map<String, Object>> recommendlist = friend_Recomm_API.restPlatform(member_id, "http://192.168.0.113:9003/friends_recomm/recomm");
	      System.out.println("jsonRes => "+recommendlist);
	      mav.addObject("recommendlist", recommendlist);
		totalRecord = communityDaoInter.getCntDog();
	    totalPage = (int) Math.ceil(totalRecord/(double)numPerPage);
	    totalBlock = (int) Math.ceil((double) totalPage/pagePerBlock);
	    if(s_page != 0){
	    	nowPage = s_page;
	    }

	    beginPerPage = (nowPage - 1) * numPerPage + 1;
	    endPerPage = (beginPerPage-1) + numPerPage;
	    
		AnimalVO vo = new AnimalVO();
		vo.setMember_id(member_id);
		vo.setBegin(beginPerPage);
		vo.setEnd(endPerPage);
	
		
		List<AnimalVO> communitylist_dog = communityDaoInter.communityListDog(vo);
		mav.addObject("communitylist_dog", communitylist_dog);
		
		int startPage = (int)((nowPage-1)/pagePerBlock)*pagePerBlock+1;
		int endPage = startPage + pagePerBlock - 1;
		if(endPage > totalPage){
			endPage = totalPage;
		}
		
		mav.addObject("startPage", startPage);
		mav.addObject("endPage", endPage);
		mav.addObject("nowPage", nowPage);
		mav.addObject("pagePerBlock", pagePerBlock);
		mav.addObject("totalPage",totalPage);
		mav.setViewName("community/communitylist_dog");
		return mav;
	}
	
	// 목록 - 고양이
	@RequestMapping(value = "/communitylist_cat")
	public ModelAndView communityListCat(Model m,HttpSession session,@RequestParam("cPage") int s_page) {
		ModelAndView mav = new ModelAndView();
		String member_id = (String) session.getAttribute("sessionID");
		List<Map<String, Object>> recommendlist = friend_Recomm_API.restPlatform(member_id, "http://192.168.0.113:9003/friends_recomm/recomm");
	      System.out.println("jsonRes => "+recommendlist);
	      mav.addObject("recommendlist", recommendlist);
		totalRecord = communityDaoInter.getCntCat();
	    totalPage = (int) Math.ceil(totalRecord/(double)numPerPage);
	    totalBlock = (int) Math.ceil((double) totalPage/pagePerBlock);
	    if(s_page != 0){
	    	nowPage = s_page;
	    }

	    beginPerPage = (nowPage - 1) * numPerPage + 1;
	    endPerPage = (beginPerPage-1) + numPerPage;
	    
		AnimalVO vo = new AnimalVO();
		vo.setMember_id(member_id);
		vo.setBegin(beginPerPage);
		vo.setEnd(endPerPage);
		
		List<AnimalVO> communitylist_cat = communityDaoInter.communityListCat(vo);
		mav.addObject("communitylist_cat", communitylist_cat);
		
		int startPage = (int)((nowPage-1)/pagePerBlock)*pagePerBlock+1;
		int endPage = startPage + pagePerBlock - 1;
		if(endPage > totalPage){
			endPage = totalPage;
		}
		
		mav.addObject("startPage", startPage);
		mav.addObject("endPage", endPage);
		mav.addObject("nowPage", nowPage);
		mav.addObject("pagePerBlock", pagePerBlock);
		mav.addObject("totalPage",totalPage);
		mav.setViewName("community/communitylist_cat");
		return mav;
	}
	
	// 상세
	@GetMapping(value = "/communitydetail")
	public ModelAndView communityDetail(HttpSession session, @RequestParam("anum") int anum,@RequestParam("friendId") String friendId) {		
		ModelAndView mav = new ModelAndView();
		FriendsVO fvo = new FriendsVO();
		String userid = (String) session.getAttribute("sessionID");
		fvo.setFriends_userid(userid);
		fvo.setFriends_friendid(friendId);
		int num = communityDaoInter.checkfriends(fvo);
		System.out.println(num);
		AnimalVO vo = communityDaoInter.communityDetail(anum);
		mav.addObject("vo", vo);
		mav.addObject("nowPage", nowPage);
		mav.addObject("chkfriends", num);
		mav.setViewName("community/communitydetail");
		return mav;
	}
	
}
