<%-- 
    Document   : loginpage
    Created on : 12 8, 22, 1:13:58 PM
    Author     : jacob
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link rel="stylesheet" href="./css/styles.css">
    </head>
    <style>
        *{
            margin: 0;
        }
        h1{
            text-align: center;
            padding-top:2%;
        }

        h5{
            font-size: 1em;    
        }

        #container{
            text-align: center;  
            padding-top: 10px;
        }
    </style>
    
    <body>
         
        <h1>Login Page</h1>
        <div id="container">
            <form action="LoginServlet" method="get">
            <h5>Username</h5><input type="text" id="uname" name="uname"></label><br><br>
            <h5>Password</h5><input type="password" id="pass" name="pass"></label><br><br>
            
            <input class="btn" type="submit" value="Login">
            </form>
        </div>
      
    </body>
</html>
