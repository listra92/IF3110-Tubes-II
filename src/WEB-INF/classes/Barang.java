import java.util.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Barang extends HttpServlet{
    public void doGet(HttpServletRequest request,HttpServletResponse response){
        getServletContext().setAttribute("class"+this.getClass().getName(), this.getClass());
    }
    
    public void index(HttpServletRequest request,HttpServletResponse response){
        
    }
    
    public void addCart(HttpServletRequest request,HttpServletResponse response){
        
    }
    
    public void updateCart(HttpServletRequest request,HttpServletResponse response){
        
    }
    
    public void beli(HttpServletRequest request,HttpServletResponse response){
        
    }
    
    public void cari(HttpServletRequest request,HttpServletResponse response){
        try{
            response.sendRedirect("");
        }catch(Exception e){
        }
    }
    
    public void detail(HttpServletRequest request,HttpServletResponse response){
        
    }
    
    public void hapusBarang(HttpServletRequest request,HttpServletResponse response){
        
    }
    
    public void generatecontent(HttpServletRequest request,HttpServletResponse response){
        
    }
}
