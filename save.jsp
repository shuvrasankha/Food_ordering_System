<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="Iso-8859-1"%>
<%@page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
	<title>SignUp</title>
</head>
<body>

        <%
            
            
            String un=request.getParameter("f_name");
            String ua=request.getParameter("address");
            String uf=request.getParameter("phone");
            String up=request.getParameter("pass1");
            String ue=request.getParameter("e");
            String hn=request.getParameter("h_n");
            String sn=request.getParameter("s_n");
            String an=request.getParameter("area");
            String p=request.getParameter("pin");
            String c=request.getParameter("city");
            String id=ue+ "_" + uf;
           
            try
            {
                
                Class.forName("com.mysql.jdbc.Driver");
                
                Connection Conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/foodbite","root","shuva007");
                
                Statement stmt=Conn.createStatement();
 
                String sql="insert into users values('" + un +"','"+ uf +"','" + up +"','"+ ue +"' ,'"+ hn +"' ,'"+ sn +"' ,'"+ an +"' ,'"+ p +"','"+ c +"','"+ id +"')";
               
                int x=stmt.executeUpdate(sql);
if(x!=0)
{
            out.println("<script type=\"text/javascript\">");
       out.println("alert('Signup Successful  || Please login ');");
       out.print("(window.location='user_login.jsp'); ");
       out.println("</script>");
        
        //response.sendRedirect("user_login.jsp");
}
else
{
      out.println("<script type=\"text/javascript\">");
       out.println("alert('Something Wrong || Signup again');");
       out.print("(window.location='user_signUp.jsp'); ");
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

