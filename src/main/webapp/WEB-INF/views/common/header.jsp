<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!--  ${contextPath}-->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>

/* 	.form-control-dark {
	  border-color: var(--bs-gray);
	}
	.form-control-dark:focus {
	  border-color: #fff;
	  box-shadow: 0 0 0 .25rem rgba(255, 255, 255, .25);
	}
	
	.text-small {
	  font-size: 85%;
	}
	
	.dropdown-toggle:not(:focus) {
	  outline: 0;
	} */
</style>
<title>헤더</title>
</head>
<body>
<!-- 
	<table border=0 width="100%">
		<tr>
			<td><a href="${contextPath}/main.do"> <img
					src="${contextPath}/resources/image/duke_swing.gif" />
			</a></td>
			<td>
				<h1 class="h3 mb-3 fw-normal">
					<font size=10>Spring practice home</font>
				</h1>
			</td>

			<td>
				<c:choose>
					<c:when test="${isLogOn == true  && member!= null}">
						<h3>환영합니다. ${member.name }님</h3>
						<a href="${contextPath}/member/logout.do"><h3>로그아웃</h3></a>
					</c:when>
					<c:otherwise>
						<a href="${contextPath}/member/loginForm.do"><h3>로그인</h3></a>
					</c:otherwise>
				</c:choose>
			</td>
		</tr>
	</table>
-->
	<div class="container">
		<header
			class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 ">
			<div class="col-md-3 mb-2 mb-md-0">
				<a href="${contextPath}/main.do"> <img src="${contextPath}/resources/image/duke_swing.gif" /></a>
			</div>
			<div
				class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
				<h1 class="h3 mb-3 fw-normal"><font >Spring practice home</font>
					
				</h1>
			</div>
			<div class="col-md-3 text-end">
				<c:choose>
					<c:when test="${isLogOn == true  && member!= null}">
						<h3>환영합니다. ${member.name }님</h3>
						<a href="${contextPath}/member/logout.do">
							<button type="button" class="btn btn-outline-primary me-2" >로그아웃</button>
						</a>
					</c:when>
					<c:otherwise>
						<a href="${contextPath}/member/loginForm.do">
							<button type="button" class="btn btn-outline-primary me-2">로그인</button>
						</a>
						<a  href="${contextPath}/member/memberForm.do">
						    <button type="button" class="btn btn-primary">회원가입</button>
						</a>
					</c:otherwise>
				</c:choose>

			</div>
		</header>
	</div>

</body>
</html>