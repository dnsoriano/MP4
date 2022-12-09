<%-- 
    Document   : index
    Created on : 11 6, 22, 4:10:47 PM
    Author     : jacob
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <link rel="stylesheet" href="./css/halloweenordersystem.css">
    </head>
    <body>
       <ul class="navbar">
            <li><a class="active" href="/OrderingSystem/index.jsp">Home</a></li>
            <li><a href="#contact">Contact</a></li>
            <li class="right"><a href="#about">About</a></li>
            <li><a class="active" href="/OrderingSystem/beverageorder.jsp">Beverage Ordering System</a></li>
            </ul>
        <div class="container">
       <h1>Food Ordering System</h1>
            
           

        
        
        <form action="OrderingServlet.do" method="post">
            <div class="userinput">
            Customer Name:<input type="text" name="customername" class="info"  required><br><br>  
            Date:<input type="date" name="order_date" class="info"  required><br><br> 
             
            Select your Food to order<p>
                <select name="order_type" size="1">
                    <option>Burger with fries(75 pesos)
                    <option>Chicken with rice(80 pesos)
                    
                    
                </select><br><br>
            Quantity:<input type="number" name="quantity" class="info" min="1" required><br><br>
           
            
            <button type="submit" class="info" value="Done">Done</button>
            </div>
            
        </form>
       
    
               
            
        </div>
    </body>
    
       <footer>
           <label><h4 class="contact">Contact Us</label>
                <h5>Email Address:<% out.print(getServletConfig().getInitParameter("myEmail")); %></h5>
                <h5>Powered by: <% out.print(getServletConfig().getInitParameter("powered_by")); %> </h5>
           
           </h4>
           
           
       </footer>
</html>

