<%--
  Created by IntelliJ IDEA.
  User: ssuni
  Date: 2023/11/29
  Time: 11:28 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<html>
<head>
    <title>EditForm</title>
</head>
<body>
<h1>Edit Your Post</h1>

<form:form modelAttribute="u" method="post" action="../editok">
    <form:hidden path="seq"/>
    <table id="edit">
        <tr><td>Title:</td><td><form:input path="title" /></td></tr>
        <tr><td>Writer:</td><td><form:input path="writer" /></td></tr>
        <tr><td>Content:</td><td><form:textarea cols="50" rows="5" path="content"/></td></tr>
        <tr>
            <td><input type="button" value="Cancel" onclick="history.back()"/></td>
            <td align="right"><input type="submit" value="Edit Post"/></td>
        </tr>
    </table>
</form:form>
</body>
</html>
