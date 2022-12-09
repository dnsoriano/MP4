/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.OrderInfo;


/**
 *
 * @author jacob
 */
public class BeverageOrderingServlet extends HttpServlet {
    String email;
    String powered_by;
    String contact_Number;
    
    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        email=config.getInitParameter("myEmail"); 
        contact_Number=config.getInitParameter("contactNumber");
         
        powered_by=config.getInitParameter("powered_by");
       
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet OrderingServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            
            
            
            
            String customer_name=request.getParameter("customername");
            String order=request.getParameter("order_type");
            String order_date=request.getParameter("order_date");
            
            String quantity=request.getParameter("quantity");
            
            
            
            OrderInfo s=new OrderInfo(customer_name,order,quantity,order_date);
            List result=s.getOrderInfo(customer_name,order, quantity,order_date);
             if (result==null)
            {
                
                response.sendRedirect("/nullvalueserrorpage.jsp");
                
                
            }
             
             else{
              request.setAttribute("orderList", result);
                
                RequestDispatcher view = 
                        request.getRequestDispatcher("result.jsp");
               view.include(request, response);
              out.println("Contact:"+contact_Number);  
               response.setContentType("images/jpeg");
            out.println("</body>");
            out.println("</html>");
             }
             
            
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

