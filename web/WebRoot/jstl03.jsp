<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<%@page import="java.util.ArrayList"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
  <head>
  		<style>
  		 .row1{
  		 background-color:#0ff;
  		 }
  		  .row2{
  		 background-color:#ff0;
  		 }
  		</style>
  </head>
   <body style="font-size:30px;color:red;">
    <table width="60%" border="1" cellpadding="0" cellspacing="0">
    	<tr><td>序号</td><td>index</td><td>姓名</td><td>年龄</td><td>性别</td></tr>
    	<c:forEach items="${users}" var="user" varStatus="s">
    		<tr class="row${s.index%2+1}">
    		<td>${s.count}</td>
    		<td>${s.index }</td>
    		<td>${user.name}</td>
    		<td>${user.age}</td>
    		<td><c:choose>
    		<c:when test="${user.gender=='m'}">男</c:when>
    		<c:when test="${user.gender=='f'}">女</c:when>
    	  <c:otherwise>保密</c:otherwise>  	
    		</c:choose></td>
    		</tr>
    	</c:forEach>
    </table>
   </body>
</html>