package kr.co.animal.dao;

import java.util.List;
import java.util.Map;

import kr.co.animal.vo.IBoardCommDTO;
import kr.co.animal.vo.IBoardDTO;


public interface IBoardDaoInter {
	// �Խ���
	public List<IBoardDTO> getList(Map<String, Integer> map);
	public IBoardDTO detail(int board_num); // �� �󼼺���
	public void addIBoard(IBoardDTO ibvo);  // ���ۼ�
	public void updateIBoard(IBoardDTO ibvo);   // �� ����
	public void delIBoard(int board_num);   // �� ����
	public int getCnt();  // �� �� ��ȸ��
	public void iboardCnt(int board_num);  // �� ��ȸ��
	
	//���
	public void addIReply(IBoardCommDTO bcvo);  // ����Է�
	public List<IBoardCommDTO> showIReply(int board_num); // �����ȸ
	public void upIReply(IBoardCommDTO bcvo);  // ��ۼ���
	public void delIReply(int board_content_num);  // ��ۻ���

	// �˻�
	public List<IBoardDTO> getIBoardSearchList(Map<String, Object> map);
	public int getContentSearchCnt(Map<String, Object> map);

}
