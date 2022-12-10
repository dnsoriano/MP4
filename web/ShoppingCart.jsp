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
        <link rel="stylesheet" href="./css/styles.css">
    </head>
    <body>
        <form action="Logout" >
            <input type="submit" value="Logout"> 
        </form>
       <%
            response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
            if(session.getAttribute("username")==null){
            response.sendRedirect("loginpage.jsp");
            }
            
        %>
          <section class="menu" id="menu">
                    <div class="heading">
                        <span>Welcome to FURNITURE ONLINE ORDERING SYSTEM</span> <br> <br>
                        <h2>Premium and Luxurious Furniture for Exclusive Members!</h2>
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
                        
                        <div class="box">
                            <div class="box-img">
                                <img src="https://img1.homary.com/filters:format(webp)/fit-in/600x600/mall/2021/04/10/dfaddd97c6194e8fa5f9cd0e9b9ece86.jpg">
                            </div>
                            <h2>Modern Luxurious Drawer</h2>
                            <h3>Durable Material (60cm x 80cm) </h3>
                            <p>₱12,000.00</p>
                            <br>
                        </div>
                        
                        <div class="box">
                            <div class="box-img">
                                <img src="https://i5.walmartimages.com/asr/eae020b8-7411-4343-9daf-e2fd32278cd2.e1df8552c899a7bf5f97f54f92b7a10d.jpeg">
                            </div>
                            <h2>Multi-Purpose Premium Office/Study/Computer Table</h2>
                            <h3>Premium Wooden Material Exclusive</h3>
                            <p>₱25,000.00</p>
                        </div>
                        
                        <div class="box">
                            <div class="box-img">
                                <img src="https://www.ladyyard.com/media/catalog/product/cache/1/image/600x600/9df78eab33525d08d6e5fb8d27136e95/m/o/modern_expanding_shoe_storage_cabinet_natural_amp_gray__natural_amp_white_shoe_organizer_space_saving_shoe_rackj040417_0.jpg">
                            </div>
                            <h2>Modern Luxurious Expanding Shoe Rack / Cabinet </h2>
                            <h3>Durable Material for Shoe Storage</h3>
                            <p>₱10,000.00</p>
                        </div>
                        
                        <div class="box">
                            <div class="box-img">
                                <img src="https://www.luxulia.co.za/wp-content/uploads/2021/07/Screenshot-2481.jpg">
                            </div>
                            <h2>Wooden Modern Luxurious Bed Frame </h2>
                            <h3>With Headboard LED Lights and Built-in Drawers</h3>
                            <p>₱30,000.00</p>
                        </div>
                        
                        <div class="box">
                            <div class="box-img">
                                <img src="https://cdn.shopify.com/s/files/1/2461/0855/products/iconic-home-winston-pu-leather-button-tufted-nailhead-trim-metal-legs-accent-club-chair-brown-fcc2845-chb-2_600x.jpg?v=1650397480">
                            </div>
                            <h2>Luxurious Brown Leather Club Chair </h2>
                            <h3>Premium Leather Exclusive</h3>
                            <p>₱12,000.00</p>
                        </div>
                    </div>
                </section>
        
           <section class="cta">
               <h1>Order Fill-up</h1>
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
                        
                </section>
    </body>
    <footer>
           <label><h4 class="contact">Contact Us</label>
                <h5>Email Address:<% out.print(getServletContext().getInitParameter("myEmail")); %></h5>
                <h5>Powered by: <% out.print(getServletContext().getInitParameter("powered_by")); %> </h5>
           </h4>
       </footer>
</html>
