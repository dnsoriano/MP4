<%-- 
    Document   : ShoppingCart
    Created on : 12 8, 22, 10:01:57 PM
    Author     : jacob
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Shopping Cart</title>
    </head>
    <body>
        
       <%
            response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
            if(session.getAttribute("username")==null){
            response.sendRedirect("loginpage.jsp");
            }
            
        %>
        
        <h1>Shopping Cart</h1>
        
          <form action="OrderingServlet.do" method="post">
            <div class="userinput">
            Customer Name:<input type="text" name="customername" class="info"  required><br><br>  
            Date:<input type="date" name="order_date" class="info"  required><br><br> 
             
            Select your Food to order<p>
                <select name="order_type" size="1">
                    <option>Brown Leather Couch
                    <option>Luxurious Wooden Dining Table
                    <option>Wooden Victorian Cabinet   
                    <option>Modern Luxurious Drawer  
                    <option>Multi-Purpose Premium Office/Study/Computer Table
                    <option>Modern Luxurious Expanding Shoe Rack / Cabinet  
                    <option>Wooden Modern Luxurious Bed Frame
                    <option>Luxurious Brown Leather Club Chair
                    
                    
                </select><br><br>
            Quantity:<input type="number" name="quantity" class="info" min="1" required><br><br>
           
            
            <button type="submit" class="info" value="Done">Done</button>
            </div>
          </form>
        
        
        <form action="Logout">
            
            <input type="submit" value="Logout"> 
        </form>
    </body>
</html>
