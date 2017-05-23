package kr.re.hep.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.re.hep.vo.QuestBadgeVO;
import kr.re.hep.vo.QuestDirectedVO;
import kr.re.hep.vo.QuestVO;

@Repository("questDao")
public class QuestDao {

	private String namespace = "questMapper.";
	
	@Autowired
	SqlSessionTemplate session;
	
	public List<QuestVO> questSelectAll(int region_no){
		return session.selectList(namespace +"questSelectAll", region_no);
	}
	
	public QuestVO questSelect(int quest_no){
		return session.selectOne(namespace +"questSelect", quest_no);
	}
	
	public void questInsert(QuestVO vo){
		session.insert(namespace +"questInsert", vo);
	}
	
	public void questDelete(int quest_no){
		session.update(namespace +"questDelete", quest_no);
	}
	
	public QuestVO questRegionSelect(int quest_no){
		return session.selectOne(namespace +"questRegionSelect", quest_no);
	}
	
	public void questSeqUpdateAll(QuestVO vo){
		session.update(namespace +"questSeqUpdateAll", vo);
	}
	
	public void questSeqUpdate(QuestVO vo){
		session.update(namespace +"questSeqUpdate", vo);
	}
	
	public int questDirectedExistsSelect(QuestDirectedVO vo){
		return session.selectOne(namespace +"questDirectedExistsSelect", vo);
	}
	
	public void questDirectedInsert(QuestDirectedVO vo){
		session.insert(namespace +"questDirectedInsert", vo);
	}
	
	public void questDirectedDelete(QuestDirectedVO vo){
		session.delete(namespace +"questDirectedDelete", vo);
	}
	
	public int questBadgeExistsSelect(QuestBadgeVO vo){
		return session.selectOne(namespace +"questBadgeExistsSelect", vo);
	}
	
	public void questBadgeInsert(QuestBadgeVO vo){
		session.insert(namespace +"questBadgeInsert", vo);
	}
	
	public void questBadgeDelete(QuestBadgeVO vo){
		session.delete(namespace +"questBadgeDelete", vo);
	}
	
	public void questUpdate(QuestVO vo){
		session.update(namespace +"questUpdate", vo);
	}
}
