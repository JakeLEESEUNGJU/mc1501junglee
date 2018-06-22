package com.mc1501home.myapp.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mc1501home.myapp.dao.ShareDao;
import com.mc1501home.myapp.util.CommonUtil;



@Service
public class GetJobService {

	@Autowired
	private ShareDao dao;
	
	@Autowired
	private CommonUtil commonUtil;

	public Object getList(Object dataMap) {
		String sqlMapId = "getjob.list";

		Object resultObject = dao.getList(sqlMapId, dataMap);
		
		
		
		return resultObject;
	}


	public Object getObject(Object dataMap) {
		String sqlMapId = "getjob.read";

		Object resultObject = dao.getObject(sqlMapId, dataMap);
		
		return resultObject;
	}

	public Object saveObject(Map<String, Object> dataMap) {
		String uniqueSequence = (String) dataMap.get("BOARD_SEQ");
		
		if("".equals(uniqueSequence)){
			uniqueSequence = commonUtil.getUniqueSequence();
		}
		dataMap.put("MEMBER_SEQ", uniqueSequence);
		
		dataMap.put("MC_BOARD_SEQ", uniqueSequence);
		String sqlMapId = "member.searchAI";
		Map<String, Object> item= (Map<String, Object>) dao.getObject(sqlMapId, dataMap);
		String authority ;
		authority= (String) item.get("AUTHORITY_ID");
		dataMap.put("AUTHORITY_ID", authority );
		
		sqlMapId = "member.merge";

		Object resultKey = dao.saveObject(sqlMapId, dataMap);
		
		sqlMapId = "getjob.read";
		
		Object resultObject = dao.getObject(sqlMapId, dataMap);

		return resultObject;
	}

	public Object deleteObject(Object dataMap) {
		// delete child record authority
		String sqlMapId = "authorityRmember.delete";

		Integer resultKey = (Integer) dao.deleteObject(sqlMapId, dataMap);

		// delete Mother record authority
		sqlMapId = "getjob.delete";

		resultKey = (Integer) dao.deleteObject(sqlMapId, dataMap);

		// get Member List
		sqlMapId = "getjob.list";
		
		Object resultObject = dao.getList(sqlMapId, dataMap);
		
		return resultObject;
	}
	
	
}