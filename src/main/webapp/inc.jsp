<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<script >
//EL
var CONTEXTPATH="${pageContext.request.contextPath}";

var docWidth = 0;
var docHeight = 0;

if (document.documentElement.clientWidth == 0) {
	if (document.body) {
		docWidth = document.body.clientWidth;
	}
} else {
	docWidth = document.documentElement.clientWidth;
}

if (document.documentElement.clientWidth == 0) {
	if (document.body) {
		docHeight = document.body.clientHeight;
	}
} else {
	docHeight = document.documentElement.clientHeight;
}
</script>