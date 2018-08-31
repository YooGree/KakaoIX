<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page session="false" %>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script type="text/javascript" src="<c:url value='/resources/js/jquery-1.12.4.min.js' />"></script>

	<title>KakaoIX Test</title>
		<script>
		// 비밀번호 체크를 위한 함수
		function valid_password(form) {
			if (form.MEMBER_PW.value == form.MEMBER_PW2.value) {
				alert("회원가입 완료.");
				return true;
			}
			form.MEMBER_PW2.focus();
			alert("비밀번호를 확인해주세요.");
			return false;
		}
		// 탈퇴 완료 이벤트
		function Delete() {
			alert("탈퇴 완료");
		} 
		</script>
