<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page session="false" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<tiles:insertAttribute name="layout.header" />
</head>
<body>
	<tiles:insertAttribute name="layout.top" />
		<div id="main_body">
			<tiles:insertAttribute name="layout.body" />
		</div>
</body>
</html>