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
                String sql="select * from delivery_boy where d_email='" + a +"' and d_pass='" + b + "'";
                ResultSet rs=stmt.executeQuery(sql);
            if(rs.next())
            {
                session.setAttribute("db", a);
            response.sendRedirect("pre1.jsp");
            }
            else
            response.sendRedirect("delivery.jsp");
            }
catch(Exception e)
{
System.out.print(e);
out.print("welcome:<font color=red>" + a + "</font>");
}
%>

