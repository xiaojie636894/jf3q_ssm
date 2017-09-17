package com.ssm.gf.controller.admin;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ssm.gf.cons.Sys;
import com.ssm.gf.service.CmgService;
 

/**
 *  @author jf3q.com
 *
 */
@Controller
@RequestMapping("/admin")
public class AdminController {
	@Resource
	private CmgService cmgService;

	
	@RequestMapping("toIndex")
	public String login(){
		return Sys.Common.admin+"/index";
	}
	 
}
