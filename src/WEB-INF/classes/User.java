import java.util.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class User extends HttpServlet{
    public void doGet(HttpServletRequest request,HttpServletResponse response){
        getServletContext().setAttribute("class"+this.getClass().getName(), this.getClass());
    }
    
    public void index(HttpServletRequest request,HttpServletResponse response){
        if(request.getSession().getAttribute("username")!=null){
            View v=new View("user/home");
            Barang_Model m=new Barang_Model(getServletContext());
            v.setData("listCateg", m.getAllCategory());
            v.render(request, response);
        }else{
            try{
            request.getRequestDispatcher("index.jsp?sk=User&func=login").forward(request, response);
            }catch(Exception e){
            }
        }
    }
    
    public void change(HttpServletRequest request,HttpServletResponse response){
        if(request.getSession().getAttribute("username")!=null){
            
        }
    }
    
    public void register(HttpServletRequest request,HttpServletResponse response){
        if(request.getSession().getAttribute("username")!=null){
            
        }
    }
    
    public void validation(HttpServletRequest request,HttpServletResponse response){
        
    }
    
    public void login(HttpServletRequest request,HttpServletResponse response){
        if(request.getSession().getAttribute("username")!=null){
            
        }
    }
    
    public void logout(HttpServletRequest request,HttpServletResponse response){
        try{
            response.sendRedirect("");
        }catch(Exception e){
        }
    }
    
    public void firstCreditCard(HttpServletRequest request,HttpServletResponse response){
        if(request.getSession().getAttribute("id")!=null){
            
        }
    }
    
    public void addCreditCard(HttpServletRequest request,HttpServletResponse response){
        if(request.getSession().getAttribute("id")!=null){
            
        }
    }
    
    public void lihatCreditCard(HttpServletRequest request,HttpServletResponse response){
        if(request.getSession().getAttribute("username")!=null){
            
        }
    }
    
    public void cart(HttpServletRequest request,HttpServletResponse response){
        if(request.getSession().getAttribute("username")!=null){
            
        }
    }
}
