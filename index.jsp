<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Jankenpo</title>
</head>
<body>
    <%@ include file="templates/game.html"%>
    root = /var/lib/tomcat9/webapps/ROOT/jankenpo-java-web
    <hr />
    <%= "Hello World" %>
    <%
        System.out.println("<hr />");
        System.out.println("println");
        String teste = "123";
    %>
    <hr />
    <%= teste %>
</body>
</html>