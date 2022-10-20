package kr.co.animal.vo;

public class IBoardCommDTO {
	private int board_content_num;  // 댓글번호
	private int board_num;   // 글 번호
	private String member_id;  // 작성자
	private String board_content_cont;  //댓글 내용
	private String board_content_date;  // 댓글 날짜
	private int board_content_like;      // 좋아요
	private int board_content_hate;      // 싫어요
	
	
	public int getBoard_content_num() {
		return board_content_num;
	}
	public void setBoard_content_num(int board_content_num) {
		this.board_content_num = board_content_num;
	}
	public int getBoard_num() {
		return board_num;
	}
	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getBoard_content_cont() {
		return board_content_cont;
	}
	public void setBoard_content_cont(String board_content_cont) {
		this.board_content_cont = board_content_cont;
	}
	public String getBoard_content_date() {
		return board_content_date;
	}
	public void setBoard_content_date(String board_content_date) {
		this.board_content_date = board_content_date;
	}
	public int getBoard_content_like() {
		return board_content_like;
	}
	public void setBoard_content_like(int board_content_like) {
		this.board_content_like = board_content_like;
	}
	public int getBoard_content_hate() {
		return board_content_hate;
	}
	public void setBoard_content_hate(int board_content_hate) {
		this.board_content_hate = board_content_hate;
	}
}
