package kr.re.hep.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.re.hep.dao.TagDao;
import kr.re.hep.service.TagService;
import kr.re.hep.vo.TagVO;

@Service("tagService")
public class TagServiceImpl implements TagService {

	@Resource(name="tagDao")
	TagDao dao;

	@Override
	public int tagInsert(TagVO vo) {
		return dao.tagInsert(vo);
	}

	@Override
	public List<TagVO> tagSelect(String tag_nm) {
		return dao.tagSelect(tag_nm);
	}

	@Override
	public List<TagVO> tagSelectAll(String tag_str) {
		return dao.tagSelectAll(tag_str);
	}

	@Override
	public void tagDelete(int tag_no) {
		dao.tagDelete(tag_no);
	}

}
