package com.data.crawler.db.model;

import weibo4j.org.json.JSONException;
import weibo4j.org.json.JSONObject;

public class CrawlerResultBean extends CrawlerResultBaseBean{

	public long getWid() {
		return wid;
	}
	public void setWid(long wid) {
		this.wid = wid;
	}
	public long getUid() {
		return uid;
	}
	public void setUid(long uid) {
		this.uid = uid;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getThumb() {
		return thumb;
	}
	public void setThumb(String thumb) {
		this.thumb = thumb;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getCreateTime() {
		return createTime;
	}
	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public long getGoodNumber() {
		return goodNumber;
	}
	public void setGoodNumber(long goodNumber) {
		this.goodNumber = goodNumber;
	}
	public long getCommentNumber() {
		return commentNumber;
	}
	public void setCommentNumber(long commentNumber) {
		this.commentNumber = commentNumber;
	}
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public int getRefId() {
		return refId;
	}
	public void setRefId(int refId) {
		this.refId = refId;
	}
	public int getHasPic() {
		return hasPic;
	}
	public void setHasPic(int hasPic) {
		this.hasPic = hasPic;
	}
	public long wid;//微博ID是主见
	public long uid;//用户ID
	public String text;//
	public String thumb;//缩略图地址
	public String img;//图片组合
	public String createTime;//微博得发布时间
	public int type;//类型，0代表用户来源，1代表搜索结果
	public long goodNumber;//赞得数目
	public long commentNumber;//评论得数目
	public int categoryId;//分类ID
	public int refId;//搜索结果集合是从用户或者关键词下得哪个条件取得的
	public int hasPic;//是否有图片
	
	@Override
	public String toString() {
		JSONObject object = new JSONObject();
		try {
			object.put("wid", wid);
			object.put("uid", uid);
			object.put("text", text);
			object.put("thumb", thumb);
			object.put("img", wid);
			object.put("createTime", createTime);
			object.put("repostNumber", goodNumber);
			object.put("commentNumber", commentNumber);
		} catch (JSONException e) {
			e.printStackTrace();
		}

		return object.toString();
	}
}
