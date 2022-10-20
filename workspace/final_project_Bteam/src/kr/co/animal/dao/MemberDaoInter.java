package kr.co.animal.dao;

import kr.co.animal.vo.MemberVO;


public interface MemberDaoInter {
	//�ȵ���̵�
	public MemberVO loginAndroid(MemberVO vo);
	
	//��
	public MemberVO loginCheck(MemberVO dto);
	public void addMember(MemberVO dto);
	public int idcheck(String id);
	public MemberVO findId(MemberVO vo);
	public MemberVO findPassword(MemberVO vo);
	public void updatePassword(MemberVO vo);
	
	public MemberVO getDetail2(String member_id);
	public void updateMember(MemberVO vo);
	public void deleteMember(String id);
	
	
}
