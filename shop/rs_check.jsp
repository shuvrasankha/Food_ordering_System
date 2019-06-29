
<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="Iso-8859-1"%>
<%@page import="java.sql.*,java.util.*" %>
        <%
            String a=request.getParameter("e1");
            String b=request.getParameter("p1");
            String c=request.getParameter("rs_name");
            try
            {
                 Class.forName("com.mysql.jdbc.Driver");
                Connection Conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/foodbite","root","shuva007");
                Statement stmt=Conn.createStatement();
                String sql="select * from shop where s_email='" + a +"' and s_password='" + b + "' and shop_name='" + c + "' ";
                ResultSet rs=stmt.executeQuery(sql);
                
                //String s_id=rs.getString("shop_id").toString();
                
            if(rs.next())
            {
                session.setAttribute("rs_name", c);
                session.setAttribute("s_email", a);
                 out.println("<script type=\"text/javascript\">");
                 out.println("alert('Login Successful');");
                 out.print("(window.location='rs_prof.jsp'); ");
                 out.println("</script>");
                
               // session.setAttribute("rs_id", s_id);
            //response.sendRedirect("rs_prof.jsp");
            }
            else
                   out.println("<script type=\"text/javascript\">");
       out.println("alert('email or password incorrect || Login again');");
       out.print("(window.location='rs.jsp'); ");
       out.println("</script>");
       
        
      // response.sendRedirect("rs.jsp"); 
            }
catch(Exception e)
{
System.out.print(e);
out.print("<font color=red>Login Failed</font>");
    

}
%>

