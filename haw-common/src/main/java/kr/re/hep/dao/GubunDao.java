package kr.re.hep.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.re.hep.vo.GubunVO;

@Repository("gubunDao")
public class GubunDao {
	
	private String namespace = "gubunMapper.";
	
	@Autowired
	SqlSessionTemplate session;
	
	public int gubunExistsSelect(GubunVO vo) {
		return session.selectOne(namespace +"gubunExistsSelect", vo);
	}
	
	public List<GubunVO> gubunTypeSelect(String column_nm) {
		return session.selectList(namespace +"gubunTypeSelect", column_nm);
	}

}
