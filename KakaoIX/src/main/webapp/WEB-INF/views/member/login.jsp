<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page session="false" %>

	<!-- 로그인 페이지 -->
	<div class="w3-container city">
		<div class="col-sm-8 text-left">
			<h3>로그인</h3>
			<form action="<c:url value='/j_spring_security_check'/>" method="POST">
					<div class="form-group">
						<label class="control-label col-sm-2" for="email">이메일</label>
							<div class="col-sm-10">
								<input type="email" class="form-control" id="id" name="email">
							</div>
					</div>
			<div class="form-group">
				<label class="control-label col-sm-2">비밀번호</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" id="password" name="password">
					</div>
			</div>
			<br>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-default">로그인</button>
				</div>
			</div>
			</form>
		</div>
	</div>
	<!-- 로그인 페이지 끝 -->