package kr.re.hep.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.re.hep.dao.RegionDao;
import kr.re.hep.service.RegionService;
import kr.re.hep.vo.RegionConditionVO;

@Service("regionService")
public class RegionServiceImpl implements RegionService {

	@Resource(name="regionDao")
	RegionDao dao;
	
	@Override
	public List<RegionConditionVO> regionSelectAll() {
		return dao.regionSelectAll();
	}

	@Override
	public int regionExistsSelect(int region_no) {
		return dao.regionExistsSelect(region_no);
	}

}
