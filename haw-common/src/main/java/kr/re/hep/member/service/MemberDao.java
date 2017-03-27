package kr.re.hep.member.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.re.hep.member.MemberVO;
import kr.re.hep.member.SigninVO;
import kr.re.hep.member.TeamVO;

@Repository("memberDAO")
public class MemberDao {

	private String namespace = "memberMapper.";
	
	@Autowired
	SqlSessionTemplate session;
	
	public String emailSelect(String email){
		return session.selectOne(namespace +"emailSelect",	email);
	}
	
	public String nickSelet(String nickname){
		return session.selectOne(namespace +"nickSelect", nickname);
	}
	
	public void memberInsert(MemberVO vo){
		session.insert(namespace +"memberInsert", vo);
	}
	
	public MemberVO signinSelect(String email){
		return session.selectOne(namespace +"signinSelect", email);
	}
	
	public void signInsert(SigninVO vo){
		session.insert(namespace+"signInsert", vo);
	}
	
	public TeamVO teamSelect(int team_no){
		return session.selectOne(namespace +"teamSelect", team_no);
	}

	public void updateTeamMember(MemberVO memberVO) {
		session.update(namespace +"updateTeamMember", memberVO);
	}

	public void updateTeam(TeamVO teamVO) {
		session.update(namespace +"updateTeam", teamVO);
	}
}
