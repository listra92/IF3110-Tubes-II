<%@ page import="javax.servlet.*" %>
<%
    ServletContext ctx = getServletContext();
    ctx.setAttribute("SITE_ROOT", request.getContextPath());
%>
<%@ include file="router.jsp" %>