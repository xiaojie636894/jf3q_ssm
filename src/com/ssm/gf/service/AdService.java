package com.ssm.gf.service;

import java.util.List;

import com.ssm.gf.model.Ad;

/**
 *  @author jf3q.com
 *
 */
public interface AdService {
	public void add(Ad a); 
	public List<Ad> queryList(Ad a);
	public Long queryCount(Ad a);
	public Ad queryById(String aid);
	public void update(Ad a);
	public void deleteById(String aid);
}
