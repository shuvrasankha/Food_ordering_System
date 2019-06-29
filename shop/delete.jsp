<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="Iso-8859-1"%>
<%@page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <%
            String o_id=session.getAttribute("od_id").toString();
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection Conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/foodbite","root","shuva007");
                Statement stmt=Conn.createStatement();
                String sql="DELETE FROM orders WHERE o_id='" + o_id + "'";
                  
                int x=stmt.executeUpdate(sql);
if(x!=0)
{
                 out.println("<script type=\"text/javascript\">");
                 
                 out.print("(window.location='show_order.jsp'); ");
                 out.println("</script>");
}
else
{      out.println("<script type=\"text/javascript\">");
       out.print("(window.location='show_order.jsp'); ");
       out.println("</script>");
}
}
catch(Exception e)
{
   System.out.print(e);
    e.printStackTrace();
}

        %>
    </body>
</html>
