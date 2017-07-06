package kr.re.hep.service;

import java.util.List;

import kr.re.hep.vo.QuestBadgeVO;
import kr.re.hep.vo.QuestDirectedVO;
import kr.re.hep.vo.QuestVO;

public interface QuestService {

	/**
	 * 퀘스트 전체 목록  
	 * @param Integer - 지역번호
	 * @return List<QuestVO> - 퀘스트 목록 
	 * @exception Exception
	 * @author rachel
	 */
	public List<QuestVO> questSelectAll(int region_no);

	/**
	 * 퀘스트 상세보기 
	 * @param Integer - 지역번호
	 * @return List<QuestVO> - 퀘스트 목록 
	 * @exception Exception
	 * @author rachel
	 */
	public QuestVO questSelect(int quest_no);
	
	/**
	 * 퀘스트 등록
	 * @param QuestVO - 퀘스트정보
	 * @return void
	 * @exception Exception
	 * @author rachel
	 */
	public void questInsert(QuestVO vo);
	
	/**
	 * 퀘스트 삭제
	 * @param Integer - Quest No
	 * @return void
	 * @exception Exception
	 * @author rachel
	 */
	public void questDelete(int quest_no);
	
	/**
	 * 퀘스트 지역 변경시에 지역변호 가져오기
	 * @param Integer - 퀘스트 번호
	 * @return QuestVO - 기존 퀘스트 정보
	 * @exception Exception
	 * @author rachel
	 */
	public QuestVO questRegionSelect(int quest_no);
	
	/**
	 * 퀘스트 지역 변경시에 퀘스트순서 전체 변경
	 * @param QuestVO - 퀘스트정보
	 * @return void
	 * @exception Exception
	 * @author rachel
	 */
	public void questSeqUpdateAll(QuestVO vo);
	
	/**
	 * 퀘스트 지역 변경시에 퀘스트순서 변경
	 * @param QuestVO - 퀘스트정보
	 * @return void
	 * @exception Exception
	 * @author rachel
	 */
	public void questSeqUpdate(QuestVO vo);
	
	/**
	 * 관련퀘스트 중복여부 체크
	 * @param QuestDirectedVO - 퀘스트 관련 정보
	 * @return Integer - Row Count 번호
	 * @exception Exception
	 * @author rachel
	 */
	public int questDirectedExistsSelect(QuestDirectedVO vo);
	
	/**
	 * 관련퀘스트 등록
	 * @param QuestDirectedVO - 퀘스트 관련 정보
	 * @return void
	 * @exception Exception
	 * @author rachel
	 */
	public void questDirectedInsert(QuestDirectedVO vo);
	
	/**
	 * 관련퀘스트 삭제
	 * @param QuestDirectedVO - 퀘스트 관련 정보
	 * @return void
	 * @exception Exception
	 * @author rachel
	 */
	public void questDirectedDelete(QuestDirectedVO vo);
	
	/**
	 * 퀘스트 오픈 조건 뱃지 중복 체크 
	 * @param QuestBadgeVO - 퀘스트 오픈조건 뱃지 정보 
	 * @return Integer - Row Count 번호
	 * @exception Exception
	 * @author rachel
	 */
	public int questBadgeExistsSelect(QuestBadgeVO vo);
	
	/**
	 * 퀘스트 오픈 조건 뱃지 등록
	 * @param QuestBadgeVO - 퀘스트 오픈조건 뱃지 정보 
	 * @return void
	 * @exception Exception
	 * @author rachel
	 */
	public void questBadgeInsert(QuestBadgeVO vo);
	
	/**
	 * 퀘스트 오픈 조건 뱃지 삭제
	 * @param QuestBadgeVO - 퀘스트 오픈조건 뱃지 정보 
	 * @return void
	 * @exception Exception
	 * @author rachel
	 */
	public void questBadgeDelete(QuestBadgeVO vo);

	/**
	 * 퀘스트 수정
	 * @param QuestVO - 퀘스트 정보 
	 * @return void
	 * @exception Exception
	 * @author rachel
	 */
	public void questUpdate(QuestVO vo);

}
