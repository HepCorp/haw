package kr.re.hep.service;

import kr.re.hep.vo.MemberVO;
import kr.re.hep.vo.SigninVO;
import kr.re.hep.vo.TeamVO;

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
	
	/**
	 * 팀 정보 가져오기 
	 * @param int - 팀번호
	 * @return TeamVO - 팀정보
	 * @exception Exception
	 * @author rachel
	 */
	public TeamVO teamSelect(int team_no);

	/**
	 * 회원팀정보 업데이트 
	 * @param MemberVO - 회원정보 
	 * @return int - update Row 수
	 * @exception Exception
	 * @author rachel
	 */
	public int updateTeamMember(MemberVO memberVO);

	/**
	 * 팀 회원명 업데이트 
	 * @param TeamVO - 팀정보
	 * @return void
	 * @exception Exception
	 * @author rachel
	 */
	public void updateTeam(TeamVO teamVO);
	
	/**
	 * 관리자 가입 
	 * @param MemberVO - 관리정보
	 * @return void
	 * @exception Exception
	 * @author JongMoon
	 */
	
	public void adminInsert(MemberVO memberVo);
	
	/**
	 * 관리자 로그인 여부 체크  
	 * @param String - 이메일
	 * @return MemberVO - 관리정보
	 * @exception Exception
	 * @author JongMoon
	 */
	public MemberVO adminSigninSelect(String email);
	

}
