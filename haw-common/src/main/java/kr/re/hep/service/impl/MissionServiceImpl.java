package kr.re.hep.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.re.hep.dao.MissionDao;
import kr.re.hep.service.MissionService;
import kr.re.hep.vo.HintVO;
import kr.re.hep.vo.MissionVO;

@Service("missionService")
public class MissionServiceImpl implements MissionService {

	@Resource(name = "missionDao")
	MissionDao dao;
	
	@Override
	public List<MissionVO> missionSelectAll(int quest_no) {
		return dao.missionSelectAll(quest_no);
	}

	@Override
	public MissionVO missionSelect(int mission_no) {
		return dao.missionSelect(mission_no);
	}

	@Override
	public void missionDelete(int mission_no) {
		dao.missionDelete(mission_no);
	}

	@Override
	public void missionSeqUpdateAll(MissionVO vo) {
		dao.missionSeqUpdateAll(vo);
	}

	@Override
	public int hintInsert(HintVO vo) {
		return dao.hintInsert(vo);
	}

	@Override
	public void hintDelete(int hint_no) {
		dao.hintDelete(hint_no);
	}

}
