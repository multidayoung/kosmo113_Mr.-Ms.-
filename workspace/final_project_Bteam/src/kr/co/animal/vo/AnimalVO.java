package kr.co.animal.vo;

import org.springframework.web.multipart.MultipartFile;

public class AnimalVO {
	private int animal_num; // ��ȣ
	private String member_id; // ȸ�����̵�
	private String animal_name; // �̸�
	private int animal_age; // ����
	private String animal_gender; // ����
	private String cate_species; // �� ī�װ�
	private String cate_kind; // ǰ��
	private String animal_img1; // ����
	private String animal_img2;
	private String animal_img3;
	private String animal_detail; // Ư¡
	
	// spring web���� �������ִ� multpart.MultipartFile
	private MultipartFile mfile;
	private MultipartFile mfile2;
	private MultipartFile mfile3;
	
	// ����¡ ó���� ���� ���������� ��������
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
