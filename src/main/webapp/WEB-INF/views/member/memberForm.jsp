<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%
   request.setCharacterEncoding("UTF-8");
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title >회원 가입</title>

</head>
<body>
<main class="row g-5 w-50 m-auto">
	<form  method="post"   action="${contextPath}/member/addMember.do">
	<h1  class="h3 mb-3 fw-normal" align="center">회원 가입</h1>
	<div class="row g-3">
	<div class="col-12">
		<label for="id" class="form-label">ID</label>
		<input type="text" class="form-control" name="id" required >
	</div>
	<div class="col-12">
		<label for="pwd" class="form-label">Password</label>
		<input type="password" class="form-control" name="pwd" required> 
	</div>
	<div class="col-12">
		<label for="pwd" class="form-label">Name</label>
		<input type="text" class="form-control" name="name" required> 
	</div>
	<div class="col-12">
		<label for="email" class="form-label">Email</label>
		<input type="email" class="form-control"  placeholder="you@example.com" name="email">
	</div>		
	<button class="btn btn-primary w-100 py-2"  type="submit" >가입하기</button>	       		
	</div>      
	 
	</form>
</main>	
</body>
