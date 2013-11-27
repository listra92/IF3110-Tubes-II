<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%!
    String uri,indexPage,pag,func;
    String target;
    Object controller;
    Class kelas;
    java.lang.reflect.Method meth;
%>
<%
    uri=request.getRequestURI();
    pag=request.getParameter("sk");
    if(pag==null){
        request.getRequestDispatcher("index.jsp?sk=Home").forward(request, response);
    }else{
        func=request.getParameter("func");
        if(func==null){
            func="index";
        }
        target = pag;
        request.getRequestDispatcher(target).include(request, response);
        try{
            kelas=(Class)getServletContext().getAttribute("class"+pag);
            meth=kelas.getMethod(func,HttpServletRequest.class,HttpServletResponse.class);
            controller=kelas.getConstructor().newInstance();
            meth.invoke(controller,request,response);
        }catch(Exception e){
        }
    }
%>
