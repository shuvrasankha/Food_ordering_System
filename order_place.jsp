<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="Iso-8859-1"%>
<%@page import="java.sql.*,java.util.*" %>

<!DOCTYPE html>
<html>
<head>
	<title>order</title>
</head>
<body>

        <%
            
            
            String u_id=session.getAttribute("ob").toString();
            String f_id=session.getAttribute("f_id").toString();
            String f_name=session.getAttribute("f2").toString();
             
            int quantity=(Integer) session.getAttribute("quantity");
            int price = (Integer) session.getAttribute("price");
            int t_price=(quantity * price);
            int pay_price=(Integer) session.getAttribute("pay_price");
           String s_name=session.getAttribute("s1").toString();
           String date= new java.util.Date().toString();
           String o_id1= f_id +"-"+u_id+"-"+quantity+"-"+date;
             String o_id=o_id1.replaceAll("\\s+", "");
            try
            {
                
                Class.forName("com.mysql.jdbc.Driver");
                
                Connection Conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/foodbite","root","shuva007");
                
                Statement stmt=Conn.createStatement();
 
                String sql="insert into orders values('" + o_id +"','"+ f_id +"','" + u_id +"','"+ s_name +"' ,'"+ quantity +"' ,'"+ t_price +"' ,'"+ pay_price +"' ,'"+ f_name +"')";
               
                int x=stmt.executeUpdate(sql);
if(x!=0)
{
    session.setAttribute("oid", o_id);
       out.println("<script type=\"text/javascript\">");
       out.println("alert('Oreder Place ');");
       out.print("(window.location='order_status.jsp'); ");
       out.println("</script>");
        
        //response.sendRedirect("user_login.jsp");
}
else
{
      out.println("<script type=\"text/javascript\">");
       out.println("alert('Something Wrong ||');");
       out.print("(window.location='foodbite.jsp'); ");
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

