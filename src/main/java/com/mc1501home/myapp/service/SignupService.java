package com.mc1501home.myapp.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Service;

@Service
public class SignupService {
	public Object getObject(Object dataMap) {
		Map<String, Object> resultObject = new HashMap<String, Object>();
		
		final char SPACE_BAR = ' ';
			
		/* set protocol */
		Map<String, Object> protocol = new HashMap<String, Object>();
		protocol.put("10", "경기도");
		protocol.put("20", "전라도");
		protocol.put("30", "경상도");
		protocol.put("100", "수영");
		protocol.put("200", "음악감상");
		protocol.put("300", "공부");
		/* end set protocol */
		
		
		//1. addr
			//
		String addrName = (String) protocol.get(((Map)dataMap).get("addr"));
		
		//2. hobbies
			//복수개 선택이 가능한 hobbies를 하나의 string에 저장.
//		StringBuffer hobbies = new StringBuffer();
//		for(String hobbyKey : (String[]) protocol.get(((Map)dataMap).get("hobbies"))) {
//				//key값으로 전달된 hobby를 실제 값(수영, 음악감상 등)으로 변경
//			String hobbyName = (String) protocol.get(hobbyKey);
//			hobbies.append(hobbyName);
//			hobbies.append(SPACE_BAR);
//		}
		
		resultObject.put("email", ((Map)dataMap).get("email"));
		resultObject.put("emailCheck", ((Map)dataMap).get("emailCheck"));
		resultObject.put("password", ((Map)dataMap).get("password"));
		resultObject.put("passwordCheck", ((Map)dataMap).get("passwordCheck"));
		resultObject.put("name", ((Map)dataMap).get("name"));
		resultObject.put("birthday", ((Map)dataMap).get("birthday"));
		resultObject.put("telNum", ((Map)dataMap).get("telNum"));
		resultObject.put("addr", addrName);
//		resultObject.put("hobbies", hobbies);
		

		return resultObject;
	}
	
	/*
	 * 
	 * 	

		}
	 */
}
