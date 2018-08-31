<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page session="false" %>

	<div class="w3-container">
  		<a href="<c:url value='/'/>"><img src="<c:url value='/resources/img/title.PNG'/>"></a>
  			<p>KakaoIX 온라인 코딩 테스트! 간이 쇼핑몰입니다. - BackEnd 신입 개발자 지원, 유태근입니다.</p>
	</div>

	<div class="w3-bar w3-black">
		<c:set var="principalName" value="${pageContext.request.userPrincipal.name}" />
  		<a class="w3-bar-item w3-button" href="<c:url value='/'/>">상품종류</a>
  		<a class="w3-bar-item w3-button" href="<c:url value='/member/signup'/>">회원가입</a>
  		<a class="w3-bar-item w3-button" href="<c:url value='/product/search'/>">구매내역</a>
   		<c:choose>
			<c:when test="${principalName == null}">
				<a class="w3-bar-item w3-button" href="<c:url value='/member/login'/>">로그인</a>
			</c:when>
			<c:otherwise>
				<a class="w3-bar-item w3-button" href="<c:url value='/member/mypage'/>?MEMBER_ID=${principalName}">회원정보 수정 및 탈퇴</a>
				<a class="w3-bar-item w3-button" href="<c:url value='/j_spring_security_logout' />">${principalName}님 환영합니다.</a>
			</c:otherwise>
		</c:choose>
	</div>
	
	