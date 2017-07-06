package kr.re.hep.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.re.hep.vo.TagVO;

@Repository("tagDao")
public class TagDao {
	
	private String namespace = "tagMapper.";
	
	@Autowired
	SqlSessionTemplate session;
	
	public int tagInsert(TagVO vo){
		return session.insert(namespace +"tagInsert", vo);
	}
	
	public int tagExistsSelect(String tag_nm){
		return session.selectOne(namespace +"tagExistsSelect", tag_nm);
	}
	
	public int tagSelect(String tag_nm){
		return session.selectOne(namespace +"tagSelect", tag_nm);
	}
	
	public List<TagVO> tagSelectAll(String tag_str){
		return session.selectList(namespace +"tagSelectAll", tag_str);
	}
	
	public void tagDelete(int tag_no){
		session.delete(namespace +"tagDelete", tag_no);
	}

}
