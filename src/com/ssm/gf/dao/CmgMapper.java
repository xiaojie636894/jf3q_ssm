package com.ssm.gf.dao;

import com.ssm.gf.model.Cmg;
/**
 *  @author jf3q.com
 *
 */
public interface CmgMapper {
	public Cmg queryCmg(Cmg c);
	public void updateTs(String ts,String cid);
}
