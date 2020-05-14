package com.direct.est.entity;

public class PageModel {

	private int currPage=1;//当前页
	private int total;//总条数
	private int pageSize=2;//单页条数
	private int currNum; //每页开始条数
	private int nextPage;//下一页
	private int prevPage;//上一页
	private int pageTotal;//总页数
	public PageModel() {
		super();
	}
	
	public PageModel(int currPage, int total, int pageSize) {
		super();
		this.currPage = currPage;
		this.total = total;
		this.pageSize = pageSize;
	}
	public int getCurrPage() {
		return currPage;
	}
	public void setCurrPage(int currPage) {
		this.currPage = currPage;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	
	public int getNextPage() {
		return currPage+1 > getPageTotal() ? getPageTotal():currPage+1 ;
	}
	
	public int getCurrNum(){
		//索引位置从0开始
		return (currPage-1)*pageSize;
	}
	
	public int getPrevPage() {
		return currPage-1<1 ? 1:currPage-1;
	}
	public int getPageTotal() {
		return total%pageSize==0?total/pageSize:total/pageSize+1;
	}
}
