package kr.co.animal.vo;

import org.apache.ibatis.type.Alias;

@Alias("cvo")
public class CateVO {

	private int cate_num;
	private String cate_species;
	private String cate_kind;
	private String cate_img;
	private String cate_detail;
	
	public int getCate_num() {
		return cate_num;
	}
	public void setCate_num(int cate_num) {
		this.cate_num = cate_num;
	}
	public String getCate_species() {
		return cate_species;
	}
	public void setCate_species(String cate_species) {
		this.cate_species = cate_species;
	}
	public String getCate_kind() {
		return cate_kind;
	}
	public void setCate_kind(String cate_kind) {
		this.cate_kind = cate_kind;
	}
	public String getCate_img() {
		return cate_img;
	}
	public void setCate_img(String cate_img) {
		this.cate_img = cate_img;
	}
	public String getCate_detail() {
		return cate_detail;
	}
	public void setCate_detail(String cate_detail) {
		this.cate_detail = cate_detail;
	}
	
	
}
