package kr.re.hep.member.service;

import kr.re.hep.member.MemberVO;
import kr.re.hep.member.SigninVO;

public interface MemberService {

	/**
	 * 이메일중복체크 
	 * @param String - 이메일
	 * @return String - 조회결과
	 * @exception Exception
	 * @author rachel
	 */
	public String emailSelect(String email);
	
	/**
	 * 닉네임중복체크 
	 * @param String - 닉네임 
	 * @return String - 조회결과
	 * @exception Exception
	 * @author rachel
	 */
	public String nickSelet(String nickname);
	
	/**
	 * 회원가입입력  
	 * @param MemberVO - 회원정보
	 * @return void
	 * @exception Exception
	 * @author rachel
	 */
	public void memberInsert(MemberVO vo);
	
	/**
	 * 로그인 여부 체크  
	 * @param String - 이메일
	 * @return MemberVO - 회원정보
	 * @exception Exception
	 * @author rachel
	 */
	public MemberVO signinSelect(String email);
	
	/**
	 * 로그인 로그 저장
	 * @param SigninVO - 로그인정보 
	 * @return void
	 * @exception Exception
	 * @author rachel
	 */
	public void signInsert(SigninVO vo);

}
