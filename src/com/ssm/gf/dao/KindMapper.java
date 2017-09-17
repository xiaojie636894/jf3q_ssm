package com.ssm.gf.dao;

import java.util.List;

import com.ssm.gf.model.Kind;
/**
 *  @author jf3q.com
 *
 */
public interface KindMapper {
	 public void add(Kind k);
	 public List<Kind> queryList(Kind k);
	 public Kind queryKindById(String kid);
	 public void update(Kind kind) ;
	 public void deleteById(String kid);
	 public Long queryCount(Kind k);
	 
}
