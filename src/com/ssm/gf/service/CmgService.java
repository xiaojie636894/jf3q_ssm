package com.ssm.gf.service;

import com.ssm.gf.model.Cmg;

public interface CmgService {
	public Cmg queryCmg(Cmg c);
	public void updateTs(String ts,String cid);
}
