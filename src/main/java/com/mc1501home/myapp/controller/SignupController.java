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

	@RequestMapping(value="/{action}", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView edit(@RequestParam Map<String, Object> paramMap, @PathVariable String action, ModelAndView modelandView) {
		String viewName="/signup/";
		Map<String, Object> resultMap = new HashMap<String, Object>();
		if("signup".equalsIgnoreCase(action)) {
			viewName = viewName + action;
			resultMap = paramMap;
		}else {
			viewName = viewName+"signup";
		}
		
		modelandView.setViewName(viewName);
		modelandView.addObject("resultMap", resultMap);
		return modelandView;
	}
	
}
