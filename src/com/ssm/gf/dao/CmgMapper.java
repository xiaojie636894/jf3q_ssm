package com.ssm.gf.dao;

import com.ssm.gf.model.Cmg;

public interface CmgMapper {
	public Cmg queryCmg(Cmg c);
	public void updateTs(String ts,String cid);
}
