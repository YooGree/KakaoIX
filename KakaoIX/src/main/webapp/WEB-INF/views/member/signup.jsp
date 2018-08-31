<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page session="false" %>

	<!-- 회원가입 페이지 -->
	<div class="w3-container city">
		<div class="col-sm-8 text-left">
			<h3>회원가입</h3>
				<form role="form" class="form-horizontal" method="POST" action="<c:url value='/member/insert' />"  onsubmit="return valid_password(this);">
					<!-- 아이디 입력 -->
					<div class="form-group">
						<label class="control-label col-sm-2">아이디</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="id" name="MEMBER_ID">
							</div>
					</div>
					<!-- 이름 입력 -->
					<div class="form-group">
						<label class="control-label col-sm-2">이름</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="MEMBER_NAME">
							</div>
					</div>
					<!-- 핸드폰 입력 -->
					<div class="form-group">
						<label class="control-label col-sm-2">핸드폰</label>
							<div class="col-sm-10">
								<input type="tel" class="form-control" name="MEMBER_PHONE">
							</div>
					</div>
					<!-- 비밀번호 입력 -->
					<div class="form-group">
						<label class="control-label col-sm-2">비밀번호</label>
							<div class="col-sm-10">
								<input type="password" class="form-control" id="MEMBER_PW" name="MEMBER_PASS">
							</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2">비밀번호 확인</label>
							<div class="col-sm-10">
								<input type="password" class="form-control" id="MEMBER_PW2">
							</div>
					</div>
					<br>
					<!-- 가입 버튼 -->
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-default">회원가입</button>
						</div>
					</div>
				</form>
			</div>
	</div>
	<!-- 회원가입 페이지 끝 -->