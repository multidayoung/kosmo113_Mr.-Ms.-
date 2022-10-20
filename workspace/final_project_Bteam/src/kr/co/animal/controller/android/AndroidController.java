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
      
      System.out.println("�ּ� : " + memberVO.getMember_addr());
      System.out.println("����� ���̵� : " +memberVO.getMember_id());//�̶� �޾ƿ� ���̵��� ���̺� ����Ǿ����� ������ ���� ���/������ ��� x
      System.out.println("����� ���� : " + memberVO.getMember_age());
      System.out.println("��¥ : sysdate�� �����Ŷ� null���� : " + memberVO.getMember_date());
      System.out.println("���� : " + memberVO.getMember_gender());
      System.out.println("��ȭ��ȣ : " + memberVO.getMember_phone());
      System.out.println("��� ��ȣ : " + memberVO.getMember_pwd());
      System.out.println("����� �̸��� : "+memberVO.getMember_email());
      System.out.println("����� �̸� : "+memberVO.getMember_name());
      
      MemberVO test = memberDao.loginAndroid(memberVO);
      if(test ==null) {
    	  //���� �̹��� ���
          String httpUrl = memberVO.getMember_img();
           //������
          String outputDir ="D:\\iKosmo113\\spring\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\final_project_Bteam_����\\resources\\member";

         URL url;
         try {
            FileOutputStream fos = new FileOutputStream(outputDir+"\\ȣ����.jpg");
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
  
      //������ ������ ȸ������
         memberDao.addMember(memberVO);
      }
      //īī�� �α��ν� �ּ�,���� ,��� � �׸� �޾ƿü��� ����.
      //�� �α����� �׳� ���� �����ֱ� �����θ� �������״� ���̹��� ���� �������� 
      //������ return "success"
      
      //���н� return "false"
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
	   System.out.println(member_id);    // "member_id" �̷��� ���޵ż� �Ʒ����� ū����ǥ ��������
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
	   System.out.println(member_id);    // "member_id" �̷��� ���޵ż� �Ʒ����� ū����ǥ ��������
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
	   System.out.println(member_id);    // "member_id" �̷��� ���޵ż� �Ʒ����� ū����ǥ ��������
	   String id = member_id.replaceAll("\"", "");
	   String animal_img1 = mypageDao.androidFriendDetail(id);
	   System.out.println("ģ���̹���=>"+animal_img1);
	   return animal_img1;
   }
   
   @RequestMapping(value = "androidFriendRequest",produces = "application/json",method = RequestMethod.POST)
   public String addFriend(@RequestBody ArrayList<String> id_list) {
	   	String my_id = id_list.get(0);
	   	System.out.println();
	   	String user_id = id_list.get(1);
	   	System.out.println("ģ����û : ģ�����̵�:"+user_id);
		System.out.println("ģ����û : �����̵�:"+my_id);
		FriendsVO vo = new FriendsVO();
		vo.setFriends_userid(my_id);
		vo.setFriends_friendid(user_id);		
		int num = communityDao.statfriends(vo);
		if (num==0) {
			vo.setFriends_status("���");
			communityDao.addFriends(vo);		
			String status = vo.getFriends_status();
			return status;
		} else {
			String status = "����";
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
	   System.out.println("��û����ģ������=> ģ�����̵�:"+fid);
	   System.out.println("��û����ģ������ => �����̵�:"+my_id);
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
	   System.out.println("��û����ģ������=> ģ�����̵�:"+fid);
	   System.out.println("��û����ģ������ => �����̵�:"+my_id);
	   return "success";
   }
   
   @RequestMapping(value = "androidFriendDelete",produces = "application/json",method = RequestMethod.POST)
   public String friendsCancel(@RequestBody ArrayList<String> id_list) {
	   	String my_id = id_list.get(0);
	   	String user_id = id_list.get(1);
		//String friendId = user_id.split("=")[1];
		System.out.println("ģ�����̵�:"+user_id);
		System.out.println("�����̵�:"+my_id);
		FriendsVO vo = new FriendsVO();
		vo.setFriends_friendid(user_id);
		vo.setFriends_userid(my_id);
		mypageDao.friendsDel(vo);
		return "success";
	}
   
   @RequestMapping(value = "androidPointGet", produces = "application/json",method = RequestMethod.POST)
   public String androidPointGet(@RequestBody ArrayList<Object> id_line) {
	   System.out.println("��å��������");
	   pointService.addtrailPoint(id_line);
	   // 0 ���̵� 1 �Ÿ�
	   //intŸ������ km���� ������. km�� 10����Ʈ
	   
	   return "success"; 
   }
   
      
}