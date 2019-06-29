<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="Iso-8859-1"%>
<%@page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order cancel</title>
    </head>
    <body>
        
        
        <%
            int confermation=0;
            
            String o_id=session.getAttribute("od_id").toString();
            String f_n=null;
            String price=null;
            
            String u_n=session.getAttribute("un").toString();
            String u_add=null;
            
            
            String d_phn=null;
            String d_name=null;
            
            String time=null;
            String de=null;
            String ue=null;
            String up=null;
           
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection Conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/foodbite","root","shuva007");
                Statement stmt=Conn.createStatement();
                String sql="insert into d_order values('" + confermation + "' , '" + o_id + "' , '" + u_n +"'  , '" + u_add + "'  , '" + f_n + "' , '" + price + "' ,'" + d_name + "','" + d_phn + "','" + time + "','" + de + "','" + ue + "','" + up + "')";
                  
                int x=stmt.executeUpdate(sql);
if(x!=0)
{
  
                 
                 out.println("<script type=\"text/javascript\">");
                 out.println("alert('order canceled  Successfully!');");
                 out.print("(window.location='delete.jsp'); ");
                 out.println("</script>");
}
else
{
           out.println("<script type=\"text/javascript\">");
       out.println("alert('Sorry || action failed  |');");
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

