<%--<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>JSP - Hello World</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<h1><%= "Hello World!" %>--%>
<%--</h1>--%>
<%--<br/>--%>
<%--<a href="hello-servlet">Hello Servlet</a>--%>
<%--</body>--%>
<%--</html>--%>

<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%-- Объявление библиотек тэгов JSF --%>
<%--<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>--%>
<%--<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>--%>
<!DOCTYPE html>
<html xmlns:h="http://xmlns.jcp.org/jsf/html" xmlns:f="http://xmlns.jcp.org/jsf/core">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Словарь-переводчик</title>
</head>
<body>
<jsp:useBean id="mybean" scope="session" class="com.example.jlw_8.NameHandler" />
<h3>Введите ваше имя</h3>
<form name="Input form" action="jsp_2.jsp">
    <input type="text" name="name" />
    <input type="submit" value="OK" name="button1" />
    <%mybean.addCounter(1);%>
</form>
<a href="jsp_2.jsp?name=123">Переход</a>
</body>
</html>