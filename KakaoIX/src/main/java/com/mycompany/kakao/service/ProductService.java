package com.mycompany.kakao.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.kakao.dao.ShareDao;

@Service
public class ProductService {
	
	@Autowired
	private ShareDao dao;
	String sqlMapId;
	
	// 제품정보 불러오기
	public Object getObject(Map<String, Object> dataMap) {
		
		Map<String, Object> resultMap = new HashMap<String, Object>();
		sqlMapId = "product.info";
		resultMap = (Map<String, Object>) dao.getObject(sqlMapId, dataMap);
		return resultMap;
	}
	
	// 구매하기
	public void setObject(Map<String, Object> dataMap) {
		
		sqlMapId = "product.setseq";
		String result = (String) dao.getObject(sqlMapId, dataMap);
		dataMap.put("MEMBER_SEQ", result);
		
		sqlMapId = "product.purchase";
		dao.insertObject(sqlMapId, dataMap);
	}
	
	// 내역보기
	public Object getList(Map<String, Object> dataMap) {
		
		sqlMapId = "product.history";
		Object resultList = dao.getList(sqlMapId, dataMap);
		return resultList;
	}
	
}
