package com.mycompany.kakao.controller;

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

import com.mycompany.kakao.service.MemberService;
import com.mycompany.kakao.service.ProductService;
import com.mycompany.kakao.util.CommonUtil;

@Controller
public class ProductController {
	
	// 2021-05-04 Sublime 테스트
	// 2021-05-04 테스트
	// 상품 관련 데이터 처리를 하기 위한 서비스단 오토와이어
	@Autowired
	private ProductService service;
	
	// RequestMapping를 이용하여 매핑값, 데이터 전송 방식을 뷰로부터 가져옴, 이후 RequestParam을 이용하여 넘어오는 데이터를 받고, modelandView 생성
	@RequestMapping(value = "/product/{action}", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView actionMethod(@RequestParam Map<String, Object> paramMap, @PathVariable String action, ModelAndView modelandView) {
		
		String viewName = "/product/";

		Map<String, Object> resultMap = new HashMap<String, Object>();
		List<Object> resultList = new ArrayList<Object>();
		
		// 상품 상세화면 들어가기
		if ("product".equalsIgnoreCase(action)) {
			viewName = viewName + action;
			resultMap = (Map<String, Object>) service.getObject(paramMap);
		// 상품 주문
		} else if ("purchase".equalsIgnoreCase(action)) {
			viewName = "home";
			service.setObject(paramMap);
		// 내역 검색화면 들어가기
		} else if ("search".equalsIgnoreCase(action)) {
			viewName = viewName + action;
		// 내역 목록 보여주기
		} else if ("history".equalsIgnoreCase(action)) {
			viewName = viewName + action;
			resultList = (List<Object>) service.getList(paramMap);
			resultMap = (Map<String, Object>) resultList.get(0);
		}
		
		modelandView.setViewName(viewName);
		modelandView.addObject("paramMap", paramMap);
		modelandView.addObject("resultMap", resultMap);
		modelandView.addObject("resultList", resultList);

		return modelandView;
	}
}