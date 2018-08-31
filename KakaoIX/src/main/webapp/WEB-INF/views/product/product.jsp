<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page session="false" %>

	<!-- 상품목록 페이지 -->
	<div class="w3-container city">
  		<div class="w3-container">
  			<h1>상품 상세 페이지</h1>
  			<p>상품이미지는 실제이미지와 조금도 다름이 없습니다.</p>
		</div>

  		<div class="w3-row-padding">
    		<div class="w3-col s4">
    			<c:set var="principalName" value="${pageContext.request.userPrincipal.name}" />
      			<img src="<c:url value='/resources/img/${resultMap.PRODUCT_IMAGE}'/>" style="width:100%; height:60%">
      				<h3>${resultMap.PRODUCT_NAME}</h3>
      				<h4>가격 : ${resultMap.PRODUCT_PRICE}원</h4>
      				<p>${resultMap.PRODUCT_EXP}</p>
					<form action="<c:url value='/product/purchase'/>" method="POST">
						<input type="hidden" name="MEMBER_ID" value="${principalName}">
						<input type="hidden" name="PRODUCT_SEQ" value="${resultMap.PRODUCT_SEQ}">
						<button type="submit" onclick="Purchase()">바로구매</button>
					</form>
    		</div>
  		</div>
	</div>
	<!-- 상품목록 페이지 끝 -->