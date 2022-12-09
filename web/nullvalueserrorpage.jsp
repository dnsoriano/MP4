<%-- 
    Document   : error
    Created on : 11 10, 22, 2:23:37 PM
    Author     : jacob
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>No Value Error Page</title>
    </head>
    <body>
        <h1>Null Values Error</h1>
        <a href="index.jsp">Press here to redirect to the System back to the welcome page</a>
        <h5>Powered by: <% out.print(getServletContext().getInitParameter("powered_by")); %> </h5>
    </body>
    
</html>
