package kr.re.hep.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.re.hep.vo.RegionConditionVO;

@Repository("regionDao")
public class RegionDao {
	private String namespace = "regionMapper.";
	
	@Autowired
	SqlSessionTemplate session;
	
	public List<RegionConditionVO> regionSelectAll(){
		return session.selectList(namespace +"regionSelectAll");
	}

	public int regionExistsSelect(int region_no){
		return session.selectOne(namespace +"regionExistsSelect", region_no);
	}
}
