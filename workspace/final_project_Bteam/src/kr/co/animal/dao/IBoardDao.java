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
		
	
	// ����Ʈ
	@Override
	public List<IBoardDTO> getList(Map<String, Integer> map) {
		List<IBoardDTO> list = ss.selectList("iboard.list", map);
		return list;                // mapper��   namespace �̸� . sql���� id  
	}
	
	// �󼼺���
	@Override
	public IBoardDTO detail(int board_num) {
		IBoardDTO ibvo = ss.selectOne("iboard.idetail", board_num);
		return ibvo;
	}
	
	// �� �ۼ�	
	@Override
	public void addIBoard(IBoardDTO ibvo) {
		ss.insert("iboard.add", ibvo);
	}
	
	// �� ����
	@Override
	public void updateIBoard(IBoardDTO ibvo) {
		ss.update("iboard.iupdate", ibvo);
	}
	
	// �� ����
	@Override
	public void delIBoard(int board_num) {
		ss.delete("iboard.idel", board_num);
	}
	
	// �� �� ��ȸ�� ��ȸ
	@Override
	public int getCnt() {
		int totalCount = ss.selectOne("iboard.totalCount");
		return totalCount;
	}
	
	// �� ��ȸ�� �ø���	
	@Override
	public void iboardCnt(int board_num) {
		ss.update("iboard.board_hit", board_num);
	}

	// ���
	// ��� �Է�
	@Override
	public void addIReply(IBoardCommDTO bcvo) {
		ss.insert("iboard.ireply", bcvo);
	}
	
	// ��� ��ȸ
	@Override
	public List<IBoardCommDTO> showIReply(int board_num) {
		List<IBoardCommDTO> showIReply = ss.selectList("iboard.showIReply", board_num);	
		
		return showIReply;
	}

	// ��� ����
	@Override
	public void upIReply(IBoardCommDTO bcvo) {
		ss.update("iboard.upIReply", bcvo);		
	}

	// ��� ����
	@Override
	public void delIReply(int board_content_num) {
		ss.delete("iboard.delIReply", board_content_num);		
	}

	// �˻�
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
