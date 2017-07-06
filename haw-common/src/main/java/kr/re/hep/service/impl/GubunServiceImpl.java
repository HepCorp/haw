package kr.re.hep.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.re.hep.dao.GubunDao;
import kr.re.hep.service.GubunService;
import kr.re.hep.vo.GubunVO;

@Service("gubunService")
public class GubunServiceImpl implements GubunService {

	@Resource(name="gubunDao")
	GubunDao dao;
	
	@Override
	public int gubunExistsSelect(GubunVO vo) {
		return dao.gubunExistsSelect(vo);
	}

	@Override
	public List<GubunVO> gubunTypeSelect(String column_nm) {
		return dao.gubunTypeSelect(column_nm);
	}

}
