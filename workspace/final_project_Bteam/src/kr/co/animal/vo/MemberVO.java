package kr.co.animal.vo;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class MemberVO {
	private String member_id;
	private String member_name;
	private String member_pwd;
	private String member_gender;
	private int member_age;
	private String member_email;
	private String member_phone;
	private String member_addr;
	private String member_date;
	
	// android에서 사용
	private String friends_status;
	
	//private List<AnimalVO> animal;
	
	private MultipartFile mfile;
	private String member_img;

	//private int member_no;
	private List<MemberLogVO> memberlog;
	
	// 쪽지 rownum
	private int rownum;
	// 1대 1 
	private AnimalVO animal;
	// 1대 다
	private MessageVO message;
	
	
	
	public String getFriends_status() {
		return friends_status;
	}

	public void setFriends_status(String friends_status) {
		this.friends_status = friends_status;
	}

	public AnimalVO getAnimal() {
		return animal;
	}

	public int getRownum() {
		return rownum;
	}

	public void setRownum(int rownum) {
		this.rownum = rownum;
	}

	public void setAnimal(AnimalVO animal) {
		this.animal = animal;
	}

	public MessageVO getMessage() {
		return message;
	}

	public void setMessage(MessageVO message) {
		this.message = message;
	}

	public String getMember_img() {
		return member_img;
	}

	public void setMember_img(String member_img) {
		this.member_img = member_img;
	}
	
	public MultipartFile getMfile() {
		return mfile;
	}

	public void setMfile(MultipartFile mfile) {
		this.mfile = mfile;
	}

	public List<MemberLogVO> getMemberlog() {
		return memberlog;
	}

	public void setMemberlog(List<MemberLogVO> memberlog) {
		this.memberlog = memberlog;
	}


	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public String getMember_pwd() {
		return member_pwd;
	}

	public void setMember_pwd(String member_pwd) {
		this.member_pwd = member_pwd;
	}

	public String getMember_gender() {
		return member_gender;
	}

	public void setMember_gender(String member_gender) {
		this.member_gender = member_gender;
	}

	public int getMember_age() {
		return member_age;
	}

	public void setMember_age(int member_age) {
		this.member_age = member_age;
	}

	public String getMember_email() {
		return member_email;
	}

	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}

	public String getMember_phone() {
		return member_phone;
	}

	public void setMember_phone(String member_phone) {
		this.member_phone = member_phone;
	}

	public String getMember_addr() {
		return member_addr;
	}

	public void setMember_addr(String member_addr) {
		this.member_addr = member_addr;
	}

	public String getMember_date() {
		return member_date;
	}

	public void setMember_date(String member_date) {
		this.member_date = member_date;
	}
}
