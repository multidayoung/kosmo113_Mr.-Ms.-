package kr.co.animal.vo;

public class UserVO {
	private int user_no,member_no,total;
	private String user_gender,member_jubun,mgender,wgender,cgender;
	public int getUser_no() {
		return user_no;
	}
	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}
	public int getMember_no() {
		return member_no;
	}
	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}
	
	public String getMgender() {
		return mgender;
	}
	public void setMgender(String mgender) {
		this.mgender = mgender;
	}
	public String getWgender() {
		return wgender;
	}
	public void setWgender(String wgender) {
		this.wgender = wgender;
	}
	public String getCgender() {
		return cgender;
	}
	public void setCgender(String cgender) {
		this.cgender = cgender;
	}
	public String getUser_gender() {
		return user_gender;
	}
	public void setUser_gender(String user_gender) {
		this.user_gender = user_gender;
	}
	public String getmember_jubun() {
		return member_jubun;
	}
	public void setmember_jubun(String member_jubun) {
		this.member_jubun = member_jubun;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
}
