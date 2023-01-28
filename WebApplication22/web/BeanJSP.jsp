<%-- 
    Document   : BeanJSP
    Created on : Sep 1, 2022, 1:46:30 PM
    Author     : Akila
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        <jsp:useBean id="b1" class="mypackage.Book"/>
        
        <jsp:setProperty name="b1" property="bid" value="123"/>
        Book ID: <jsp:getProperty name="b1" property="bid"/><br/>
        
        <jsp:setProperty name="b1" property="title" value="AAAA"/>
        Title: <jsp:getProperty name="b1" property="title"/><br/>
        
        <jsp:setProperty name="b1" property="author" value="Akila"/>
        Author: <jsp:getProperty name="b1" property="author"/><br/>
        
        <jsp:setProperty name="b1" property="cat" value="BBBB"/>
        Category: <jsp:getProperty name="b1" property="cat"/><br/>
        
        <jsp:setProperty name="b1" property="price" value="1200"/>
        Price: <jsp:getProperty name="b1" property="price"/><br/>
        
        <%-- THIS IS FOR JSP COMMENTS 1. Book.java. then this.then HTML --%>
        
    </body>
</html>
