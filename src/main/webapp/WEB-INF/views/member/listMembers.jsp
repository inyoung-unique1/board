<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    isELIgnored="false"  %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<%
  request.setCharacterEncoding("UTF-8");
%>    


<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 출력창</title>
</head>
<body>

<div class="container">
<div class="row">

<table class="table table-striped" style="text-align:center; border:1px solid #ddd">
    <thead>
	    <tr >
	      <td style="background-color:#F29661; text-align:center;"><b>아이디</b></td>
	      <td style="background-color:#F29661; text-align:center;"><b>비밀번호</b></td>
	      <td style="background-color:#F29661; text-align:center;"><b>이름</b></td>
	      <td style="background-color:#F29661; text-align:center;"><b>이메일</b></td>
	      <td style="background-color:#F29661; text-align:center;"><b>가입일</b></td>
	      <td style="background-color:#F29661; text-align:center;"><b>삭제</b></td>
	   </tr>
   </thead>
 <c:forEach var="member" items="${membersList}" >     
   <tbody>
   <tr align="center">
      <td>${member.id}</td>
      <td>${member.pwd}</td>
      <td>${member.name}</td>
      <td>${member.email}</td>
      <td>${member.joinDate}</td>
      <td><a class="btn btn-danger " href="${contextPath}/member/removeMember.do?id=${member.id }">삭제하기</a></td>
    </tr>
    </tbody>
  </c:forEach>   
</table>
   <%-- <a  href="${contextPath}/member/memberForm.do"><h1 style="text-align:center">회원가입</h1></a> --%>
   <a class="btn btn-primary right" href="${contextPath}/member/memberForm.do">회원가입</a>

</div>
</div>

</body>
</html>
