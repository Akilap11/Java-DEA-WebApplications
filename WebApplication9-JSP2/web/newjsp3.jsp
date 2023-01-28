<%-- 
    Document   : newjsp3
    Created on : Jul 20, 2022, 3:08:03 PM
    Author     : Akila
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.util.*;" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
        String col=request.getParameter("bgcolor");
%>           
    <body bgColor="cyan">
        <%! int i=0; %>
        <% int j=0; %>
        <h2>Using declaration</h2>
        <h1>Number of pages visits <%= ++i %></h1>
        <h2>Using Scriplet</h2>
        <h1>Number of pages visits <%= ++j %></h1>
        <h2>Today is <%=new Date()%></h2>
        <%@include file="Colorchange.html"%>
    </body>
</html>