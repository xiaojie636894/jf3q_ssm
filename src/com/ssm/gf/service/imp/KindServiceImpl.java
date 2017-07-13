package com.ssm.gf.service.imp;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ssm.gf.dao.KindMapper;
import com.ssm.gf.model.Kind;
import com.ssm.gf.service.KindService;


@Service("kindService")
public class KindServiceImpl implements KindService{

	@Resource
	private KindMapper kindMapper;

	@Override
	public void add(Kind kind) {
		kindMapper.add(kind);
	}

	@Override
	public List<Kind> queryList(Kind k) {
		return kindMapper.queryList(k);
	}

	@Override
	public Kind queryKindById(String kid) {
		return kindMapper.queryKindById(kid);
	}

	@Override
	public void update(Kind kind) {
		kindMapper.update(kind);
	}

	@Override
	public void deleteById(String kid) {
		kindMapper.deleteById(kid);
	}

	@Override
	public Long queryCount(Kind k) {
		return kindMapper.queryCount(k);
	}
 
	 

}
