<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="Iso-8859-1"%>
<%@page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>

        <%
            
            
            String un=session.getAttribute("u_n").toString();
            String fn=session.getAttribute("f_n").toString();
            String p=session.getAttribute("price").toString();
          
           
            try
            {
                
                Class.forName("com.mysql.jdbc.Driver");
                
                Connection Conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/foodbite","root","shuva007");
                
                Statement stmt=Conn.createStatement();
                   
                String sql="insert into rec values('" + un +"','"+ fn +"','"+ p +"')";
               
                int x=stmt.executeUpdate(sql);
if(x!=0)
{    
    response.sendRedirect("delete.jsp");
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

