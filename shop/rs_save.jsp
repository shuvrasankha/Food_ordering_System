<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="Iso-8859-1"%>
<%@page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>

        <%
            String on=request.getParameter("oname");
            String rn=request.getParameter("rname");
            String ad=request.getParameter("add");
         
            String uf=request.getParameter("phone");
            String up=request.getParameter("pass1");
            String ue=request.getParameter("email");
           
            try
            {
                
                Class.forName("com.mysql.jdbc.Driver");
                
                Connection Conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/foodbite","root","shuva007");
                
                Statement stmt=Conn.createStatement();
               
                
                String sql="insert into shop values('"+ on +"','"+ rn +"','" + ue +"','"+ ad +"','"+ uf +"','"+ up +"')";
              
                int x=stmt.executeUpdate(sql);
                 
            

if(x!=0)
{
    out.println("<script type=\"text/javascript\">");
       out.println("alert('Signup Successful  || Please login ');");
       out.print("(window.location='rs_login.jsp'); ");
       out.println("</script>");
           // response.sendRedirect("rs_login.jsp");
 
}
else
{
    out.println("<script type=\"text/javascript\">");
       out.println("alert('Something Wrong || Signup again');");
       out.print("(window.location='rs_signup.jsp'); ");
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


