/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author jacob
 */


public class OrderInfo {
    String product_name;
    String quantity;
    String price;
    String totalprice;
    String customer_name;
    String order_date;
    
    public OrderInfo(String customer_name,String product_name,String quantity,String order_date){
        this.customer_name=customer_name;
        this.product_name=product_name;
        this.quantity=quantity;
        this.order_date=order_date;
        
       
    }
    
     
  
   
 
 public List<String>getOrderInfo(String customer_name,String productname,String quantity,String order_date){
         String total_Price;
         List<String>info=new ArrayList<>();
         
         OrderInfo infos=new OrderInfo(customer_name,productname,quantity,order_date);
    

   
    
     
    if(productname!=null&&quantity!=null && order_date!=null){
         
           
          total_Price=getTotalPrice(productname,quantity);
          info.add(infos.toString()+"<br>"+"Total Price:"+total_Price);
    
    }
     
    else{
        info=null;
    }
     
     
     return info;
 }
 public String toString(){
    return "Name of Customer:"+this.customer_name+"<br>"+"Product Name:"+this.product_name+"<br>"+"Quantity:"+this.quantity+"<br>"+
           "Date of Order:"+this.order_date;
    
}
 
 public String getTotalPrice(String productname,String quantity){
     int int_total_price=0;
     String totalprice;
     if(productname.equals("Burger with fries(75 pesos)")){
      int_total_price=Integer.valueOf(quantity)*75;
    
     }
     else if(productname.equals("Chicken with rice(80 pesos)")){
       int_total_price=Integer.valueOf(quantity)*80;  
     }
     
     else if(productname.equals("Dark Chocolate(200 pesos)")){
             int_total_price=Integer.valueOf(quantity)*200;
     }
     
     else{
             int_total_price=Integer.valueOf(quantity)*100;
     }
     
    
     
    
     return String.valueOf(int_total_price);
 }
     
 }
 


 
 

 

