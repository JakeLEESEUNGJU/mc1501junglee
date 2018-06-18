package com.mc1501home.myapp.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mc1501home.myapp.service.SignupService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value = "signup")
public class SignupController {
	
	@Autowired
	private SignupService service;

	@RequestMapping(value="/{action}", method= {RequestMethod.GET, RequestMethod.POST} )
	public ModelAndView actionMethod(@RequestParam Map<String, Object> paramMap,
							@PathVariable String action, ModelAndView modelandView) {
		String viewName = "signup";
		Map<String, Object> resultMap = new HashMap<String, Object>();
		
		if("read".equalsIgnoreCase(action)) {
			//회원가입에 입력한 정보 보여주기
			
			System.out.println("Entering Read mode");
			resultMap = (Map<String, Object>) service.getObject(paramMap);
			modelandView.addObject("resultMap", resultMap);
			action = "/read";
		} else{
			//회원가입창으로 이동
			System.out.println("Entering signup mode");
			action = "/signup";
		}
			
		viewName = viewName + action;
		modelandView.setViewName(viewName);
		
		return modelandView;
	}
}
