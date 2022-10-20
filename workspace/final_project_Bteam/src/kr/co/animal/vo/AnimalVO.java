package kr.co.animal.vo;

import org.springframework.web.multipart.MultipartFile;

public class AnimalVO {
	private int animal_num; // 번호
	private String member_id; // 회원아이디
	private String animal_name; // 이름
	private int animal_age; // 나이
	private String animal_gender; // 성별
	private String cate_species; // 종 카테고리
	private String cate_kind; // 품종
	private String animal_img1; // 사진
	private String animal_img2;
	private String animal_img3;
	private String animal_detail; // 특징
	
	// spring web에서 제공해주는 multpart.MultipartFile
	private MultipartFile mfile;
	private MultipartFile mfile2;
	private MultipartFile mfile3;
	
	// 페이징 처리를 위한 시작페이지 끝페이지
   private int begin;  
   private int end;
   
   public int getBegin() {
      return begin;
   }
   
   public void setBegin(int begin) {
      this.begin = begin;
   }
	
   public int getEnd() {
		return end;
	}

	public void setEnd(int end) {
		this.end = end;
	}
	
	public MultipartFile getMfile() {
		return mfile;
	}

	public void setMfile(MultipartFile mfile) {
		this.mfile = mfile;
	}

	
	public MultipartFile getMfile2() {
		return mfile2;
	}

	public void setMfile2(MultipartFile mfile2) {
		this.mfile2 = mfile2;
	}

	public MultipartFile getMfile3() {
		return mfile3;
	}

	public void setMfile3(MultipartFile mfile3) {
		this.mfile3 = mfile3;
	}

	public int getAnimal_num() {
		return animal_num;
	}
	public void setAnimal_num(int animal_num) {
		this.animal_num = animal_num;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getAnimal_name() {
		return animal_name;
	}
	public void setAnimal_name(String animal_name) {
		this.animal_name = animal_name;
	}
	public int getAnimal_age() {
		return animal_age;
	}
	public void setAnimal_age(int animal_age) {
		this.animal_age = animal_age;
	}
	public String getAnimal_gender() {
		return animal_gender;
	}
	public void setAnimal_gender(String animal_gender) {
		this.animal_gender = animal_gender;
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

	public String getAnimal_img1() {
		return animal_img1;
	}

	public void setAnimal_img1(String animal_img1) {
		this.animal_img1 = animal_img1;
	}

	public String getAnimal_img2() {
		return animal_img2;
	}

	public void setAnimal_img2(String animal_img2) {
		this.animal_img2 = animal_img2;
	}

	public String getAnimal_img3() {
		return animal_img3;
	}

	public void setAnimal_img3(String animal_img3) {
		this.animal_img3 = animal_img3;
	}

	public String getAnimal_detail() {
		return animal_detail;
	}
	public void setAnimal_detail(String animal_detail) {
		this.animal_detail = animal_detail;
	}
}
