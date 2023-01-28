<%-- 
    Document   : newjsp1
    Created on : Jul 6, 2022, 1:35:52 PM
    Author     : akila
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      
<h2>Table of Square Roots</h2>
<table border=2>
  <tr>
    <td><b>Number</b></td>
    <td><b>Square Root</b></td>
  </tr> 
  <%
  for (int n=0; n<=100; n++) 
  { 
  %>
    <tr>
      <td><%=n%></td>
      <td><%=Math.sqrt(n)%></td>
    </tr> 
  <% 
  } 
  %>
</table>
    </body>
</html>
