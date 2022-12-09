<%-- 
    Document   : servernotfounderrorpage
    Created on : 11 10, 22, 4:05:54 PM
    Author     : jacob
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error Page</title>
    </head>
    <body>
        <h1>Server not Found</h1>
        <h2><a href="/OrderingSystem/index.jsp">Press here to redirect to the System back to the welcome page</a></h2>
          <h5>Powered by: <% out.print(getServletContext().getInitParameter("powered_by")); %> </h5>
    </body>
</html>
