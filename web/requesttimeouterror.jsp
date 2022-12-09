<%-- 
    Document   : requesttimeouterror
    Created on : 11 12, 22, 6:05:57 PM
    Author     : jacob
--%>

<%@page import="java.util.Enumeration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Request TimeOut</title>
    </head>
    <body>
        <h1>Request Time Out</h1>
          <h2><a href="/OrderingSystem/index.jsp">Press here to redirect to the System back to the welcome page</a></h2>
              <h5>Powered by: <% out.print(getServletContext().getInitParameter("powered_by")); %> </h5>
               
               <% Enumeration headerNames = request.getHeaderNames();
                    while (headerNames.hasMoreElements()) {
                        String name = (String)headerNames.nextElement();
                    out.println(name + ": " + request.getHeader(name) + "<br>");
                    }%>
    </body>
</html>
