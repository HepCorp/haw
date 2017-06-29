package kr.re.hep.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.re.hep.dao.MemberDao;
import kr.re.hep.service.MemberService;
import kr.re.hep.vo.MemberVO;
import kr.re.hep.vo.SigninVO;
import kr.re.hep.vo.TeamVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService {

	@Resource(name="memberDAO")
	MemberDao dao;

	@Override
	public String emailSelect(String email) {
		return dao.emailSelect(email);
	}

	@Override
	public String nickSelet(String nickname) {
		return dao.nickSelet(nickname);
	}

	@Override
	public void memberInsert(MemberVO vo) {
		dao.memberInsert(vo);
	}

	@Override
	public MemberVO signinSelect(String email) {
		return dao.signinSelect(email);
	}

	@Override
	public void signInsert(SigninVO vo) {
		dao.signInsert(vo);
	}

	@Override
	public TeamVO teamSelect(int team_no) {
		return dao.teamSelect(team_no);
	}

	@Override
	public int updateTeamMember(MemberVO memberVO) {
		return dao.updateTeamMember(memberVO);
	}

	@Override
	public void updateTeam(TeamVO teamVO) {
		dao.updateTeam(teamVO);
	}
	
	@Override
	public void adminInsert(MemberVO vo) {
		dao.adminInsert(vo);
	}
	
	@Override
	public MemberVO adminSigninSelect(String email) {
		return dao.adminSigninSelect(email);
	}
	
}
