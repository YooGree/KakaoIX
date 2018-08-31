package com.mycompany.kakao.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.kakao.dao.ShareDao;

@Service
public class MemberService {
	
	@Autowired
	private ShareDao dao;
	String sqlMapId;
	
	// 회원 가입 
	public void saveObject(Map<String, Object> dataMap) {
		
		// 회원 테이블에 정보 삽입
		sqlMapId = "member.insert";
		dao.saveObject(sqlMapId, dataMap);
	}
	
	// 회원 업데이트
	public void updateObject(Map<String, Object> dataMap) {
		
		sqlMapId = "member.update";
		dao.updateObject(sqlMapId, dataMap);
	}
	
	// 회원 정보
	public Object getObject(Map<String, Object> dataMap) {
		
		sqlMapId = "member.info";
		Object resultMap = dao.getObject(sqlMapId, dataMap);
		return resultMap;
	}
	
	// 회원 탈퇴
	public void deleteObject(Map<String, Object> dataMap) {
		
		sqlMapId = "member.setseq";
		String result = (String) dao.getObject(sqlMapId, dataMap);
		dataMap.put("MEMBER_SEQ", result);

		sqlMapId = "member.delete_purchase";
		dao.deleteObject(sqlMapId, dataMap);
		
		sqlMapId = "member.delete_member";
		dao.deleteObject(sqlMapId, dataMap);
	}
	
	
}
