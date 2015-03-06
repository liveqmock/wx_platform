package com.zhike.sql.beans;

public class PageBean {
	/*
	 * 分页信息
	 */
	public int currentPage;//当前页
	public int totalPageNum;//总页数
	public int from;
	public int pageSize;//每页数据条数
	public int numberOfPages;//页面上显示多少页
	public int totalRecord; //数据总数
	public String q;

	public PageBean() {
		currentPage =1;
		pageSize = 10;
		from = 0;
		numberOfPages = 10;
	}
	public int getTotalPageNum() {
		return (totalRecord  +  pageSize  - 1) / pageSize;
	}	
	
	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}


	public void setTotalPageNum(int totalPageNum) {
		this.totalPageNum = totalPageNum;
	}
	
	public int getFrom() {
		return (currentPage-1)*pageSize<0?0:(currentPage-1)*pageSize;
	}

	public void setFrom(int from) {
		this.from = from;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getNumberOfPages() {
		return numberOfPages;
	}

	public void setNumberOfPages(int numberOfPages) {
		this.numberOfPages = numberOfPages;
	}

	public int getTotalRecord() {
		return totalRecord;
	}

	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
	}
	public String getQ() {
		return q;
	}
	public void setQ(String q) {
		this.q = q;
	}



	
}
