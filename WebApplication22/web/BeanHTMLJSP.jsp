<%-- 
    Document   : BeanJSP
    Created on : Sep 1, 2022, 1:46:30 PM
    Author     : Akila
--%>

<%@page import="java.beans.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        <jsp:useBean id="b1" class="mypackage.Book"/>
        
        <jsp:setProperty name="b1" property="bid" value='<%=Integer.parseInt(request.getParameter("bid"))%>'/>
        Book ID: <jsp:getProperty name="b1" property="bid"/><br/>
        
        <jsp:setProperty name="b1" property="title" value='<%=request.getParameter("title")%>'/>
        Title: <jsp:getProperty name="b1" property="title"/><br/>
        
        <jsp:setProperty name="b1" property="author" value='<%=request.getParameter("author")%>'/>
        Author: <jsp:getProperty name="b1" property="author"/><br/>
        
        <jsp:setProperty name="b1" property="cat" value='<%=request.getParameter("cat")%>'/>
        Category: <jsp:getProperty name="b1" property="cat"/><br/>
        
        <jsp:setProperty name="b1" property="price" value='<%=Double.parseDouble(request.getParameter("price"))%>'/>
        Price: <jsp:getProperty name="b1" property="price"/><br/>
        
        <%
            String bid=request.getParameter("bid");
            String btitle=request.getParameter("title");
            String bauthor=request.getParameter("author");
            String bcat=request.getParameter("cat)");
            
            Class.forName("com.mysql.jdbc.Driver");
            
            String url="jdbc:mysql://localhost:3306/mylibrarydb";
            Connection con=DriverManager.getConnection(url,"root","");
            
            Statement st = con.createStatement();
            String sql="INSERT INTO books(bid,title,author,category) VALUES ('"+bid+"','"+btitle+"','"+bauthor+"','"+bcat+"')";
            st.executeUpdate(sql);
        %>  
        
        <%-- THIS IS FOR JSP COMMENTS 1. Book.java. then this.then HTML --%>
        
    </body>
</html>
