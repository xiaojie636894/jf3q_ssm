package com.ssm.gf.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ssm.gf.model.User;
import com.ssm.gf.service.TestService;

@Controller
@RequestMapping("/test")
public class TestController {

	@Resource
	private TestService testService;




	@RequestMapping("test")
	public String test(HttpServletRequest request, Model model){
//		int userId = Integer.parseInt(request.getParameter("id"));
		User user = testService.queryTest(0);
		System.out.println(user.getUserName());
		model.addAttribute("user", user);
		return "showUser";
	}
}
