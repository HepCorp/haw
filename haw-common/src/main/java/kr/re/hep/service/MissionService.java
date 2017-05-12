package kr.re.hep.service;

import java.util.List;

import kr.re.hep.vo.HintVO;
import kr.re.hep.vo.MissionVO;

public interface MissionService {

	/**
	 * 한퀘스트의 전체 미션 리스트  
	 * @param Integer - 퀘스트 번호
	 * @return List<MissionVO> - 미션 목록
	 * @exception Exception
	 * @author rachel
	 */
	public List<MissionVO> missionSelectAll(int quest_no);
	
	/**
	 * 하나의미션에 대한 상세 보기  
	 * @param Integer - 미션번호
	 * @return MissionVO - 미션 정보
	 * @exception Exception
	 * @author rachel
	 */
	public MissionVO missionSelect(int mission_no);
	
	/**
	 * 미션 삭제  
	 * @param Integer - 미션번호
	 * @return void
	 * @exception Exception
	 * @author rachel
	 */
	public void missionDelete(int mission_no);
	
	/**
	 * 미션이 삭제되면 이하 순서들의 번호를 전체 변경해줌  
	 * @param MissionVO - 미션 정보
	 * @return void
	 * @exception Exception
	 * @author rachel
	 */
	public void missionSeqUpdateAll(MissionVO vo);
	
	/**
	 * 힌트등록
	 * @param HintVO - 힌트 정보
	 * @return Integer - 힌트 번호
	 * @exception Exception
	 * @author rachel
	 */
	public int hintInsert(HintVO vo);
	
	/**
	 * 힌트삭제
	 * @param Integer - 힌트번호
	 * @return void
	 * @exception Exception
	 * @author rachel
	 */
	public void hintDelete(int hint_no);
	
}
