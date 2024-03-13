<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<link href="${contextPath}/resources/assets/dist/css/sign-in.css" rel="stylesheet">	
<title>로그인</title>
<c:choose>
	<c:when test="${result=='loginFailed' }">
		<script>
			window.onload = function() {
				alert("아이디나 비밀번호가 틀립니다.다시 로그인 하세요!");
			}
		</script>
	</c:when>
</c:choose>
</head>

<body>	
	<main class="form-signin w-100 m-auto">
		<form name="frmLogin" method="post"
			action="${contextPath}/member/login.do">
			<h1 class="h3 mb-3 fw-normal">Please sign in</h1>

			<div class="form-floating">
				<input type="text" class="form-control" id="floatingInput"
					placeholder="name@example.com" name="id"> <label
					for="floatingInput">ID</label>
			</div>
			<div class="form-floating">
				<input type="password" class="form-control" id="floatingPassword"
					placeholder="Password" name="pwd"> <label
					for="floatingPassword">Password</label>
			</div>

			<button class="btn btn-primary w-100 py-2" type="submit">로그인</button>
			<p class="mt-5 mb-3 text-body-secondary">&copy; 2017–2023</p>
		</form>
	</main>


</body>
</html>
