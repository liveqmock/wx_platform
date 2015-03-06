package com.data.crawler.view.model;

public class CrawlerQueryModel {
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
	//分类
	public int categoryId;
	//页码
	public int page;
	//条数
	public int number;//max 50
	//是否包含图片
	public int hasPic;//0 - no ; 1- yes
	//order by wid,微博发布时间进行排序，逆序
}
