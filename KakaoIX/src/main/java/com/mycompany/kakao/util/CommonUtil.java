package com.mycompany.kakao.util;

import java.util.UUID;

import org.springframework.stereotype.Component;

// 임의의 시퀀스를 회원가입시에 부여하기 위한 컴포넌트
@Component
public class CommonUtil {	
	
	public String getUniqueSequence() {
		UUID uuid = UUID.randomUUID();
		return uuid.toString().replaceAll("-", "");
	}
	
}
