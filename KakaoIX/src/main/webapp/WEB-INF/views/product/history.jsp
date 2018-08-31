<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page session="false" %>

	<!-- 구매내역 페이지 -->
	<div class="w3-container city">
  		<h3>구매내역</h3>
  		<h4>'${resultMap.MEMBER_NAME}'님의 구매내역입니다.</h4>
			<c:forEach items="${resultList}" var="resultData" varStatus="loop">
				<p>${resultData.PRODUCT_NAME}</p>
				<p>${resultData.PRODUCT_PRICE}원</p>
			</c:forEach>
	</div>
	<!-- 구매내역 페이지 끝 -->
	