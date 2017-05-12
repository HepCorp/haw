package kr.re.hep.service;

import java.util.List;

import kr.re.hep.vo.GubunVO;

public interface GubunService {

	/**
	 * 타입의 구분값이 있는지 여부 체크 
	 * @param GubunVO - 구분 정보
	 * @return int - Row Count 번호
	 * @exception Exception
	 * @author rachel
	 */
	public int gubunExistsSelect(GubunVO vo);
	
	/**
	 * 해당 타입의 모든 구분값 목록 
	 * @param String - 컬럼이름
	 * @return List<GubunVO> - 구분 목록
	 * @exception Exception
	 * @author rachel
	 */
	public List<GubunVO> gubunTypeSelect(String column_nm);
}
