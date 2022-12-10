<%-- 
    Document   : checkinventory
    Created on : 12 8, 22, 5:38:58 PM
    Author     : jacob
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Products</title>
        <link rel="stylesheet" href="./css/styles.css">
    </head>
    <body>
        <header>
            <ul class="navbar">
                <li><a class="active" href="loginpage.jsp">Login page</a></li>
                <li><a class="active" href="index.jsp">Home</a></li>
                <li><a class="active" href="checkinventory.jsp">Check Inventory</a></li>
            </ul>
        </header>
        <br>
        
          <section class="cta">
              <h1>List of Products you can avail</h1>
                    <form action="OrderingServlet.do" method="post">
                        <div class="userinput">
                        Customer Name:<input type="text" name="customername" class="info"  required><br><br>  
                        Date:<input type="date" name="order_date" class="info"  required><br><br> 

                        Select your Food to order<p>
                            <select name="order_type" size="1">
                                <option>Burger with fries(75 pesos)
                                <option>Chicken with rice(80 pesos)
                                <option>2 Chicken with rice(100 pesos)   

                            </select><br><br>
                        Quantity:<input type="number" name="quantity" class="info" min="1" required><br><br>


                        <button type="submit" class="info" value="Done">Done</button>
                        </div>

                    </form>
                </section>
        </div>
     </body>
    
    
        
    </body>
</html>
