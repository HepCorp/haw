package kr.re.hep.service;

import java.util.List;

import kr.re.hep.vo.RegionConditionVO;

public interface RegionService {

	/**
	 * 오픈조건이 등록된 지역 전체 리스트
	 * @param void
	 * @return List<RegionConditionVO> - 지역조건 목록
	 * @exception Exception
	 * @author rachel
	 */
	public List<RegionConditionVO> regionSelectAll();
	
	/**
	 * 해당 지역이 등록된 지역인지 여부
	 * @param Integer - 지역번호
	 * @return Integer - Row Count 번호
	 * @exception Exception
	 * @author rachel
	 */
	public int regionExistsSelect(int region_no);

}
