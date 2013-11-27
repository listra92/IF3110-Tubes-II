import java.util.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class View{
    HashMap<String,Object> data;
    private String render;
    
    public View(String template){
        data=new HashMap<String,Object>();
        render="lihat/"+template.toLowerCase()+".jsp";
    }
    
    public void setData(String var,Object val){
        data.put(var, val);
    }
    
    public void render(boolean direct_output,HttpServletRequest request,HttpServletResponse response){
        try{
            request.getRequestDispatcher(render).include(request, response);
        }catch(Exception e){
        }
    }
    public void render(HttpServletRequest request,HttpServletResponse response){
        render(true,request,response);
    }
}
