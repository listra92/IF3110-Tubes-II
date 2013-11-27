import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Home extends HttpServlet{
    public void doGet(HttpServletRequest request,HttpServletResponse response){
        getServletContext().setAttribute("class"+this.getClass().getName(), this.getClass());
    }
    
    public void index(HttpServletRequest request,HttpServletResponse response){
        View v=new View("home/index");
        View v2=new View("home/login");
        /*Barang_Model m=new Barang_Model(getServletContext());
        v.setData("listCateg", m.getAllCategory());
        v.setData("Sembako", m.get3BestBarang(1));
        v.setData("HP", m.get3BestBarang(2));
        v.setData("Listrik", m.get3BestBarang(3));
        v.setData("Komputer", m.get3BestBarang(4));
        v.setData("Rumah", m.get3BestBarang(5));
        v.setData("Tulis", m.get3BestBarang(6));*/
        v.render(request, response);
    }
    
    public void gallery(HttpServletRequest request,HttpServletResponse response){
        try{
            request.getRequestDispatcher("index.jsp?sk=Barang").forward(request, response);
        }catch(Exception e){
        }
    }
}
