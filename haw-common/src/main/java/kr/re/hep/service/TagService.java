package kr.re.hep.service;

import java.util.List;

import kr.re.hep.vo.TagVO;

public interface TagService {

	/**
	 * 태그입력
	 * @param TagVO - 태그 정보
	 * @return Integer - 태그 번호
	 * @exception Exception
	 * @author rachel
	 */
	public int tagInsert(TagVO vo);
	
	/**
	 * 태그명으로 태그번호 가져오기 (태그 중복여부 체크)
	 * @param String - 퀘스트정보에 저장된 태그 문자열
	 * @return List<TagVO> - 태그 목록
	 * @exception Exception
	 * @author rachel
	 */
	public List<TagVO> tagSelect(String tag_nm);
	
	/**
	 * 퀘스트 태그문자열에 대한 목록
	 * @param String - 태그 문자열
	 * @return List<TagVO> - 태그 목록
	 * @exception Exception
	 * @author rachel
	 */
	public List<TagVO> tagSelectAll(String tag_str);
	
	/**
	 * 태그삭제
	 * @param Integer - 태그번호
	 * @return void
	 * @exception Exception
	 * @author rachel
	 */
	public void tagDelete(int tag_no);
	
}
