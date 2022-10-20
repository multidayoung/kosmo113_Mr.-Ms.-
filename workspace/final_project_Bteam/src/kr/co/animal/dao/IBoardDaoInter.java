package kr.co.animal.dao;

import java.util.List;
import java.util.Map;

import kr.co.animal.vo.IBoardCommDTO;
import kr.co.animal.vo.IBoardDTO;


public interface IBoardDaoInter {
	// 게시판
	public List<IBoardDTO> getList(Map<String, Integer> map);
	public IBoardDTO detail(int board_num); // 글 상세보기
	public void addIBoard(IBoardDTO ibvo);  // 글작성
	public void updateIBoard(IBoardDTO ibvo);   // 글 수정
	public void delIBoard(int board_num);   // 글 삭제
	public int getCnt();  // 글 총 조회수
	public void iboardCnt(int board_num);  // 글 조회수
	
	//댓글
	public void addIReply(IBoardCommDTO bcvo);  // 댓글입력
	public List<IBoardCommDTO> showIReply(int board_num); // 댓글조회
	public void upIReply(IBoardCommDTO bcvo);  // 댓글수정
	public void delIReply(int board_content_num);  // 댓글삭제

	// 검색
	public List<IBoardDTO> getIBoardSearchList(Map<String, Object> map);
	public int getContentSearchCnt(Map<String, Object> map);

}
