<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<%@page import="web.User"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
  <head></head>
   <body style="font-size:30px;color:red;">
   <%
   		User user=new User();
   		user.setName("李白");
   		user.setGender("f");
   		request.setAttribute("user",user);
    %>
    姓名：${user.name}<br/>
    性别：<c:if test="${user.gender=='m'}">男</c:if>
    	  <c:if test="${user.gender!='m'}">女</c:if><br/>
    性别：<c:if test="${user.gender=='m'}" var="flag" scope="page">男</c:if>
    <c:if test="${!flag}">女</c:if><br/>
    性别：<c:choose>
    		<c:when test="${user.gender=='m'}">男</c:when>
    		<c:when test="${user.gender=='f'}">女</c:when>
    </c:choose>
   </body>
</html>