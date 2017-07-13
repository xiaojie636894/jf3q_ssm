package com.ssm.gf.service.imp;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ssm.gf.dao.TestMapper;
import com.ssm.gf.model.User;
import com.ssm.gf.service.TestService;

@Service("testService")
public class TestServiceImpl implements TestService{

	@Resource
	private TestMapper testMapper;
//	
//	public TestMapper getTestMapper() {
//		return testMapper;
//	}
//
//	public void setTestMapper(TestMapper testMapper) {
//		this.testMapper = testMapper;
//	}

	@Override
	public User queryTest(int userId) {
		return testMapper.queryTest(userId);
//		return null;
	}

}
