package com.zhike.sql.services;

import java.util.List;

//import com.zhike.sql.beans.MessageBean;
//import com.zhike.sql.beans.MessagebasicBean;
import com.zhike.sql.beans.GuaguakaBean;
import com.zhike.sql.beans.ResearchAnswerBean;
import com.zhike.sql.beans.ResearchBean;
import com.zhike.sql.beans.ResearchPersonBean;
import com.zhike.sql.beans.ResearchbasicBean;
//import com.zhike.viewmodels.MessageViewModel;
//import com.zhike.viewmodels.MessagebasicViewModel;
import com.zhike.viewmodels.ResearchPersonViewModel;
import com.zhike.viewmodels.ResearchQuestionViewModel;
import com.zhike.viewmodels.ResearchViewModel;
import com.zhike.viewmodels.ResearchbasicViewModel;

public interface ResearchService {

	public boolean addNewResearch(ResearchViewModel researchViewModel);
	
	public List<ResearchBean> selectAllResearch(ResearchBean researchBean);
	
	public boolean updateResearch(ResearchViewModel researchViewModel);
	
	public boolean delOneResearch(ResearchBean researchBean);
	
	public int selectCountInfosByPage(ResearchViewModel researchViewModel);
	
	public List<ResearchBean> selectResearchAll(ResearchViewModel researchViewModel);
	
	
//	public boolean addNewResearchbasic(ResearchbasicViewModel researchbasicViewModel);
	
	public boolean addNewResearchbasic(ResearchbasicBean researchbasicBean);
	
	public boolean updateResearchbasic(ResearchbasicViewModel researchbasicViewModel);
	
	public boolean delOneResearchbasic(ResearchbasicBean researchbasicBean);
	
	public boolean delOneResearchbasicinfo(ResearchbasicBean researchbasicBean);
	
	public ResearchbasicBean getResearchbasicBean(ResearchbasicBean researchbasicBean);
	
	public ResearchBean getResearchBean(ResearchBean researchBean);
	
	public List<ResearchbasicBean> selectAllResearchbasic(ResearchbasicViewModel researchbasicViewModel);
	
	public int selectCountmbasicInfosByPage(ResearchbasicBean researchbasicBean);
	
	public boolean stopOneResearchbasic(ResearchbasicBean researchbasicBean);
	
	public ResearchBean selectesearchresult_a(ResearchBean researchBean);
	public ResearchBean selectesearchresult_b(ResearchBean researchBean);
	public ResearchBean selectesearchresult_c(ResearchBean researchBean);
	public ResearchBean selectesearchresult_d(ResearchBean researchBean);
	public ResearchBean selectesearchresult_e(ResearchBean researchBean);
	public ResearchBean selectesearchresult_f(ResearchBean researchBean);
	public ResearchBean selectesearchresult_g(ResearchBean researchBean);
	public ResearchBean selectesearchresult_h(ResearchBean researchBean);
	public ResearchBean selectesearchresult_i(ResearchBean researchBean);
	public ResearchBean selectesearchresult_j(ResearchBean researchBean);
	public ResearchBean selectrs(ResearchBean researchBean);
//	public List<MessagebasicBean> selectmbasicMessageAll(MessagebasicViewModel messagebasicViewModel);
	
	
	public ResearchPersonBean selectServiceByID(ResearchPersonBean researchpersonBean);
	
	public boolean addnewresearchperson(ResearchPersonViewModel researchpersonViewModel);
	
	public List<ResearchAnswerBean> selectquesionbasic(ResearchAnswerBean researchanswerBean);
	
	public boolean addquestion( ResearchQuestionViewModel researchquiestionViewModel);
	public boolean addquestiondesc( ResearchQuestionViewModel researchquiestionViewModel);
	public ResearchPersonBean selectmaxqidByID(ResearchPersonBean researchpersonBean);
	public ResearchPersonBean selectdescByID(ResearchPersonBean researchpersonBean);
	public ResearchbasicBean getresearchbasicdesc(ResearchbasicBean researchbasicBean);
}
