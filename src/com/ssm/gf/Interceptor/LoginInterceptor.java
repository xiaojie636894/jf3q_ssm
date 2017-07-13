package com.ssm.gf.Interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.ssm.gf.cons.Sys;
import com.ssm.gf.model.Cmg;

public class LoginInterceptor implements HandlerInterceptor{

	 //执行Handler方法之前执行  
    //用于身份认证、身份授权  
    //比如身份认证，如果认证通过表示当前用户没有登陆，需要此方法拦截不再向下执行  
    @Override  
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response,  
            Object handler) throws Exception {  
          
    	System.out.println("----登陆拦截器------"); 
        String url=request.getRequestURI(); 
        if(url.indexOf(Sys.Common.admin)>=-1){  
        	if(url.indexOf("cmg/login")>-1){
        		return true;
        	}else{
        		HttpSession session=request.getSession();  
            	Cmg cmg=(Cmg) session.getAttribute("cmg"); 
            	if(cmg==null){
            		System.out.println("------拦截了，请先登录----");
            		request.getRequestDispatcher("/"+Sys.Common.admin+"/login.jsp").forward(request, response);
            	}else{
            		System.out.println("------已登录，放行----");
            		return true;
            	}
        	}
        } else{
        	return true;
        }
        return true;
          
    }  
      
    //进入Handler方法之后，返回modelAndView之前执行  
    //应用场景从modelAndView出发：将公用的模型数据(比如菜单导航)在这里  
    //传到视图，也可以在这里统一指定视图  
    @Override  
    public void postHandle(HttpServletRequest request, HttpServletResponse response,  
            Object handler, ModelAndView modelAndView) throws Exception {  
          
    }  
      
    //执行Handler完成执行此方法  
    //应用场景：统一异常处理，统一日志处理  
    @Override  
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response,  
            Object handler, Exception ex)  
            throws Exception {  
    }  
	  
	  
    
}  