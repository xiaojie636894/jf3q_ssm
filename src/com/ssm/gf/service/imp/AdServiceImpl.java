package com.ssm.gf.service.imp;



import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ssm.gf.dao.AdMapper;
import com.ssm.gf.model.Ad;
import com.ssm.gf.service.AdService;


@Service("adService")
public class AdServiceImpl implements AdService{
	@Resource
	private AdMapper adMapper;

	@Override
	public void add(Ad a) {
		adMapper.add(a);
	}

	@Override
	public List<Ad> queryList(Ad a) {
		return adMapper.queryList(a);
	}

	@Override
	public Long queryCount(Ad a) {
		return adMapper.queryCount(a);
	}

	@Override
	public Ad queryById(String aid) {
		return adMapper.queryById(aid);
	}

	@Override
	public void update(Ad a) {
		adMapper.update(a);
	}

	@Override
	public void deleteById(String aid) {
		adMapper.deleteById(aid);
	}
 
	 
	 

}
