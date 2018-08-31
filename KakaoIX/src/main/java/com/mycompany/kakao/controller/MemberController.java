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
import com.mycompany.kakao.util.CommonUtil;

@Controller
public class MemberController {
	
	// 회원 관련 데이터 처리를 하기 위한 서비스단 오토와이어
	@Autowired
	private MemberService service;
	
	// 임의의 시퀀스 생성을 위한 오토와이어
	@Autowired
	private CommonUtil commonUtil;
	
	// RequestMapping를 이용하여 매핑값, 데이터 전송 방식을 뷰로부터 가져옴, 이후 RequestParam을 이용하여 넘어오는 데이터를 받고, modelandView 생성
	@RequestMapping(value = "/member/{action}", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView actionMethod(@RequestParam Map<String, Object> paramMap, @PathVariable String action, ModelAndView modelandView) {
		
		String viewName = "/member/";

		Map<String, Object> resultMap = new HashMap<String, Object>();
		List<Object> resultList = new ArrayList<Object>();
		
		// 회원가입 화면 들어가기
		if ("signup".equalsIgnoreCase(action)) {
			viewName = viewName + action;
		// 데이터베이스에 회원 등록
		} else if ("insert".equalsIgnoreCase(action)) {
			viewName = viewName + "login";
			paramMap.put("MEMBER_SEQ", commonUtil.getUniqueSequence());
			service.saveObject(paramMap);
		// 로그인 화면 들어가기
		} else if ("login".equalsIgnoreCase(action)) {
			viewName = viewName + action;
		// 내 정보 확인하기
		} else if ("mypage".equalsIgnoreCase(action)) {
			viewName = viewName + action;
			resultMap = (Map<String, Object>) service.getObject(paramMap);
		// 내 정보 수정하기
		} else if ("update".equalsIgnoreCase(action)) {
			viewName = viewName + "mypage";
			service.updateObject(paramMap);
		} else if ("delete".equalsIgnoreCase(action)) {
			viewName = "home";
			service.deleteObject(paramMap);
		}
		
		modelandView.setViewName(viewName);
		modelandView.addObject("paramMap", paramMap);
		modelandView.addObject("resultMap", resultMap);
		modelandView.addObject("resultList", resultList);

		return modelandView;
	}
}