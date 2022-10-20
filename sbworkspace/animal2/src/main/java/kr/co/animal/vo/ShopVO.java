package kr.co.animal.vo;

import org.apache.ibatis.type.Alias;

@Alias("svo")
public class ShopVO {

	private int shopping_mall_num;
	private String shopping_mall_name;
	private String shopping_mall_url;
	private String shopping_mall_img;
	private String shopping_mall_cate;
	
	// 검색필터
	private String type; //검색 타입
	private String keyword; // 검색 내용
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public int getShopping_mall_num() {
		return shopping_mall_num;
	}
	public void setShopping_mall_num(int shopping_mall_num) {
		this.shopping_mall_num = shopping_mall_num;
	}
	public String getShopping_mall_name() {
		return shopping_mall_name;
	}
	public void setShopping_mall_name(String shopping_mall_name) {
		this.shopping_mall_name = shopping_mall_name;
	}
	public String getShopping_mall_url() {
		return shopping_mall_url;
	}
	public void setShopping_mall_url(String shopping_mall_url) {
		this.shopping_mall_url = shopping_mall_url;
	}
	public String getShopping_mall_img() {
		return shopping_mall_img;
	}
	public void setShopping_mall_img(String shopping_mall_img) {
		this.shopping_mall_img = shopping_mall_img;
	}
	public String getShopping_mall_cate() {
		return shopping_mall_cate;
	}
	public void setShopping_mall_cate(String shopping_mall_cate) {
		this.shopping_mall_cate = shopping_mall_cate;
	}
	
	
}
