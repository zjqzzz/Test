<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<%@page import="web.User"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
  <head></head>
   <body style="font-size:30px;color:red;">
   <%
   		User user=new User();
   		user.setName("李白");
   		user.setAge(92);
   		user.setGender("s");
   		request.setAttribute("user",user);
    %>
    姓名：${user.name}<br/>
    性别：<c:choose>
    		<c:when test="${user.gender=='m'}">男</c:when>
    		<c:when test="${user.gender=='f'}">女</c:when>
 		<c:otherwise>保密</c:otherwise>  	  
    </c:choose><br/>
    年龄：<c:choose>
    		<c:when test="${user.age<18}">未成年</c:when>
    		<c:when test="${user.age<30}">年轻人</c:when>
    		<c:when test="${user.age<50}">中年人</c:when>
    		<c:when test="${user.age>50 && user.age<90}">老年人</c:when>
 		<c:otherwise>保密</c:otherwise>  	  
    </c:choose>
   </body>
</html>