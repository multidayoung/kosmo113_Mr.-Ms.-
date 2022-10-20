package kr.co.animal.vo;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class IBoardDTO {
	private int board_num;
	private String member_id;
	private String board_title;
	private String board_img;
	private String board_cont;
	private int board_hit;
	private String board_date;
	private int r_num;
	private List<IBoardCommDTO> iBoardCommDTO;
	
	private AnimalVO animal;
	
	

	public AnimalVO getAnimal() {
		return animal;
	}

	public void setAnimal(AnimalVO animal) {
		this.animal = animal;
	}

	// spring web에서 제공해주는 multpart.MultipartFile
	private MultipartFile mfile;

	public MultipartFile getMfile() {
		return mfile;
	}

	public void setMfile(MultipartFile mfile) {
		this.mfile = mfile;
	}
	
	public String getBoard_img() {
		return board_img;
	}

	public void setBoard_img(String board_img) {
		this.board_img = board_img;
	}

	public List<IBoardCommDTO> getiBoardCommDTO() {
		return iBoardCommDTO;
	}

	public void setiBoardCommDTO(List<IBoardCommDTO> iBoardCommDTO) {
		this.iBoardCommDTO = iBoardCommDTO;
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

	public String getBoard_title() {
		return board_title;
	}

	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}

	public String getBoard_cont() {
		return board_cont;
	}

	public void setBoard_cont(String board_cont) {
		this.board_cont = board_cont;
	}

	public int getBoard_hit() {
		return board_hit;
	}

	public void setBoard_hit(int board_hit) {
		this.board_hit = board_hit;
	}

	public String getBoard_date() {
		return board_date;
	}

	public void setBoard_date(String board_date) {
		this.board_date = board_date;
	}

	public int getR_num() {
		return r_num;
	}

	public void setR_num(int r_num) {
		this.r_num = r_num;
	}
}
