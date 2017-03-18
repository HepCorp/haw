package kr.re.hep.member.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.re.hep.member.MemberVO;
import kr.re.hep.member.SigninVO;
import kr.re.hep.member.service.MemberDao;
import kr.re.hep.member.service.MemberService;

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
	
	
}
