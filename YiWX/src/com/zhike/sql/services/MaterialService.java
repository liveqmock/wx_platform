package com.zhike.sql.services;

import java.util.List;

import com.zhike.sql.beans.MaterialBean;

public interface MaterialService {

	public boolean addNewMaterial(MaterialBean materialBean);
	
	public List<MaterialBean> selectAllNewMaterialByUserId(MaterialBean materialBean);
	
	public boolean deleteMaterialByIdAndUserId(MaterialBean materialBean);

	public MaterialBean selectMaterialByIdAndUserId(MaterialBean materialBean);
	
	public boolean updateMaterialByIdAndUserId(MaterialBean materialBean);
	
	public MaterialBean selectMaterialById(MaterialBean materialBean);
}
