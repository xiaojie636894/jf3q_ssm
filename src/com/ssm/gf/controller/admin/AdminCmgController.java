package com.ssm.gf.controller.admin;

import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ssm.gf.cons.Sys;
import com.ssm.gf.model.Cmg;
import com.ssm.gf.service.CmgService;
import com.ssm.gf.untils.DateUtils;

 
/**
 *  @author jf3q.com
 *
 */

@Controller
@RequestMapping("/admin/cmg")
public class AdminCmgController {
	@Resource
	private CmgService cmgService;

	
	@RequestMapping("login")
	public String login(){
		return Sys.Common.admin+"/login";
	}
	@RequestMapping("loginIn")
	public String loginIn(Cmg cmg,Model model,HttpServletRequest request){
		System.out.println(cmg.getCname()+"------");
		Cmg c=cmgService.queryCmg(cmg);
		if(c==null){
			model.addAttribute("msg", "登录失败");
			return Sys.Common.admin+"/login";
		}else{
			String ts=DateUtils.DateTimeToString(new Date());
			cmgService.updateTs(ts, c.getCid()+"");
	        c.setTs(ts);   
			HttpSession session=request.getSession();  
            session.setAttribute("cmg",c);
            return "redirect:/"+Sys.Common.admin+"/toIndex";
		}
	}
}
