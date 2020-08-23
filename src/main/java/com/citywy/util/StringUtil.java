package com.citywy.util;

import java.util.ArrayList;
import java.util.List;

public class StringUtil {
	/**
	 * 将字符串进行分组
	 * @param data 需分组的字符串
	 * @param chs 分割字符串,缺省则为,
	 * @return 分组后的集合
	 * */
	public static List<String>group(String data, String chs) {
		List<String>res = new ArrayList<String>();
		if(data==null||data.trim().equals("")){
			return res;
		}
		if(chs==null){
			chs = ",";
		}
		String[]groups = data.trim().split(chs);
		for(String group:groups){
			if(!(group=group.trim()).equals("")){
				res.add(group);
			}
		}
		return res;
	}
	
}
