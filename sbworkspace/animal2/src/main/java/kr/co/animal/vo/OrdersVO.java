package kr.co.animal.vo;

import org.apache.ibatis.type.Alias;

@Alias("ovo")
public class OrdersVO {
	private int ord_no;
	private int mem_id;
	private int i_no;
	private int ord_count;
	private int totalPrice;
	private int r_num;
	private int ordCnt;
	private int rcnt;
	private String i_status;
	private String ord_address;
	private String ord_name;
	private String ord_date;
	private String ord_edate;
	private String ordTotalCnt;
	
	
	public int getOrd_no() {
		return ord_no;
	}
	public void setOrd_no(int ord_no) {
		this.ord_no = ord_no;
	}
	public int getMem_id() {
		return mem_id;
	}
	public void setMem_id(int mem_id) {
		this.mem_id = mem_id;
	}
	public int getI_no() {
		return i_no;
	}
	public void setI_no(int i_no) {
		this.i_no = i_no;
	}
	public int getOrd_count() {
		return ord_count;
	}
	public void setOrd_count(int ord_count) {
		this.ord_count = ord_count;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	public int getR_num() {
		return r_num;
	}
	public void setR_num(int r_num) {
		this.r_num = r_num;
	}
	public int getOrdCnt() {
		return ordCnt;
	}
	public void setOrdCnt(int ordCnt) {
		this.ordCnt = ordCnt;
	}
	public int getRcnt() {
		return rcnt;
	}
	public void setRcnt(int rcnt) {
		this.rcnt = rcnt;
	}
	public String getI_status() {
		return i_status;
	}
	public void setI_status(String i_status) {
		this.i_status = i_status;
	}
	public String getOrd_address() {
		return ord_address;
	}
	public void setOrd_address(String ord_address) {
		this.ord_address = ord_address;
	}
	public String getOrd_name() {
		return ord_name;
	}
	public void setOrd_name(String ord_name) {
		this.ord_name = ord_name;
	}
	public String getOrd_date() {
		return ord_date;
	}
	public void setOrd_date(String ord_date) {
		this.ord_date = ord_date;
	}
	public String getOrd_edate() {
		return ord_edate;
	}
	public void setOrd_edate(String ord_edate) {
		this.ord_edate = ord_edate;
	}
	public String getOrdTotalCnt() {
		return ordTotalCnt;
	}
	public void setOrdTotalCnt(String ordTotalCnt) {
		this.ordTotalCnt = ordTotalCnt;
	}
	

	
}
