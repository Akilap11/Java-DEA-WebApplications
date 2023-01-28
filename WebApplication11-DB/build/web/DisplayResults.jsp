<%-- 
    Document   : DisplayResults
    Created on : Aug 3, 2022, 1:52:12 PM
    Author     : Akila
--%>

<%@page import="java.util.Enumeration"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.Statement"%>
<%@page import="javax.resource.cci.ResultSet"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>BOOk added</h1>
        
        <%
            List bresult=(List)request.getAttribute("books");
            Enumeration e=bresult.elements();
            While(e.hasMoreElements()){%>
    <tr><td><%=e.nextElement()%></td></tr>
        %>    
        
    </body>      
</html>
