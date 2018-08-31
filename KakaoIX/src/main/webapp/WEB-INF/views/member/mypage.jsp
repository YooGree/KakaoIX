<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page session="false" %>

	<!-- 내 정보 페이지 -->
	<div class="w3-container city">
		<div class="col-sm-8 text-left">
			<h3>마이페이지</h3>
				<form role="form" class="form-horizontal" method="POST" action="<c:url value='/member/update' />">
					<input type="hidden" name="MEMBER_ID" value="${pageContext.request.userPrincipal.name}">
					<!-- 이름 입력 -->
					<div class="form-group">
						<label class="control-label col-sm-2">이름</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="MEMBER_NAME" value="${resultMap.MEMBER_NAME}">
							</div>
					</div>
					<!-- 핸드폰 입력 -->
					<div class="form-group">
						<label class="control-label col-sm-2">핸드폰</label>
							<div class="col-sm-10">
								<input type="tel" class="form-control" name="MEMBER_PHONE" value="${resultMap.MEMBER_PHONE}">
							</div>
					</div>
					<!-- 비밀번호 입력 -->
					<div class="form-group">
						<label class="control-label col-sm-2">비밀번호</label>
							<div class="col-sm-10">
								<input type="password" class="form-control" id="MEMBER_PW" name="MEMBER_PASS" value="${resultMap.MEMBER_PASS}">
							</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2">비밀번호 확인</label>
							<div class="col-sm-10">
								<input type="password" class="form-control" id="MEMBER_PW2" value="${resultMap.MEMBER_PASS}">
							</div>
					</div>
					<br>
					<!-- 수정 및 탈퇴버튼 -->
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-default">수정</button>
							<button type="submit" class="btn btn-default" formaction="<c:url value='/member/delete' />" onsubmit="Delete()">탈퇴</button>
						</div>
					</div>
				</form>
			</div>
	</div>
	<!-- 내 정보 페이지 끝 -->