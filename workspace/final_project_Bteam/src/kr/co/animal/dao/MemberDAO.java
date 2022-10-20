package kr.co.animal.dao;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.animal.vo.MemberVO;

@Repository
public class MemberDAO implements MemberDaoInter{
	
	@Autowired
	private SqlSessionTemplate ss;
	
	//안드로이드
	@Override
    public MemberVO loginAndroid(MemberVO vo) {
       return ss.selectOne("member.androidlogin",vo);
    }
	
	// 웹
	@Override
	public MemberVO loginCheck(MemberVO dto) {
		return ss.selectOne("member.login", dto);
	}
	
	@Override
	public void addMember(MemberVO dto) {
		ss.insert("member.add", dto);
	}

	@Override
	public int idcheck(String member_id) {
		return ss.selectOne("member.idchk", member_id);
	}
	
	// 아이디 찾기
	@Override
	public MemberVO findId(MemberVO vo) {
		System.out.println("==> Mybatis로 findId() 기능 처리");
		return ss.selectOne("member.findId", vo);
	}

	// 비번 찾기
	@Override
	public MemberVO findPassword(MemberVO vo) {
		System.out.println("==> Mybatis로 findPassword() 기능 처리");
		System.out.println("dd");
		return ss.selectOne("member.findPassword", vo);
	}

	// 비밀번호 업데이트
	public void updatePassword(MemberVO vo) {
		System.out.println("==> Mybatis로 updatePassword() 기능 처리");
		System.out.println(vo.getMember_id());
		ss.update("member.updatePassword", vo);
	}
	
	@Override
	public MemberVO getDetail2(String member_id) {
		MemberVO vo = ss.selectOne("member.memberdetail2",member_id);
		return vo;
	}
	
	@Override
	public void updateMember(MemberVO vo) {
		ss.update("member.updatemember", vo);
	}

	@Override
	public void deleteMember(String id) {
		ss.delete("member.deletemember", id);
	}
		
		
}
