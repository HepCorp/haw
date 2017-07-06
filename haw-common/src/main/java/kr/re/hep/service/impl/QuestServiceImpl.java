package kr.re.hep.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.re.hep.dao.QuestDao;
import kr.re.hep.service.QuestService;
import kr.re.hep.vo.QuestBadgeVO;
import kr.re.hep.vo.QuestDirectedVO;
import kr.re.hep.vo.QuestVO;

@Service("questService")
public class QuestServiceImpl implements QuestService {

	@Resource(name = "questDao")
	QuestDao dao;
	
	@Override
	public List<QuestVO> questSelectAll(int region_no) {
		return dao.questSelectAll(region_no);
	}

	@Override
	public QuestVO questSelect(int quest_no) {
		return dao.questSelect(quest_no);
	}

	@Override
	public void questInsert(QuestVO vo) {
		dao.questInsert(vo);
	}

	@Override
	public void questDelete(int quest_no) {
		dao.questDelete(quest_no);
	}

	@Override
	public QuestVO questRegionSelect(int quest_no) {
		return dao.questRegionSelect(quest_no);
	}

	@Override
	public void questSeqUpdateAll(QuestVO vo) {
		dao.questSeqUpdateAll(vo);
	}

	@Override
	public void questSeqUpdate(QuestVO vo) {
		dao.questSeqUpdate(vo);
	}

	@Override
	public int questDirectedExistsSelect(QuestDirectedVO vo) {
		return dao.questDirectedExistsSelect(vo);
	}

	@Override
	public void questDirectedInsert(QuestDirectedVO vo) {
		dao.questDirectedInsert(vo);
	}

	@Override
	public void questDirectedDelete(QuestDirectedVO vo) {
		dao.questDirectedDelete(vo);
	}

	@Override
	public int questBadgeExistsSelect(QuestBadgeVO vo) {
		return dao.questBadgeExistsSelect(vo);
	}

	@Override
	public void questBadgeInsert(QuestBadgeVO vo) {
		dao.questBadgeInsert(vo);
	}

	@Override
	public void questBadgeDelete(QuestBadgeVO vo) {
		dao.questBadgeDelete(vo);
	}

	@Override
	public void questUpdate(QuestVO vo) {
		dao.questUpdate(vo);
	}

}
