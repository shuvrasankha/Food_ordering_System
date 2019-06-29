<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="Iso-8859-1"%>
<%@page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>

        <%
            
            
            String dn=session.getAttribute("d_n").toString();
            String shop=session.getAttribute("s_e").toString();
            String dp=session.getAttribute("d_p").toString();
            String de=session.getAttribute("db").toString();
            String date= new java.util.Date().toString();
            
           
            try
            {
                
                Class.forName("com.mysql.jdbc.Driver");
                
                Connection Conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/foodbite","root","shuva007");
                
                Statement stmt=Conn.createStatement();
                   
                String sql="insert into d_boy values('" + dn +"','"+ dp +"','"+ shop +"','" + date +"','" + de +"')";
               
                int x=stmt.executeUpdate(sql);
if(x!=0)
{
   out.println("<script type=\"text/javascript\">");
       //out.println("alert('Signup Successful  || Please login ');");
       out.print("(window.location='home.jsp'); ");
       out.println("</script>");

 
}
else
{
    out.println("<script type=\"text/javascript\">");
       //out.println("alert('Something Wrong || Signup again');");
       out.print("(window.location='db_login.jsp'); ");
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


