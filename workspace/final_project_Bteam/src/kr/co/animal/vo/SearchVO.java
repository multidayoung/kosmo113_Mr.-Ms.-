package kr.co.animal.vo;

public class SearchVO extends SuperDTO{
	private int beginPerPage;
	private int endPerPage;
	private int member_no;
	private String category;
	private String search;
	private String cPage;
	private String gender;
	private String searchreset;
	
	public SearchVO() {
		this.cPage = "1";
		this.search = "";
		this.category = "";
		this.searchreset = "";
	}
	
	public int getMember_no() {
		return member_no;
	}

	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}

	public String getSearchreset() {
		return searchreset;
	}

	public void setSearchreset(String searchreset) {
		this.searchreset = searchreset;
	}
	
	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getcPage() {
		return cPage;
	}

	public void setcPage(String cPage) {
		this.cPage = cPage;
	}

	public int getBeginPerPage() {
		return beginPerPage;
	}

	public void setBeginPerPage(int beginPerPage) {
		this.beginPerPage = beginPerPage;
	}

	public int getEndPerPage() {
		return endPerPage;
	}

	public void setEndPerPage(int endPerPage) {
		this.endPerPage = endPerPage;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}
}