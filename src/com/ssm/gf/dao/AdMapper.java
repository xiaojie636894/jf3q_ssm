package com.ssm.gf.dao;

import java.util.List;

import com.ssm.gf.model.Ad;


public interface AdMapper {
	 public void add(Ad a);
	 public List<Ad> queryList(Ad a);
	 public Long queryCount(Ad a);
	 public Ad queryById(String aid);
	 public void update(Ad a);
	 public void deleteById(String aid);
}
