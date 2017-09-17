package com.ssm.gf.service.imp;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ssm.gf.dao.CmgMapper;
import com.ssm.gf.model.Cmg;
import com.ssm.gf.service.CmgService;

/**
 *  @author jf3q.com
 *
 */
@Service("cmgService")
public class CmgServiceImpl implements CmgService{

	@Resource
	private CmgMapper cmgMapper;
 
	
	@Override
	public Cmg queryCmg(Cmg c) {
		return cmgMapper.queryCmg(c);
	}


	@Override
	public void updateTs(String ts, String cid) {
		cmgMapper.updateTs(ts, cid);
	}

}
