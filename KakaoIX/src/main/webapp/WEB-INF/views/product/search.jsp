<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page session="false" %>

	<!-- 구매내역 페이지 -->
	<div class="w3-container city">
  		<h3>구매내역</h3>
		<!-- 아이디 입력 -->
		<form action="<c:url value='/product/history'/>" method="POST">
		<div class="form-group">
			<label class="control-label col-sm-2">아이디</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="id" name="MEMBER_ID">
				</div>
		</div>
		<br>
		<!-- 조회 버튼 -->
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<button type="submit" class="btn btn-default">조회</button>
			</div>
		</div>
		</form>
	</div>
	<!-- 구매내역 페이지 끝 -->
	