package com.zhike.utils;

import java.util.ArrayList;
import java.util.List;

public class BgAnimationManager {
	public static List<BgAnimationModel> animationModels = new ArrayList<BgAnimationModel>();
	static{
		animationModels.add(new BgAnimationModel("关闭背景动画",null));
		animationModels.add(new BgAnimationModel("雪花","/weixin/gw/img/flash0.png"));
		animationModels.add(new BgAnimationModel("白色霓虹点","/weixin/gw/img/flash1.png"));
		animationModels.add(new BgAnimationModel("橙色霓虹点","/weixin/gw/img/flash2.png"));
		animationModels.add(new BgAnimationModel("粉色霓虹点","/weixin/gw/img/flash3.png"));
		animationModels.add(new BgAnimationModel("黄色霓虹点","/weixin/gw/img/flash4.png"));
		animationModels.add(new BgAnimationModel("蓝色霓虹点","/weixin/gw/img/flash5.png"));
		animationModels.add(new BgAnimationModel("紫色霓虹点","/weixin/gw/img/flash6.png"));
		animationModels.add(new BgAnimationModel("玫瑰","/weixin/gw/img/flash7.png"));
		animationModels.add(new BgAnimationModel("红枫叶","/weixin/gw/img/flash8.png"));
		animationModels.add(new BgAnimationModel("绿色花朵","/weixin/gw/img/flash9.png"));
		animationModels.add(new BgAnimationModel("红色花朵","/weixin/gw/img/flash10.png"));
		animationModels.add(new BgAnimationModel("橙色花朵","/weixin/gw/img/flash11.png"));
		animationModels.add(new BgAnimationModel("蓝色花朵","/weixin/gw/img/flash12.png"));
		animationModels.add(new BgAnimationModel("秋天落叶","/weixin/gw/img/flash13.png"));
	}
	
	public static List<BgAnimationModel> getAnimationModels(){
		return animationModels;
	}
	
	public static String getBgAnimationName(String value){
		String result = "关闭背景动画";
		if(value != null){
			for(BgAnimationModel model : animationModels){
				if(model.getValue() != null && value.contains(model.getValue())){
					result = model.getName();
					break;
				}
			}
		}
		return result;
	}
}
