<%-- 
    Document   : BeanJSP
    Created on : Aug 25, 2022, 2:02:06 PM
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
        <h1>Hello World!</h1>
        
        <jsp:useBean id="st1" class="mypackage.student"/> 
        
        <jsp:setProperty name="st1" property="sname" value="Perera"/>
        First Name:<jsp:getProperty name="st1" property="sname"/><br/>
              
        <jsp:setProperty name="st1" property="fname" value="Chamara"/>
        Second Name:<jsp:getProperty name="st1" property="fname"/><br/>
        
        <jsp:setProperty name="st1" property="gpa" value="3.76"/>
        GPA:<jsp:getProperty name="st1" property="gpa"/><br/>
        
        
    </body>
</html>
