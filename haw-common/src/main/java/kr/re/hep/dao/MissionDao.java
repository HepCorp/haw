package kr.re.hep.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.re.hep.vo.HintVO;
import kr.re.hep.vo.MissionVO;

@Repository("missionDAO")
public class MissionDao {

	private String namespace = "missionMapper.";
	
	@Autowired
	SqlSessionTemplate session;
	
	public List<MissionVO> missionSelectAll(int quest_no){
		return session.selectList(namespace +"missionSelectAll", quest_no);
	}
	
	public MissionVO missionSelect(int mission_no){
		return session.selectOne(namespace +"missionSelect", mission_no);
	}
	
	public void missionDelete(int mission_no){
		session.delete(namespace +"missionDelete", mission_no);
	}
	
	public void missionSeqUpdateAll(MissionVO vo){
		session.update(namespace +"missionSeqUpdateAll", vo);
	}
	
	public int hintInsert(HintVO vo){
		return session.insert(namespace +"hintInsert", vo);
	}
	
	public void hintDelete(int hint_no){
		session.delete(namespace +"hintDelete", hint_no);
	}
}
