<%-- 
    Document   : MyBooks
    Created on : Jul 27, 2022, 1:44:44 PM
    Author     : Akila
--%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Inserting records to the books table</h1>
        <%
            //after the addBook form. To conect
            String btitle=request.getParameter("title");
            String bauthor=request.getParameter("author");
            String bpub=request.getParameter("pub)");
            
            //STEPS--- 1.Load the driver 2.Connect the DB 3.Prepare Statement 4.Execute the query
            //1.Load the driver
            Class.forName("com.mysql.jdbc.Driver");
            //2,Connect the db
            //go to services, Drivers, jdbc_____
            String url="jdbc:mysql://localhost:3306/mylibrarydb";
            Connection con=DriverManager.getConnection(url,"root","");
            //3.Prepare the Statement
            Statement st = con.createStatement();
            //4.Execute the sql query
            //changed values after the addbook form
            String sql="INSERT INTO books(Title,Author,Publisher) VALUES ('"+btitle+"','"+bauthor+"','"+bpub+"')";
            st.executeUpdate(sql);
            //right click library,Add library, Mysql--//
        
        %>
    </body>
</html>
