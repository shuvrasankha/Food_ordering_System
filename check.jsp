<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="Iso-8859-1"%>
<%@page import="java.sql.*,java.util.*" %>
        <%
            String a=request.getParameter("e1");
            String b=request.getParameter("p1");
            
            try
            {
                 Class.forName("com.mysql.jdbc.Driver");
                Connection Conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/foodbite","root","shuva007");
                Statement stmt=Conn.createStatement();
                String sql="select * from users where u_email='" + a +"' and u_password='" + b + "'";
                ResultSet rs=stmt.executeQuery(sql);
            if(rs.next())
            {
                session.setAttribute("ob", a);
                 out.println("<script type=\"text/javascript\">");
                 out.println("alert('Login Successful');");
                 out.print("(window.location='foodbite.jsp'); ");
                 out.println("</script>");
            //response.sendRedirect("foodbite.jsp");
            }
            else
       out.println("<script type=\"text/javascript\">");
       out.println("alert('email or password incorrect || Login again');");
       out.print("(window.location='user_login.jsp'); ");
       out.println("</script>");
            }
catch(Exception e)
{
System.out.print(e);
out.print("error:<font color=red>" + a + "</font>");
    

}
%>
