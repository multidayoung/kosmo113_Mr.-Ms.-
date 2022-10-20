package kr.co.animal.dao;

import java.util.List;

import kr.co.animal.vo.OrdersVO;
import kr.co.animal.vo.ReviewsVO;

public interface ReviewDaoInter {
	
	
	
	
	public void addReview(ReviewsVO vo); 
	public List<ReviewsVO> getReview(int i_no);
	public int chkReviews(ReviewsVO vo);
	public int chkStatus(OrdersVO vo);

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	//	public int chkReviews(ReviewsVO vo);
}
