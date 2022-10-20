package kr.co.animal.vo;

public class MessageVO {
	
	private int message_num;
	private String message_sendid;
	private String message_content;
	private String message_receiveid;
	private int message_readchk;
	private String message_date;
	

	public int getMessage_num() {
		return message_num;
	}
	public void setMessage_num(int message_num) {
		this.message_num = message_num;
	}
	public String getMessage_sendid() {
		return message_sendid;
	}
	public void setMessage_sendid(String message_sendid) {
		this.message_sendid = message_sendid;
	}
	public String getMessage_content() {
		return message_content;
	}
	public void setMessage_content(String message_content) {
		this.message_content = message_content;
	}
	public String getMessage_receiveid() {
		return message_receiveid;
	}
	public void setMessage_receiveid(String message_receiveid) {
		this.message_receiveid = message_receiveid;
	}
	public int getMessage_readchk() {
		return message_readchk;
	}
	public void setMessage_readchk(int message_readchk) {
		this.message_readchk = message_readchk;
	}
	public String getMessage_date() {
		return message_date;
	}
	public void setMessage_date(String message_date) {
		this.message_date = message_date;
	}
	
}
