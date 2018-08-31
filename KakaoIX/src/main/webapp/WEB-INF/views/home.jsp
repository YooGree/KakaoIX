<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page session="false" %>

	<!-- 상품목록 페이지 -->
	<div class="w3-container city">
  		<h2>카카오프렌즈의 다양한 상품들을 만나보세요!</h2>
  			<div class="w3-container">
  				<p>상품이미지는 실제이미지와 조금도 다름이 없습니다.</p>
			</div>

  			<div class="w3-row-padding">
    			<div class="w3-col s4">
    				<a href="<c:url value='/product/product'/>?PRODUCT_SEQ=PRO001">
      					<img src="<c:url value='/resources/img/product1.PNG'/>" style="width:100%; height:60%">
      					<h3>차량용 방향제(통풍구형) - 어피치</h3>
      					<h4>가격 : 13900원</h4>
      				</a>
    			</div>
    			<div class="w3-col s4">
    				<a href="<c:url value='/product/product'/>?PRODUCT_SEQ=PRO002">
      					<img src="<c:url value='/resources/img/product2.PNG'/>" style="width:100%; height:60%">
      					<h3>2018 바디필로우 - 라이언</h3>
      					<h4>가격 : 39000원</h4>
      				</a>
    			</div>
    			<div class="w3-col s4">
    				<a href="<c:url value='/product/product'/>?PRODUCT_SEQ=PRO003">
      					<img src="<c:url value='/resources/img/product3.PNG'/>" style="width:100%; height:60%">
      					<h3>20cm인형 - 케로</h3>
      					<h4>가격 : 17000원</h4>
      				</a>
    			</div>
    			<div class="w3-col s4">
    				<a href="<c:url value='/product/product'/>?PRODUCT_SEQ=PRO004">
      					<img src="<c:url value='/resources/img/product4.PNG'/>" style="width:100%; height:60%">
      					<h3>페이스수첩 - 네오</h3>
      					<h4>가격 : 3000원</h4>
      				</a>
    			</div>
    			<div class="w3-col s4">
    				<a href="<c:url value='/product/product'/>?PRODUCT_SEQ=PRO005">
      					<img src="<c:url value='/resources/img/product5.PNG'/>" style="width:100%; height:60%">
      					<h3>플라워방석쿠션S - 어피치</h3>
      					<h4>가격 : 15000원</h4>
      				</a>
    			</div>
    			<div class="w3-col s4">
    				<a href="<c:url value='/product/product'/>?PRODUCT_SEQ=PRO006">
      					<img src="<c:url value='/resources/img/product6.PNG'/>" style="width:100%; height:60%">
      					<h3>레인보우 리틀인형 - 라이언</h3>
      					<h4>가격 : 29000원</h4>
      				</a>
    			</div>
  			</div>
	</div>
	<!-- 상품목록 페이지 끝 -->