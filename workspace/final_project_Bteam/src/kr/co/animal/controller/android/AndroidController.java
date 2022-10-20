package kr.co.animal.controller.android;


import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;


import kr.co.animal.dao.CommunityDaoInter;
import kr.co.animal.dao.MemberDaoInter;
import kr.co.animal.dao.MypageDaoInter;
import kr.co.animal.service.point.PointService;
import kr.co.animal.vo.AndroidRecomMember;
import kr.co.animal.vo.FriendsVO;
import kr.co.animal.vo.MemberVO;

@RestController
public class AndroidController {
   
   @Autowired
   private MemberDaoInter memberDao;
   
   @Autowired
   private MypageDaoInter mypageDao;
   
   @Autowired
   private CommunityDaoInter communityDao;
   
   @Autowired
   private PointService pointService;

   
   @RequestMapping(value = "joinFromAndroid", produces = "application/json",method = RequestMethod.POST)
   public String joinFromAndroid(@RequestBody MemberVO memberVO) {
      
      System.out.println("주소 : " + memberVO.getMember_addr());
      System.out.println("사용자 아이디 : " +memberVO.getMember_id());//이때 받아온 아이디값이 테이블에 저장되어있지 않으면 새로 등록/있으면 등록 x
      System.out.println("사용자 나이 : " + memberVO.getMember_age());
      System.out.println("날짜 : sysdate로 넣을거라 null나옴 : " + memberVO.getMember_date());
      System.out.println("성별 : " + memberVO.getMember_gender());
      System.out.println("전화번호 : " + memberVO.getMember_phone());
      System.out.println("비밀 번호 : " + memberVO.getMember_pwd());
      System.out.println("사용자 이메일 : "+memberVO.getMember_email());
      System.out.println("사용자 이름 : "+memberVO.getMember_name());
      
      MemberVO test = memberDao.loginAndroid(memberVO);
      if(test ==null) {
    	  //받을 이미지 경로
          String httpUrl = memberVO.getMember_img();
           //저장경로
          String outputDir ="D:\\iKosmo113\\spring\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\final_project_Bteam_오전\\resources\\member";

         URL url;
         try {
            FileOutputStream fos = new FileOutputStream(outputDir+"\\호랑이.jpg");
            url = new URL(httpUrl);
            URLConnection urlConnection = url.openConnection();
            InputStream is = urlConnection.getInputStream();
            
            byte[] buffer = new byte[1024];
            int readBytes;
            while ((readBytes = is.read(buffer)) != -1) {
               fos.write(buffer, 0, readBytes);
               
               
            }

         } catch (Exception e) {
            e.printStackTrace();
         }
  
      //정보가 없으면 회원가입
         memberDao.addMember(memberVO);
      }
      //카카오 로그인시 주소,나이 ,등등 몇개 항목 받아올수가 없음.
      //뭐 로그인은 그냥 대충 보여주기 식으로만 진행할테니 네이버만 쓰는 방향으로 
      //성공시 return "success"
      
      //실패시 return "false"
      return "success";
   }
   
   @RequestMapping(value = "loginSpring", produces = "application/json",method = RequestMethod.POST)
   public MemberVO loginSpring(@RequestBody MemberVO memberVO) {
      MemberVO test = memberDao.loginAndroid(memberVO);
      if(test !=null) {
         return test;
      }
      return null;
   }
    
   @RequestMapping(value = "androidfreindslist1", produces = "application/json",method = RequestMethod.POST)
   public ArrayList<MemberVO> androidfreindlist1(@RequestBody String member_id) {
	   System.out.println(member_id);    // "member_id" 이렇게 전달돼서 아래에서 큰따옴표 제거해줌
	   String id = member_id.replaceAll("\"", "");
  
	   ArrayList<MemberVO> arrayList = new ArrayList<MemberVO>();
	   List<MemberVO> friend_list = mypageDao.Androidfriendslist(id);
	   for (MemberVO e : friend_list) {
		   System.out.println("id"+e.getMember_id());
		   System.out.println("name"+e.getMember_name());
		   System.out.println("img"+e.getMember_img());
		   arrayList.add(e);
	   }
	   return arrayList;
   }
   
   
   
   @RequestMapping(value = "androidfreindslist", produces = "application/json", method = RequestMethod.POST)
   public Map<String, ArrayList<Object>> androidfreindlist(@RequestBody String member_id) {
	   System.out.println(member_id);    // "member_id" 이렇게 전달돼서 아래에서 큰따옴표 제거해줌
	   String id = member_id.replaceAll("\"", "");
	   
	   Map<String, ArrayList<Object>> map = new HashMap<>();
	   
	   ArrayList<Object> arrayList = new ArrayList<Object>();
	    
	   List<MemberVO> friend_list = mypageDao.Androidfriendslist(id);
	   
	   for (MemberVO e : friend_list) {
		   Map<String, String> map2 = new HashMap<String, String>();
		   System.out.println("id:"+e.getMember_id());
		   map2.put("member_id", e.getMember_id());
		   System.out.println("name:"+e.getMember_name());
		   map2.put("member_name", e.getMember_name());
		   System.out.println("img:"+e.getMember_img());
		   map2.put("member_img", e.getMember_img().replaceAll("/", "/"));
		   System.out.println("friends_status:"+e.getFriends_status());
		   map2.put("friends_status", e.getFriends_status());
		   System.out.println("-----------------------------"+e);
		   arrayList.add(map2);
	   }
	   
	   map.put("myFriend", arrayList);
	   
	   ArrayList<Object> arrayList2 = new ArrayList<Object>();
	   List<AndroidRecomMember> recomList = communityDao.androidRecomMember(id);
	   System.out.println(recomList);
	   for(AndroidRecomMember e : recomList) {
		   System.out.println("animalIMG=>"+e.getanimal_img1());
		   System.out.println("MemIMG=>"+e.getMember_img());
		   arrayList2.add(e);
	   }
	   
	   
	   map.put("recomFriend", arrayList2);
	   return map;
   }
   
   
   @RequestMapping(value = "androidFriendDetail",produces = "application/json",method = RequestMethod.POST)
   public String androidFriendDetail(@RequestBody String member_id) {
	   System.out.println(member_id);    // "member_id" 이렇게 전달돼서 아래에서 큰따옴표 제거해줌
	   String id = member_id.replaceAll("\"", "");
	   String animal_img1 = mypageDao.androidFriendDetail(id);
	   System.out.println("친구이미지=>"+animal_img1);
	   return animal_img1;
   }
   
   @RequestMapping(value = "androidFriendRequest",produces = "application/json",method = RequestMethod.POST)
   public String addFriend(@RequestBody ArrayList<String> id_list) {
	   	String my_id = id_list.get(0);
	   	System.out.println();
	   	String user_id = id_list.get(1);
	   	System.out.println("친구요청 : 친구아이디:"+user_id);
		System.out.println("친구요청 : 내아이디:"+my_id);
		FriendsVO vo = new FriendsVO();
		vo.setFriends_userid(my_id);
		vo.setFriends_friendid(user_id);		
		int num = communityDao.statfriends(vo);
		if (num==0) {
			vo.setFriends_status("대기");
			communityDao.addFriends(vo);		
			String status = vo.getFriends_status();
			return status;
		} else {
			String status = "몰라";
			return status;
		}	
	}
   
   @RequestMapping(value = "androidFriendApp", produces = "application/json",method = RequestMethod.POST)
   public String androidFriendApp(@RequestBody ArrayList<String> id_list) {
	   FriendsVO vo = new FriendsVO();
	   String my_id = id_list.get(0);
	   String fid = id_list.get(1);
	   vo.setFriends_userid(fid);
	   vo.setFriends_friendid(my_id);
	   mypageDao.responseOk(vo);
	   System.out.println("요청받은친구수락=> 친구아이디:"+fid);
	   System.out.println("요청받은친구수락 => 내아이디:"+my_id);
	   return "success";
   }
   
   @RequestMapping(value = "androidRejectFriend", produces = "application/json",method = RequestMethod.POST)
   public String androidRejectFriend(@RequestBody ArrayList<String> id_list) {
	   FriendsVO vo = new FriendsVO();
	   String my_id = id_list.get(0);
	   String fid = id_list.get(1);
	   vo.setFriends_userid(fid);
	   vo.setFriends_friendid(my_id);
	   mypageDao.responseNo(vo);
	   System.out.println("요청받은친구거절=> 친구아이디:"+fid);
	   System.out.println("요청받은친구거절 => 내아이디:"+my_id);
	   return "success";
   }
   
   @RequestMapping(value = "androidFriendDelete",produces = "application/json",method = RequestMethod.POST)
   public String friendsCancel(@RequestBody ArrayList<String> id_list) {
	   	String my_id = id_list.get(0);
	   	String user_id = id_list.get(1);
		//String friendId = user_id.split("=")[1];
		System.out.println("친구아이디:"+user_id);
		System.out.println("내아이디:"+my_id);
		FriendsVO vo = new FriendsVO();
		vo.setFriends_friendid(user_id);
		vo.setFriends_userid(my_id);
		mypageDao.friendsDel(vo);
		return "success";
	}
   
   @RequestMapping(value = "androidPointGet", produces = "application/json",method = RequestMethod.POST)
   public String androidPointGet(@RequestBody ArrayList<Object> id_line) {
	   System.out.println("산책길등록하자");
	   pointService.addtrailPoint(id_line);
	   // 0 아이디 1 거리
	   //int타입으로 km단위 보내줌. km당 10포인트
	   
	   return "success"; 
   }
   
      
}