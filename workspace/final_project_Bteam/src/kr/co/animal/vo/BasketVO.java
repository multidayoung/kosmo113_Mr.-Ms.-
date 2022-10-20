package kr.co.animal.vo;

public class BasketVO {
	private int b_num, member_no, i_no, b_stock, r_num;
	private String member_id;
	private MemberVO membervo;

	private ItemVO itemvo;
	private OrdersVO ordersvo;
	
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public int getB_num() {
		return b_num;
	}
	public void setB_num(int b_num) {
		this.b_num = b_num;
	}
	public int getMember_no() {
		return member_no;
	}
	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}
	public int getI_no() {
		return i_no;
	}
	public void setI_no(int i_no) {
		this.i_no = i_no;
	}
	public int getB_stock() {
		return b_stock;
	}
	public void setB_stock(int b_stock) {
		this.b_stock = b_stock;
	}
	public int getR_num() {
		return r_num;
	}
	public void setR_num(int r_num) {
		this.r_num = r_num;
	}
	public MemberVO getMembervo() {
		return membervo;
	}
	public void setMembervo(MemberVO membervo) {
		this.membervo = membervo;
	}
	public ItemVO getItemvo() {
		return itemvo;
	}
	public void setItemvo(ItemVO itemvo) {
		this.itemvo = itemvo;
	}
	public OrdersVO getOrdersvo() {
		return ordersvo;
	}
	public void setOrdersvo(OrdersVO ordersvo) {
		this.ordersvo = ordersvo;
	}
	
	
}
