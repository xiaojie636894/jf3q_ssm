package com.ssm.gf.controller.jsp;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ssm.gf.cons.Sys;

 

@Controller
@RequestMapping("/jsp")
public class IndexController {

	
	@RequestMapping("index")
	public String index(HttpServletRequest request, Model model){

		return Sys.Common.front+"/index";
	}
}
