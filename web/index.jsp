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
               <%--
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
               --%>
               
               <section class="menu" id="menu">
                    <div class="heading">
                        <span>Welcome to my Shop</span>
                        <h2>Good Service and great prices</h2>
                    </div>

                    <div class="menu-container">

                        <div class="box">
                            <div class="box-img">
                                <img src="https://images.squarespace-cdn.com/content/v1/5ccf524ee6666965e4b862fd/d9b60e03-c188-4916-9b9c-9a7fb6a830c9/image6.jpg">
                            </div>
                            <h2>Brown Leather Couch</h2>
                            <h3>Premium Leather Exclusive</h3>
                            <p>₱27,500.00</p>
                        </div>

                        <div class="box">
                            <div class="box-img">
                                <img src="https://nellavetrina.com/wp-content/uploads/2021/07/Fenice-9.jpg">
                            </div>
                            <h2>Luxurious Wooden Dining Table</h2>
                            <h3>Premium Wooden Material Exclusive</h3>
                            <p>₱28,000.00</p>
                        </div>

                        <div class="box">
                            <div class="box-img">
                                <img src="https://www.andreafanfani.com/images/classic_furniture/3-luxury_dining_room_wooden_furniture_italy.jpg">
                            </div>
                            <h2>Wooden Victorian Cabinet </h2>
                            <h3>Premium Wooden Material Exclusive</h3>
                            <p>₱30,000.00</p>
                        </div>
                    </div>
                </section>
               
                <section class="cta">
                    <form action="OrderingServlet.do" method="post">
                        <div class="userinput">
                        Customer Name:<input type="text" name="customername" class="info"  required><br><br>  
                        Date:<input type="date" name="order_date" class="info"  required><br><br> 

                        Select your Food to order<p>
                            <select name="order_type" size="1">
                                <option>Brown Leather Couch
                                <option>Luxurious Wooden Dining Table
                                <option>Wooden Victorian Cabinet   

                            </select><br><br>
                        Quantity:<input type="number" name="quantity" class="info" min="1" required><br><br>


                        <button type="submit" class="info" value="Done">Done</button>
                        </div>

                    </form>
                </section>
    </body>
    
       <footer>
           <label><h4 class="contact">Contact Us</label>
                <h5>Email Address:<% out.print(getServletContext().getInitParameter("myEmail")); %></h5>
                <h5>Powered by: <% out.print(getServletContext().getInitParameter("powered_by")); %> </h5>
           </h4>
       </footer>
       
</html>
