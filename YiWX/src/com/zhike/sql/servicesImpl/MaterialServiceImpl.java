package com.zhike.sql.servicesImpl;

import java.util.List;

import com.zhike.sql.beans.MaterialBean;
import com.zhike.sql.dao.MaterialDAO;
import com.zhike.sql.services.MaterialService;

public class MaterialServiceImpl implements MaterialService {

	public MaterialDAO getMaterialDAO() {
		return materialDAO;
	}

	public void setMaterialDAO(MaterialDAO materialDAO) {
		this.materialDAO = materialDAO;
	}

	public MaterialDAO materialDAO;

	public boolean addNewMaterial(MaterialBean materialBean) {
		return materialDAO.addNewMaterial(materialBean) > 0;
	}

	public List<MaterialBean> selectAllNewMaterialByUserId(MaterialBean materialBean){
		return materialDAO.selectAllNewMaterialByUserId(materialBean);
	}
	public boolean deleteMaterialByIdAndUserId(MaterialBean materialBean){
		return materialDAO.deleteMaterialByIdAndUserId(materialBean) > 0 ;
	}
	
	public MaterialBean selectMaterialByIdAndUserId(MaterialBean materialBean){
		return materialDAO.selectMaterialByIdAndUserId(materialBean);
	}
	
	public boolean updateMaterialByIdAndUserId(MaterialBean materialBean){
		return materialDAO.updateMaterialByIdAndUserId(materialBean) > 0;
	}
	public MaterialBean selectMaterialById(MaterialBean materialBean){
		return materialDAO.selectMaterialById(materialBean);
	}
}
