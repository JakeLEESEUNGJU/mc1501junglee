package com.mc1501home.myapp.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mc1501home.myapp.dao.ShareDao;
import com.mc1501home.myapp.util.CommonUtil;




@Service
public class MemberService {

	@Autowired
	private ShareDao dao;
	
	@Autowired
	private CommonUtil commonUtil;

	public Object getList(Object dataMap) {
		String sqlMapId = "member.list";

		Object resultObject = dao.getList(sqlMapId, dataMap);
		
		return resultObject;
	}
	public Object getMemberList(Object dataMap) {
		String sqlMapId = "authoritymember.list";

		Object resultObject = dao.getList(sqlMapId, dataMap);
		
		return resultObject;
	}

	public Object getObject(Object dataMap) {
		String sqlMapId = "member.read";

		Object resultObject = dao.getObject(sqlMapId, dataMap);
		
		return resultObject;
	}

	public Object saveObject(Map<String, Object> dataMap) {
		String uniqueSequence = (String) dataMap.get("MEMBER_SEQ");
		
		if("".equals(uniqueSequence)){
			uniqueSequence = commonUtil.getUniqueSequence();
		}
		
		dataMap.put("AUTHORITY_ID", "AUT003");
		dataMap.put("MEMBER_SEQ", uniqueSequence);
		dataMap.put("REGISTER_SEQ", "M0006");
		dataMap.put("MODIFIER_SEQ", "M0006");
		
		String sqlMapId = "member.merge";
		Object resultKey = dao.saveObject(sqlMapId, dataMap);
		System.out.println("회원 생성 했나요? "+resultKey);
		
		
		sqlMapId ="member.authority_member";
		resultKey = dao.saveObject(sqlMapId, dataMap);
		System.out.println("회원권한  생성 했나요? "+resultKey);
		
		sqlMapId = "member.read";
		
		Object resultObject = dao.getObject(sqlMapId, dataMap);

		return resultObject;
	}

	public Object deleteObject(Object dataMap) {
		// delete child record authority
		String sqlMapId = "authorityRmember.delete";

		Integer resultKey = (Integer) dao.deleteObject(sqlMapId, dataMap);

		// delete Mother record authority
		sqlMapId = "member.delete";

		resultKey = (Integer) dao.deleteObject(sqlMapId, dataMap);

		// get Member List
		sqlMapId = "member.list";
		
		Object resultObject = dao.getList(sqlMapId, dataMap);
		
		return resultObject;
	}
}