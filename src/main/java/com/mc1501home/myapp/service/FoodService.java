package com.mc1501home.myapp.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mc1501home.myapp.dao.ShareDao;
import com.mc1501home.myapp.util.CommonUtil;



@Service
public class FoodService {

	@Autowired
	private ShareDao dao;
	
	@Autowired
	private CommonUtil commonUtil;

	public Object getList(Object dataMap) {
		String sqlMapId = "foodstore.list";

		Object resultObject = dao.getList(sqlMapId, dataMap);
		
		
		
		return resultObject;
	}


	public Object getObject(Object dataMap) {
		String sqlMapId = "foodstore.read";

		Object resultObject = dao.getObject(sqlMapId, dataMap);
		
		return resultObject;
	}

	public Object saveObject(Map<String, Object> dataMap) {
		String uniqueSequence = (String) dataMap.get("BOARD_SEQ");
		
		if("".equals(uniqueSequence)){
			uniqueSequence = commonUtil.getUniqueSequence();
		}
		dataMap.put("MEMBER_SEQ", uniqueSequence);
		dataMap.put("REGISTER_SEQ", "UUID-1111-1111111");
		dataMap.put("MODIFIER_SEQ", "UUID-1111-1111111");
		
		String sqlMapId = "foodstore.merge";

		Object resultKey = dao.saveObject(sqlMapId, dataMap);
		
		sqlMapId = "foodstore.list";
		
		Object resultObject = dao.getList(sqlMapId, dataMap);

		return resultObject;
	}

	public Object deleteObject(Object dataMap) {
		// delete child record authority
		String sqlMapId = "authorityRmember.delete";

		Integer resultKey = (Integer) dao.deleteObject(sqlMapId, dataMap);

		// delete Mother record authority
		sqlMapId = "foodstore.delete";

		resultKey = (Integer) dao.deleteObject(sqlMapId, dataMap);

		// get Member List
		sqlMapId = "foodstore.list";
		
		Object resultObject = dao.getList(sqlMapId, dataMap);
		
		return resultObject;
	}
	
	
}