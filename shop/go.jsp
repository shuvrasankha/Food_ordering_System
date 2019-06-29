<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="Iso-8859-1"%>
<%@page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        
        <%
            int confermation=1;
            
            String o_id=session.getAttribute("od_id").toString();
            String f_n=session.getAttribute("fn").toString();
            String price=session.getAttribute("pr").toString();
            
            String u_n=session.getAttribute("un").toString();
            String u_add=session.getAttribute("add").toString();
            String u_email=session.getAttribute("u_email").toString();
            String u_phone=session.getAttribute("u_phone").toString();
            
            
            String d_phn=session.getAttribute("d_phone").toString();
            String d_name=request.getParameter("db");
            String d_e=session.getAttribute("d_e").toString();
            
            
            String z=request.getParameter("time");
            String w=request.getParameter("t1");
            String time=w+"_"+z;
           
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection Conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/foodbite","root","shuva007");
                Statement stmt=Conn.createStatement();
                String sql="insert into d_order values('" + confermation + "' , '" + o_id + "' , '" + u_n +"'  , '" + u_add + "'  , '" + f_n + "' , '" + price + "' ,'" + d_name + "','" + d_phn + "','" + time + "','" + d_e + "','" + u_email + "','" + u_phone + "')";  
                int x=stmt.executeUpdate(sql);
if(x!=0)
{
  
                 
                 out.println("<script type=\"text/javascript\">");
                 out.println("alert('order Added  Successfully || Add more');");
                 out.print("(window.location='delete.jsp'); ");
                 out.println("</script>");
}
else
{
           out.println("<script type=\"text/javascript\">");
       out.println("alert('Sorry || action failed  || Add again');");
       out.print("(window.location='order_con.jsp'); ");
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
