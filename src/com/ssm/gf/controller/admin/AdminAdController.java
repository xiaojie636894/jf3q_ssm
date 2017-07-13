package com.ssm.gf.controller.admin;


import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.ssm.gf.cons.Sys;
import com.ssm.gf.model.Ad;
import com.ssm.gf.model.Page;
import com.ssm.gf.service.AdService;
import com.ssm.gf.untils.DateUtils;
import com.ssm.gf.untils.LikeQuery;
import com.ssm.gf.untils.UploadFile;
 


@Controller
@RequestMapping("/admin/ad")
public class AdminAdController {
	@Resource
	private AdService adService;
	
	Page page=new Page();
	
	@RequestMapping("list")
	public String list(Ad ad,Model m){
		String title=ad.getTitle();
		ad.setTitle(LikeQuery.add(title));
		if(ad.getPageNo()==null)ad.setPageNo(1);
		if(ad.getPageSize()==null)ad.setPageSize(Sys.Common.pageSize);
		
		page.setPageNo(ad.getPageNo());
		page.setPageSize(ad.getPageSize());
		page.setStartRow(page.getPageNo(), page.getPageSize());
		page.setCount(adService.queryCount(ad));
		page.setPages(page.getCount(), page.getPageSize());
		
		ad.setStartRow(page.getStartRow());
		
		List<Ad> li=adService.queryList(ad);
		
		ad.setTitle(title);
		m.addAttribute("ad", ad);
		m.addAttribute("page", page);
		m.addAttribute("li", li); 
		return Sys.Common.admin+"/ad_list";
	}
	
	@RequestMapping("add")
	public String add(){
		return Sys.Common.admin+"/ad_add";
	}
	
	@RequestMapping("added")
	public String added(Ad ad,@RequestParam(value = "file_adimg",required = true) MultipartFile file,HttpServletRequest request,Model m){
		String adimg=UploadFile.upimg(file, request);
		ad.setAdimg(adimg);
		ad.setCts(DateUtils.DateTimeToString(new Date())); 
		adService.add(ad);
		return list(ad, m);
	}
	
	@RequestMapping("update")
	public String update(@RequestParam String aid,Model m){
		Ad ad=adService.queryById(aid);
		m.addAttribute("ad", ad);
		return Sys.Common.admin+"/ad_update";
	}
	
	@RequestMapping("updated")
	public String updated(Ad ad,@RequestParam(value = "file_adimg",required = false) MultipartFile file,HttpServletRequest request,Model m){
		String adimg="";
		try {
			if(file!=null&&file.getBytes().length>0){
				 adimg=UploadFile.upimg(file, request);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		if(StringUtils.isNotBlank(adimg)){
			String oldimg=ad.getAdimg();
			UploadFile.deleteFile(request, oldimg);
			ad.setAdimg(adimg);
		}
		adService.update(ad);
		return list(ad, m);
	}
	
	@RequestMapping("isuse")
	public String isUse(Ad ad,Model m){
		Ad oldA=adService.queryById(ad.getAid()+"");
		Ad a=new Ad();
		if(oldA.getStatus()==Sys.Common.USE)a.setStatus(Sys.Common.NO_USE);
		else a.setStatus(Sys.Common.USE);
		a.setAid(ad.getAid());
		adService.update(a);
		return list(ad, m);
	}
	
	@RequestMapping("del")
	public String del(Ad ad,HttpServletRequest request,Model m){
		Ad oldA=adService.queryById(ad.getAid()+"");
		UploadFile.deleteFile(request, oldA.getAdimg());
		adService.deleteById(ad.getAid()+"");
		return list(ad, m);
	}
	
	@RequestMapping("pluse")
	public String plUse(Ad ad,Model m){
		String[] idArr=ad.getIds().split(",");
		for(String id:idArr){
			Ad a=new Ad();
			a.setAid(Integer.parseInt(id));
			a.setStatus(Sys.Common.USE);
			adService.update(a);
		}
		return list(ad, m);
	}
	
	@RequestMapping("plnouse")
	public String plNoUse(Ad ad,Model m){
		String[] idArr=ad.getIds().split(",");
		for(String id:idArr){
			Ad a=new Ad();
			a.setAid(Integer.parseInt(id));
			a.setStatus(Sys.Common.NO_USE);
			adService.update(a);
		}
		return list(ad, m);
	}
	
	
	@RequestMapping("pldel")
	public String pldel(Ad ad,HttpServletRequest request,Model m){
		String[] idArr=ad.getIds().split(",");
		for(String id:idArr){
			Ad oldA=adService.queryById(id+"");
			UploadFile.deleteFile(request, oldA.getAdimg());
			adService.deleteById(id);
		}
		return list(ad, m);
	}
	 
}
