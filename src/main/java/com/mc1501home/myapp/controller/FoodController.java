package com.mc1501home.myapp.controller;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mc1501home.myapp.service.FoodService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class FoodController {
	private final static String MAPPING = "/foodstore/";
	/*
	 * <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <script
	 * type="text/javascript"> $(function() { $("#ForwareList").click(function() {
	 * $("form").submit(function(e) { $(this).attr("action",
	 * "<c:url value='/member/list'/>"); return; }); }); });
	 */
	@Autowired
	private FoodService service;

	@RequestMapping(value = MAPPING + "{action}", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView actionMethod(@RequestParam Map<String, Object> paramMap, @PathVariable String action,
			ModelAndView modelandView) {

		String viewName = MAPPING + action;
		String forwardView = (String) paramMap.get("forwardView");
		Map<String, Object> resultMap = new HashMap<String, Object>();
		List<Object> resultList = new ArrayList<Object>();

		if ("write".equalsIgnoreCase(action)) {
			resultMap = (Map<String, Object>) service.getMemberObject(paramMap);
			viewName = MAPPING + "edit";
		} else if ("edit".equalsIgnoreCase(action)) {
			resultMap = (Map<String, Object>) service.getObject(paramMap);
		}  else if ("list".equalsIgnoreCase(action)) {
			paramMap.put("action", action);
			resultList = (List<Object>) service.getList(paramMap);
		} else if ("delete".equalsIgnoreCase(action)) {
			resultList = (List<Object>) service.deleteObject(paramMap);
		} else if ("merge".equalsIgnoreCase(action)) {
			resultList = (List<Object>) service.saveObject(paramMap);
		} /*else if ("read".equalsIgnoreCase(action)) {
			resultMap = (Map<String, Object>) service.readObject(paramMap);
		}*/

		if (forwardView != null) {
			viewName = forwardView;
		}

		modelandView.setViewName(viewName);

		modelandView.addObject("paramMap", paramMap);
		modelandView.addObject("resultMap", resultMap);
		modelandView.addObject("resultList", resultList);

		return modelandView;
	}
}
