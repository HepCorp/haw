package kr.re.hep.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.re.hep.vo.MemberVO;
import kr.re.hep.vo.SigninVO;
import kr.re.hep.vo.TeamVO;

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

	public int updateTeamMember(MemberVO memberVO) {
		return session.update(namespace +"updateTeamMember", memberVO);
	}

	public void updateTeam(TeamVO teamVO) {
		session.update(namespace +"updateTeam", teamVO);
	}
	
	public void adminInsert(MemberVO vo){
		session.insert(namespace +"adminInsert", vo);
	}
	
	public MemberVO adminSigninSelect(String email){
		return session.selectOne(namespace +"adminSigninSelect", email);
	}
	
	public String adminEmailSelect(String email){
		return session.selectOne(namespace +"adminEmailSelect",	email);
	}
	
	public String adminNickSelet(String nickname){
		return session.selectOne(namespace +"adminNickSelect", nickname);
	}
	
}
