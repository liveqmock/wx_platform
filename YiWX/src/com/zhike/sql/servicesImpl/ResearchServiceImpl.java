package com.zhike.sql.servicesImpl;

import java.util.List;

import com.zhike.sql.beans.MessageBean;
import com.zhike.sql.beans.MessagebasicBean;
import com.zhike.sql.beans.ResearchAnswerBean;
import com.zhike.sql.beans.ResearchBean;
import com.zhike.sql.beans.ResearchPersonBean;
import com.zhike.sql.beans.ResearchbasicBean;
import com.zhike.sql.dao.MessageDAO;
import com.zhike.sql.dao.ResearchDAO;
import com.zhike.sql.services.MessageService;
import com.zhike.sql.services.ResearchService;
import com.zhike.viewmodels.MessageViewModel;
import com.zhike.viewmodels.MessagebasicViewModel;
import com.zhike.viewmodels.ResearchPersonViewModel;
import com.zhike.viewmodels.ResearchQuestionViewModel;
import com.zhike.viewmodels.ResearchViewModel;
import com.zhike.viewmodels.ResearchbasicViewModel;

public class ResearchServiceImpl implements ResearchService {

	private ResearchDAO researchDAO;
	
	public ResearchDAO getReasearchDAO() {
		return researchDAO;
	}

	public void setResearchDAO(ResearchDAO researchDAO) {
		this.researchDAO = researchDAO;
	}

	public boolean addNewResearch(ResearchViewModel researchViewModel) {
		ResearchBean researchBean = new ResearchBean();
		researchBean.setTitle(researchViewModel.getTitle());
		researchBean.setBasicid(researchViewModel.getBasicid());
		researchBean.setAnswer_a(researchViewModel.getAnswer_a());
		researchBean.setAnswer_b(researchViewModel.getAnswer_b());
		researchBean.setAnswer_c(researchViewModel.getAnswer_c());
		researchBean.setAnswer_d(researchViewModel.getAnswer_d());
		researchBean.setAnswer_e(researchViewModel.getAnswer_e());
		researchBean.setAnswer_f(researchViewModel.getAnswer_f());
		researchBean.setAnswer_g(researchViewModel.getAnswer_g());
		researchBean.setAnswer_h(researchViewModel.getAnswer_h());
		researchBean.setAnswer_i(researchViewModel.getAnswer_i());
		researchBean.setAnswer_j(researchViewModel.getAnswer_j());
		researchBean.setAnswers(researchViewModel.getAnswers());
		researchBean.setAppid(researchViewModel.getAppid());
		researchBean.setServiceid(researchViewModel.getServiceid());
		
		return researchDAO.addNewResearch(researchBean) > 0;
	}

	public List<ResearchBean> selectAllResearch(ResearchBean researchBean) {
		return researchDAO.selectAllResearch(researchBean);
	}
	
	public List<ResearchBean> selectResearchAll(ResearchViewModel researchViewModel) {
		ResearchBean researchBean = new ResearchBean();
		researchBean.setAppid(researchViewModel.getAppid());
		researchBean.setTitle(researchViewModel.getTitle());
		researchBean.setAnswers(researchViewModel.getAnswers());
		researchBean.setBasicid(researchViewModel.getBasicid());
		researchBean.setCount(researchViewModel.getCount());
		researchBean.setFrom(researchViewModel.getFrom());
		researchBean.setServiceid(researchViewModel.getServiceid());
		
		return researchDAO.selectResearchAll(researchBean);
	}

	public boolean delOneResearch(ResearchBean researchBean) {
		//ResearchBean researchBean = new ResearchBean();
		//researchBean.setId(researchViewModel.getId());
		return researchDAO.delOneResearch(researchBean)>0;
		//return researchDAO.delOneResearch(researchBean) > 0;
	}
/*
	public boolean updateMessage(MessageViewModel messageViewModel) {
		MessageBean messageBean = new MessageBean();
		messageBean.setId(messageViewModel.getId());
		messageBean.setReply(messageViewModel.getReply());
		
		return messageDAO.updateMessage(messageBean) > 0;
	}
*/
	public int selectCountInfosByPage(ResearchViewModel rearchViewModel) {
		ResearchBean rearchBean = new ResearchBean();
		rearchBean.setAppid(rearchViewModel.getAppid());
		rearchBean.setServiceid(rearchViewModel.getServiceid());
		rearchBean.setTitle(rearchViewModel.getTitle());
		rearchBean.setAnswers(rearchViewModel.getAnswers());
		
		return researchDAO.selectCountInfosByPage(rearchBean);
	}

	public boolean addNewResearchbasic(
			ResearchbasicBean researchbasicBean) {
		// TODO Auto-generated method stub
//		ResearchbasicBean researchbasicBean = new ResearchbasicBean();
//		System.out.println("---6666666666666----------");
//		researchbasicBean.setAppid(researchbasicViewModel.getAppid());
//		researchbasicBean.setUid(researchbasicViewModel.getUid());
//		researchbasicBean.setTitle(researchbasicViewModel.getTitle());
//		researchbasicBean.setKeywords(researchbasicViewModel.getKeywords());
//		researchbasicBean.setDescs(researchbasicViewModel.getDescs());
//		researchbasicBean.setBegintime(researchbasicViewModel.getBegintime());
//		researchbasicBean.setEndtime(researchbasicViewModel.getEndtime());
//		researchbasicBean.setStatus(researchbasicViewModel.getStatus());
//		researchbasicBean.setActtime(researchbasicViewModel.getActtime());
//		researchbasicBean.setImg(researchbasicViewModel.getImg());
//		System.out.println(researchbasicViewModel.getDescs());
		
		return researchDAO.addNewResearchbasic(researchbasicBean) > 0;
	}

	public boolean delOneResearchbasic(
			ResearchbasicBean researchbasicBean) {
		// TODO Auto-generated method stub
		
		return researchDAO.delOneResearchbasicinfo(researchbasicBean) >= 0 && researchDAO.delOneResearchbasic(researchbasicBean) > 0;
	}
	
	public boolean stopOneResearchbasic(
			ResearchbasicBean researchbasicBean) {
		// TODO Auto-generated method stub
		return researchDAO.stopOneResearchbasic(researchbasicBean)>0;
		//return researchDAO.stopOneResearchbasic(researchbasicBean) > 0 && researchDAO.stopResearchByServiceid(researchbasicBean) > 0;
	}

	public ResearchbasicBean getResearchbasicBean(
			ResearchbasicBean researchbasicBean) {
		// TODO Auto-generated method stub
		return researchDAO.getResearchbasicBean(researchbasicBean);
	}
	
	public ResearchBean getResearchBean(
			ResearchBean researchBean) {
		// TODO Auto-generated method stub
		return researchDAO.getResearchBean(researchBean);
	}

	public List<ResearchbasicBean> selectAllResearchbasic(
			ResearchbasicViewModel researchbasicViewModel) {
		// TODO Auto-generated method stub
		ResearchbasicBean researchbasicBean = new ResearchbasicBean();
		researchbasicBean.setAppid(researchbasicViewModel.getAppid());
		researchbasicBean.setUid(researchbasicViewModel.getUid());
//		messagebasicBean.setFrom(messagebasicViewModel.getFrom());
//		messagebasicBean.setCount(messagebasicViewModel.getCount());
		
		return researchDAO.selectAllResearchbasic(researchbasicBean);
	}

	public boolean updateResearchbasic(
			ResearchbasicViewModel researchbasicViewModel) {
		// TODO Auto-generated method stub
		ResearchbasicBean researchbasicBean = new ResearchbasicBean();
		researchbasicBean.setTitle(researchbasicViewModel.getTitle());
		researchbasicBean.setKeywords(researchbasicViewModel.getKeywords());
		researchbasicBean.setDescs(researchbasicViewModel.getDescs());
		System.out.println("researchbasicViewModel.getbegintime()+"+researchbasicViewModel.getBegintime());
		researchbasicBean.setBegintime(researchbasicViewModel.getBegintime().substring(0, 19));
		researchbasicBean.setEndtime(researchbasicViewModel.getEndtime().substring(0, 19));
		researchbasicBean.setImg(researchbasicViewModel.getImg());
		researchbasicBean.setId(researchbasicViewModel.getId());
		
		return researchDAO.updateResearchbasic(researchbasicBean) > 0;
	}

	public int selectCountmbasicInfosByPage(ResearchbasicBean researchbasicBean) {
		// TODO Auto-generated method stub
		return researchDAO.selectCountmbasicInfosByPage(researchbasicBean);
	}

	public boolean addNewMessage(MessageViewModel messageViewModel) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean addNewMessagebasic(
			MessagebasicViewModel messagebasicViewModel) {
		// TODO Auto-generated method stub
		return false;
	}



	public boolean delOneMessagebasic(MessagebasicBean messagebasicBean) {
		// TODO Auto-generated method stub
		return false;
	}

	public MessagebasicBean getMessagebasicBean(
			MessagebasicBean messagebasicBean) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<MessageBean> selectAllMessage(MessageBean messageBean) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<MessagebasicBean> selectAllMessagebasic(
			MessagebasicViewModel messagebasicViewModel) {
		// TODO Auto-generated method stub
		return null;
	}

	public int selectCountInfosByPage(MessageViewModel messageViewModel) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int selectCountmbasicInfosByPage(MessagebasicBean messagebasicBean) {
		// TODO Auto-generated method stub
		return 0;
	}

	public List<MessageBean> selectMessageAll(MessageViewModel messageViewModel) {
		// TODO Auto-generated method stub
		return null;
	}

	public boolean updateMessage(MessageViewModel messageViewModel) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean updateMessagebasic(
			MessagebasicViewModel messagebasicViewModel) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean updateResearch(ResearchViewModel researchViewModel) {
		ResearchBean researchBean = new ResearchBean();
		researchBean.setTitle(researchViewModel.getTitle());
		researchBean.setAnswers(researchViewModel.getAnswers());
		researchBean.setAnswer_a(researchViewModel.getAnswer_a());
		researchBean.setAnswer_b(researchViewModel.getAnswer_b());
		researchBean.setAnswer_c(researchViewModel.getAnswer_c());
		researchBean.setAnswer_d(researchViewModel.getAnswer_d());
		researchBean.setAnswer_e(researchViewModel.getAnswer_e());
		researchBean.setAnswer_f(researchViewModel.getAnswer_f());
		researchBean.setAnswer_g(researchViewModel.getAnswer_g());
		researchBean.setAnswer_h(researchViewModel.getAnswer_h());
		researchBean.setAnswer_i(researchViewModel.getAnswer_i());
		researchBean.setAnswer_j(researchViewModel.getAnswer_j());
		researchBean.setId(researchViewModel.getId());
		
		return researchDAO.updateResearch(researchBean) > 0;
	}

	public boolean delOneResearchbasicinfo(ResearchbasicBean researchbasicBean) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean addnewresearchperson(
			ResearchPersonViewModel researchpersonViewModel) {
		ResearchPersonBean researchpersonBean = new ResearchPersonBean();
	
		researchpersonBean.setOpenid(researchpersonViewModel.getOpenid());
		researchpersonBean.setServiceid(researchpersonViewModel.getServiceid());
		researchpersonBean.setUsername(researchpersonViewModel.getUsername());
		researchpersonBean.setTel(researchpersonViewModel.getTel());
		System.out.println("!!!!!!!!!!!!!!!!!!");
		//int test=researchDAO.addnewresearchperson(researchpersonBean);
		//System.out.println("@@@@@@@@@@@@"+test);
		//return true;
		//researchDAO.addnewresearchperson(researchpersonBean);
		//return true;
		return researchDAO.addnewresearchperson(researchpersonBean) >= 0;
	}

	public ResearchPersonBean selectServiceByID(ResearchPersonBean researchpersonBean) {
		// TODO Auto-generated method stub
		return researchDAO.selectServiceByID(researchpersonBean);
	}

	public List<ResearchAnswerBean> selectquesionbasic(
			ResearchAnswerBean researchanswerBean) {
		// TODO Auto-generated method stub
		//System.out.println("&&&&&&&&&&");
		//System.out.println("researchanswerBean.getopenid="+researchanswerBean.getOpenid());
		//System.out.println("researchanswerBean.getserviceid="+researchanswerBean.getServiceid());
		return researchDAO.selectquesionbasic(researchanswerBean);
	}
	
	public boolean addquestion(
			ResearchQuestionViewModel researchquestionViewModel) {
		//ResearchQuestionViewModel researchquestionViewModel1 = new ResearchQuestionViewModel();
		ResearchAnswerBean researchanswerBean =new ResearchAnswerBean();
		researchanswerBean.setUserid(researchquestionViewModel.getUserid());
		researchanswerBean.setAnswerid(researchquestionViewModel.getAnswerid());
		researchanswerBean.setAnswer_a(researchquestionViewModel.getAnswer_a());
		researchanswerBean.setAnswer_b(researchquestionViewModel.getAnswer_b());
		researchanswerBean.setAnswer_c(researchquestionViewModel.getAnswer_c());
		researchanswerBean.setAnswer_d(researchquestionViewModel.getAnswer_d());
		researchanswerBean.setAnswer_e(researchquestionViewModel.getAnswer_e());
		researchanswerBean.setAnswer_f(researchquestionViewModel.getAnswer_f());
		researchanswerBean.setAnswer_g(researchquestionViewModel.getAnswer_g());
		researchanswerBean.setAnswer_h(researchquestionViewModel.getAnswer_h());
		researchanswerBean.setAnswer_i(researchquestionViewModel.getAnswer_i());
		researchanswerBean.setAnswer_j(researchquestionViewModel.getAnswer_j());
		//researchanswerBean.setAnswerid(researchquestionViewModel.getAnswerid());
		return researchDAO.addquestion(researchanswerBean) > 0;
	}
	
	public boolean addquestiondesc(
			ResearchQuestionViewModel researchquestionViewModel) {
		//ResearchQuestionViewModel researchquestionViewModel1 = new ResearchQuestionViewModel();
		ResearchAnswerBean researchanswerBean =new ResearchAnswerBean();
		researchanswerBean.setUserid(researchquestionViewModel.getUserid());
		researchanswerBean.setServiceid(researchquestionViewModel.getServiceid());
		researchanswerBean.setAnswer_desc(researchquestionViewModel.getAnswer_desc());
		
		//researchanswerBean.setAnswerid(researchquestionViewModel.getAnswerid());
		return researchDAO.addquestiondesc(researchanswerBean) > 0;
	}

	public ResearchPersonBean selectmaxqidByID(ResearchPersonBean researchpersonBean) {
		// TODO Auto-generated method stub
		return researchDAO.selectmaxqidByID(researchpersonBean);
	}
	
	public ResearchPersonBean selectdescByID(ResearchPersonBean researchpersonBean) {
		// TODO Auto-generated method stub
		return researchDAO.selectdescByID(researchpersonBean);
	}
	
	public ResearchBean selectesearchresult_a(
			ResearchBean researchBean) {
		// TODO Auto-generated method stub
		return researchDAO.selectesearchresult_a(researchBean);
	}
	public ResearchBean selectesearchresult_b(
			ResearchBean researchBean) {
		// TODO Auto-generated method stub
		return researchDAO.selectesearchresult_b(researchBean);
	}
	public ResearchBean selectesearchresult_c(
			ResearchBean researchBean) {
		// TODO Auto-generated method stub
		return researchDAO.selectesearchresult_c(researchBean);
	}
	public ResearchBean selectesearchresult_d(
			ResearchBean researchBean) {
		// TODO Auto-generated method stub
		return researchDAO.selectesearchresult_d(researchBean);
	}
	public ResearchBean selectesearchresult_e(
			ResearchBean researchBean) {
		// TODO Auto-generated method stub
		return researchDAO.selectesearchresult_e(researchBean);
	}
	public ResearchBean selectesearchresult_f(
			ResearchBean researchBean) {
		// TODO Auto-generated method stub
		return researchDAO.selectesearchresult_f(researchBean);
	}
	public ResearchBean selectesearchresult_g(
			ResearchBean researchBean) {
		// TODO Auto-generated method stub
		return researchDAO.selectesearchresult_g(researchBean);
	}
	public ResearchBean selectesearchresult_h(
			ResearchBean researchBean) {
		// TODO Auto-generated method stub
		return researchDAO.selectesearchresult_h(researchBean);
	}
	public ResearchBean selectesearchresult_i(
			ResearchBean researchBean) {
		// TODO Auto-generated method stub
		return researchDAO.selectesearchresult_i(researchBean);
	}
	public ResearchBean selectesearchresult_j(
			ResearchBean researchBean) {
		// TODO Auto-generated method stub
		return researchDAO.selectesearchresult_j(researchBean);
	}
	public ResearchBean selectrs(
			ResearchBean researchBean) {
		// TODO Auto-generated method stub
		return researchDAO.selectrs(researchBean);
	}
	
	public ResearchbasicBean getresearchbasicdesc(
			ResearchbasicBean researchbasicBean) {
		// TODO Auto-generated method stub
		return researchDAO.getresearchbasicdesc(researchbasicBean);
	}
}
