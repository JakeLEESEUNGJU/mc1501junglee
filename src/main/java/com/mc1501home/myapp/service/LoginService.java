package com.mc1501home.myapp.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mc1501home.myapp.dao.ShareDao;
import com.mc1501home.myapp.util.CommonUtil;

@Service
public class LoginService {

	@Autowired
	private ShareDao dao;

	@Autowired
	private CommonUtil commonUtil;

	public Object getObject(Object dataMap) {
		String sqlMapId = "member.read";

		Object resultObject = dao.getObject(sqlMapId, dataMap);
		return resultObject;
	}

	public Object saveObject(Map<String, Object> dataMap) {
		String uniqueSequence = (String) dataMap.get("MEMBER_SEQ");

		Map<String, Object> protocol = dataMap;

		if ("".equals((String) dataMap.get("MEMBER_SEQ"))) {
			uniqueSequence = commonUtil.getUniqueSequence();
		}
		dataMap.put("AUTHORITY_ID", "AUT003");
		dataMap.put("MEMBER_SEQ", uniqueSequence);
		dataMap.put("REGISTER_SEQ", "M0006");
		dataMap.put("MODIFIER_SEQ", "M0006");
		
		String sqlMapId = "member.merge";
		Object resultKey = dao.saveObject(sqlMapId, dataMap);

		sqlMapId = "member.authority_member";
		resultKey = dao.saveObject(sqlMapId, dataMap);
		
		
		sqlMapId = "member.read";

		Object resultObject = dao.getObject(sqlMapId, dataMap);

		return resultObject;
	}

}