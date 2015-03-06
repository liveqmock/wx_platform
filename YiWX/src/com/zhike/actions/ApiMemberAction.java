package com.zhike.actions;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONValue;

import weibo4j.org.json.JSONArray;
import weibo4j.org.json.JSONException;
import weibo4j.org.json.JSONObject;

import com.opensymphony.xwork2.ActionSupport;
import com.zhike.finals.Constat;
import com.zhike.sql.beans.MemberEntityCardBean;
import com.zhike.sql.beans.MemberInfoBean;
import com.zhike.sql.services.MemberService;
import com.zhike.utils.ApplicationContextFactory;
import com.zhike.utils.RequestScopeFactory;

public class ApiMemberAction extends ActionSupport{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public InputStream inputStream;
	
	public InputStream getInputStream() {
		return inputStream;
	}
	
	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}

	public String data;


	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	@Override
	public String execute() {
		//接收数据
		
		String result = null;
		JSONArray arrayObject = null;
		List<MemberEntityCardBean> memberEntityCardBeanList = new ArrayList<MemberEntityCardBean>();
		try {
			JSONObject jsonObject = new JSONObject(data);
			if (null != jsonObject&&jsonObject.has("entityCard")) {
				arrayObject = new JSONArray(jsonObject.getString("entityCard"));
				for(int i=0;i<arrayObject.length();i++){
					JSONObject jsonObj = (JSONObject) arrayObject.get(i);
					MemberEntityCardBean entityCard = new MemberEntityCardBean();

					String service_id = String.valueOf(jsonObj.get("service_id"))  ;
					String card_id = String.valueOf(jsonObj.get("card_id"))   ;
					String card_password = String.valueOf(jsonObj.get("card_password"))   ;
					String card_yue = String.valueOf(jsonObj.get("card_yue"))   ;
					String card_jifen = String.valueOf(jsonObj.get("card_jifen"))   ;
					String type = String.valueOf(jsonObj.get("type"))   ;
					
					entityCard.setService_id(Long.parseLong(service_id));
					entityCard.setCard_id(card_id);
					entityCard.setCard_password(card_password);
					entityCard.setCard_yue(card_yue);
					entityCard.setCard_jifen(card_jifen);
					entityCard.setType(Integer.parseInt(type));
					
					memberEntityCardBeanList.add(entityCard);
				}
			}
			
		} catch (JSONException e1) {
			// TODO Auto-generated catch block
			//e1.printStackTrace();
			result = "{'result':'error','success_count':'0','errorCount':'0','errorReason':'JSON解析失败'}";
		}
		
		//处理业务
		if(memberEntityCardBeanList.size()>0){
			int successCount = 0;
			int errorCount = 0;
			String errorReason = "";
			for(int i=0;i<memberEntityCardBeanList.size();i++){
				MemberService memberService  = (MemberService) ApplicationContextFactory.getBean(Constat.MEMBERSERVICE);
				MemberEntityCardBean entityCard = memberEntityCardBeanList.get(i);
				MemberEntityCardBean tempEntityCard = memberService.selectEntityCardByCardId(entityCard);
				//类型 1 新增 2修改 3删除
				switch (entityCard.getType()) {
				case 1://新卡 新增
					if(tempEntityCard==null){
						memberService.insertOneEntityCard(entityCard);
						successCount++;
					}else{
						errorReason += entityCard.getCard_id()+"实体卡号重复,增加失败!";
						errorCount++;
					}
					break;
				case 2:
					
					
					if(tempEntityCard!=null){
						//业务逻辑
						if(tempEntityCard.getMemberInfo_id()!=0){
							//修改会员信息
							MemberInfoBean memberInfoBean = new MemberInfoBean();
							memberInfoBean.setId(tempEntityCard.getMemberInfo_id());
							memberInfoBean.setService_id(tempEntityCard.getService_id());
							memberInfoBean.setYue(Integer.parseInt(entityCard.getCard_yue()));
							memberInfoBean.setJifen(Integer.parseInt(entityCard.getCard_jifen()));
							memberService.updateOneMemberInfoByAPI(memberInfoBean);
						}
						//修改实体卡信息
						entityCard.setId(tempEntityCard.getId());
						memberService.updateOneEntityCard(entityCard);
						successCount++;
					}else{
						errorReason += entityCard.getCard_id()+"实体卡号不存在,修改失败!";
						errorCount++;
					}
					break;
				case 3:
					if(tempEntityCard!=null){
						//业务逻辑
						if(tempEntityCard.getMemberInfo_id()!=0){
							//删除会员信息
							MemberInfoBean memberInfoBean = new MemberInfoBean();
							memberInfoBean.setId(tempEntityCard.getMemberInfo_id());
							memberInfoBean.setService_id(tempEntityCard.getService_id());
							memberService.delOneMemberInfoByAPI(memberInfoBean);
						}
						//删除实体卡信息
						entityCard.setId(tempEntityCard.getId());
						memberService.delOneEntityCard(entityCard);
						successCount++;
					}else{
						errorReason += entityCard.getCard_id()+"实体卡号不存在,删除失败!";
						errorCount++;
					}
					break;

				default:
					break;
				}
			
			}
		
			result = "{'result':'success','success_count':'"+memberEntityCardBeanList.size()+"','errorCount':'"+errorCount+"','errorReason':'"+errorReason+"'}";
		}else{
			result = "{'result':'success','success_count':'0','errorCount':'0','errorReason':'0'}";
		}
		
		
		
		
		try {
			inputStream = new ByteArrayInputStream(result.getBytes("UTF-8"));
		} catch (UnsupportedEncodingException e) {
			//e.printStackTrace();
		}
		return SUCCESS;
	}
	

}
