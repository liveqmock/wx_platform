package com.data.crawler.db.model;

public class CrawlerResultBaseBean {
	//分类
	public int categoryId;
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public int getHasPic() {
		return hasPic;
	}
	public void setHasPic(int hasPic) {
		this.hasPic = hasPic;
	}
	//页码
	public int page;
	//条数
	public int number;//max 50
	//是否包含图片
	public int hasPic;//0 - no ; 1- yes
	
	public int getNumberIndex() {
		return page*number;
	}
	public void setNumberIndex(int numberIndex) {
		this.numberIndex = numberIndex;
	}
	public int numberIndex;
}
