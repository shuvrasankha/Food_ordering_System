<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="Iso-8859-1"%>
<%@page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>

        <%
            
            int p=0;
            String un=request.getParameter("name");
            String shop=request.getParameter("shop");
            String uf=request.getParameter("phone");
            String up=request.getParameter("pass1");
            String ue=request.getParameter("email");
            String id=ue+"_"+uf;
            
           
            try
            {
                
                Class.forName("com.mysql.jdbc.Driver");
                
                Connection Conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/foodbite","root","shuva007");
                
                Statement stmt=Conn.createStatement();
                   
                String sql="insert into delivery_boy values('" + un +"','"+ ue +"','"+ uf +"','" + up +"','" + shop +"','" + id +"','" + p +"')";
               
                int x=stmt.executeUpdate(sql);
if(x!=0)
{
   out.println("<script type=\"text/javascript\">");
       out.println("alert('Signup Successful  || Please login ');");
       out.print("(window.location='db_login.jsp'); ");
       out.println("</script>");
            
    
    //response.sendRedirect("db_login.jsp");
 
}
else
{
    out.println("<script type=\"text/javascript\">");
       out.println("alert('Something Wrong || Signup again');");
       out.print("(window.location='db_signup.jsp'); ");
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

