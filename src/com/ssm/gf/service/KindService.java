package com.ssm.gf.service;

import java.util.List;

import com.ssm.gf.model.Kind;
/**
 *  @author jf3q.com
 *
 */
public interface KindService {
	 public void add(Kind kind); 
	 public List<Kind> queryList(Kind k);
	 public Kind queryKindById(String kid);
	 public void update(Kind kind);
	 public void deleteById(String kid);
	 public Long queryCount(Kind k);
}
