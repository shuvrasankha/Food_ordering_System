<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="Iso-8859-1"%>
<%@page import="java.sql.*,java.util.*" %>
        <%
            String a=session.getAttribute("db").toString();
           
            try
            {
                 Class.forName("com.mysql.jdbc.Driver");
                Connection Conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/foodbite","root","shuva007");
                Statement stmt=Conn.createStatement();
                String sql="select * from delivery_boy where d_email='" + a +"'";
                ResultSet rs=stmt.executeQuery(sql);
                while(rs.next())
                {
                String d_name=rs.getString("d_name");
                session.setAttribute("d_n",d_name);
                
                String d_phn=rs.getString("d_phn");
                session.setAttribute("d_p",d_phn);
                String s_name=rs.getString("shop");
                session.setAttribute("s_e",s_name);
                
                
                
                response.sendRedirect("login_time.jsp");
                }
            }
catch(Exception e)
{
System.out.print(e);
out.print("welcome:<font color=red>" + a + "</font>");
}
%>

