package kr.co.animal.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Repository;

import kr.co.animal.vo.IBoardCommDTO;
import kr.co.animal.vo.IBoardDTO;


@Repository
public class IBoardDao implements IBoardDaoInter {
	
	@Autowired
	private SqlSessionTemplate ss;
	
	@Autowired
	private ApplicationContext ac;
		
	
	// 리스트
	@Override
	public List<IBoardDTO> getList(Map<String, Integer> map) {
		List<IBoardDTO> list = ss.selectList("iboard.list", map);
		return list;                // mapper의   namespace 이름 . sql문의 id  
	}
	
	// 상세보기
	@Override
	public IBoardDTO detail(int board_num) {
		IBoardDTO ibvo = ss.selectOne("iboard.idetail", board_num);
		return ibvo;
	}
	
	// 글 작성	
	@Override
	public void addIBoard(IBoardDTO ibvo) {
		ss.insert("iboard.add", ibvo);
	}
	
	// 글 수정
	@Override
	public void updateIBoard(IBoardDTO ibvo) {
		ss.update("iboard.iupdate", ibvo);
	}
	
	// 글 삭제
	@Override
	public void delIBoard(int board_num) {
		ss.delete("iboard.idel", board_num);
	}
	
	// 글 총 조회수 조회
	@Override
	public int getCnt() {
		int totalCount = ss.selectOne("iboard.totalCount");
		return totalCount;
	}
	
	// 글 조회수 올리기	
	@Override
	public void iboardCnt(int board_num) {
		ss.update("iboard.board_hit", board_num);
	}

	// 댓글
	// 댓글 입력
	@Override
	public void addIReply(IBoardCommDTO bcvo) {
		ss.insert("iboard.ireply", bcvo);
	}
	
	// 댓글 조회
	@Override
	public List<IBoardCommDTO> showIReply(int board_num) {
		List<IBoardCommDTO> showIReply = ss.selectList("iboard.showIReply", board_num);	
		
		return showIReply;
	}

	// 댓글 수정
	@Override
	public void upIReply(IBoardCommDTO bcvo) {
		ss.update("iboard.upIReply", bcvo);		
	}

	// 댓글 삭제
	@Override
	public void delIReply(int board_content_num) {
		ss.delete("iboard.delIReply", board_content_num);		
	}

	// 검색
	@Override
	public int getContentSearchCnt(Map<String, Object> map) {
		int cnt = ss.selectOne("iboard.ibsSearchCnt", map);
		return cnt;
	}

	@Override
	public List<IBoardDTO> getIBoardSearchList(Map<String, Object> map) {
		List<IBoardDTO> list = ss.selectList("iboard.iblSearch", map);
		return list;
	}

}
