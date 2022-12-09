/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.function.Consumer;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Person;

/**
 *
 * @
 */
public class LoginServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoginServlet </title>");            
            out.println("</head>");
            out.println("<body>");
            String uname=request.getParameter("uname");
            String pass=request.getParameter("pass");
            ArrayList<Person>users=new ArrayList();
            
            
            Person p1=new Person("Jacob","admin","Guest");
            Person p2=new Person("Hannah","admin1","User");
            users.add(p1);
            users.add(p2);
            
            
            
             for(Person a:users){
                 if(uname.equals(a.name)&&pass.equals(a.password)){
                  HttpSession session=request.getSession();
                  session.setAttribute("username", uname);
                  response.sendRedirect("ShoppingCart.jsp");
                    break;
                     
                 }
                 
                 
                 
             }
             
                
               
                 
              
              
                 /*
                 if(a.name.equals(uname)){
                   out.print(uname);
                 }
                 else{
                     response.sendRedirect("index.jsp"); 
                 }
                 */
           // HttpSession session=request.getSession();
            /*
            for(Person a:users){
                if(a.name.equals(uname)&&a.password.equals(pass)){
                   out.println(a.name);
                   out.println(a.password);
               
                
                }
                
                else{
                    response.sendRedirect("index.jsp");
                }
               
                
               out.println(a.name+"<br>");
               out.println(a.password+"<br>");
              */
         
                 
            
            
            
           
            //out.print(session.getAttribute("name"));
            
            /*
            while(it.hasNext()){
              
               
                
                
                
                
                
                it.next();
                
            }
            
            */
            
           
           
           
            
             RequestDispatcher rd =request.getRequestDispatcher("loginpage.jsp");
              
            rd.include(request, response);
            out.println("Wrong username or password");
            out.println("</body>");
            
            
            out.println("</html>");
        }
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
