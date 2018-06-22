package com.mc1501home.myapp.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mc1501home.myapp.dao.ShareDao;
import com.mc1501home.myapp.util.CommonUtil;



@Service
public class BoardService {

	@Autowired
	private ShareDao dao;
	
	@Autowired
	private CommonUtil commonUtil;

	public Object getList(Object dataMap) {
		String sqlMapId = "board.list";

		Object resultObject = dao.getList(sqlMapId, dataMap);
		
		return resultObject;
	}


	public Object getObject(Object dataMap) {
		String sqlMapId = "board.read";

		Object resultObject = dao.getObject(sqlMapId, dataMap);
		return resultObject;
		
	}
	public Object getMemberObject(Object dataMap) {
		String sqlMapId = "member.read";
		
		Object resultObject = dao.getObject(sqlMapId, dataMap);
		return resultObject;
		
	}
	

	public Object saveObject(Map<String, Object> dataMap) {
		String uniqueSequence = (String) dataMap.get("MC_BOARD_SEQ");
		
		if("".equals(uniqueSequence)){
			uniqueSequence = commonUtil.getUniqueSequence();
		}
		dataMap.put("MC_BOARD_SEQ", uniqueSequence);
		String sqlMapId = "member.searchAI";
		Map<String, Object> item= (Map<String, Object>) dao.getObject(sqlMapId, dataMap);
		String authority= (String) item.get("AUTHORITY_ID");
		dataMap.put("AUTHORITY_ID", authority );
		authority= (String) item.get("NAME");
		dataMap.put("NAME", authority );
		
		
		sqlMapId = "board.merge";

		Object resultKey = dao.saveObject(sqlMapId, dataMap);
		
		sqlMapId = "board.read";
		
		Object resultObject = dao.getObject(sqlMapId, dataMap);

		return resultObject;
	}

	public Object deleteObject(Object dataMap) {
		// delete child record authority
		String sqlMapId = "board.delete";

		Integer resultKey = (Integer) dao.deleteObject(sqlMapId, dataMap);

		/*// delete Mother record authority
		sqlMapId = "member.delete";

		resultKey = (Integer) dao.deleteObject(sqlMapId, dataMap);
		*/
		//get Member List
		sqlMapId = "board.list";
		
		Object resultObject = dao.getList(sqlMapId, dataMap);
		
		return resultObject;
	}
	
	
}