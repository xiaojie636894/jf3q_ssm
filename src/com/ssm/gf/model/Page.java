package com.ssm.gf.model;

public class Page {

	/*用于分页*/
    private Long count;
    private Integer pageSize;
    private Integer pages;
    private Integer pageNo;
    private Integer startRow;
	public Long getCount() {
		return count;
	}
	public void setCount(Long count) {
		this.count = count;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	public Integer getPages() {
		return pages;
	}
	public void setPages(Long count1,Integer pageSize1) {
		int p=new Integer(count1+"")%pageSize1;
		if(p==0)this.pages = new Integer(count1+"")/pageSize1;
		else this.pages = new Integer(count1+"")/pageSize1+1; 
	}
	public Integer getPageNo() {
		return pageNo;
	}
	public void setPageNo(Integer pageNo) {
		this.pageNo = pageNo;
	}
	public Integer getStartRow() {
		return startRow;
	}
	public void setStartRow(Integer pageNo,Integer pageSize) {
		this.startRow = (pageNo-1)*pageSize;
	}
	
	 
    
    
}
