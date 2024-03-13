<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  isELIgnored="false"
 %>
 <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
  <head>
  <script src="${contextPath}/resources/assets/js/color-modes.js"></script>
  <script src="${contextPath}/resources/assets/dist/js/bootstrap.bundle.min.js"></script>
  
  <link href="${contextPath}/resources/assets/dist/css/bootstrap.min.css" rel="stylesheet"> 
  <link rel="icon" href="${contextPath}/resources/assets/brand/favicon.ico">
  
    <meta charset="UTF-8">
    <style>
      #container {
        width: 100%;
        margin: 0px auto;
        
        border: 0px solid #bcbcbc;
      }
      #header {
        padding: 5px;
        margin-bottom: 5px;
        border: 0px solid #bcbcbc;
         background-color: white;
      }
     #sidebar-left {
        width: 15%;
        height:700px;
        float: left;
        
        border: 0px solid #bcbcbc;
        /* padding: 5px;
        margin-right: 5px;
        margin-bottom: 5px;
        font-size:10px; */
      } 
      #content {
        width: 75%;
        padding: 5px;
        margin-right: 5px;
        float: left;
        border: 0px solid #bcbcbc;
        
      }
      #footer {
        clear: both;
        padding: 5px;
        border: 0px solid #bcbcbc;
         background-color: lightblue;
         text-align:center;
      }
      
    </style>
    <title><tiles:insertAttribute name="title" /></title>
  </head>
    <body>
    <div id="container">
      <div id="header">
         <tiles:insertAttribute name="header"/>
      </div>
      <div id="sidebar-left">
          <tiles:insertAttribute name="side"/> 
      </div>
      <div id="content">
          <tiles:insertAttribute name="body"/>
      </div>
      <div id="footer">
          <tiles:insertAttribute name="footer"/>
      </div>
    </div>
  </body>
</html>