<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="Iso-8859-1"%>
<%@page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
	<title>food values</title>
</head>
<body>

        <%
            
             String f_id=session.getAttribute("f_id").toString();
            
            String fn=request.getParameter("fn");
            String sn=request.getParameter("c1");
            String an=request.getParameter("c2");
            String p=request.getParameter("price");
            String d=request.getParameter("desc");
            
           int t=0;
            try
            {

                Class.forName("com.mysql.jdbc.Driver");
                
                Connection Conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/foodbite","root","shuva007");
                
                Statement stmt=Conn.createStatement();
              
                if(p != null)
                {
                    String sql4="update food set price='" + p +"' where f_id='" + f_id + "' ";
                    int w=stmt.executeUpdate(sql4);
                    t=t+1;
                }
                  
                      if(fn != null)
                {
                    String sql1="update food set f_name='" + fn +"' where f_id='" + f_id + "' ";
                    int x=stmt.executeUpdate(sql1);
                    t=t+1;
               }
                      
                
                
                       if(sn != null)
                {
                    String sql2="update food set cat1='" + sn +"' where f_id='" + f_id + "' ";
                    int y=stmt.executeUpdate(sql2);
                    t=t+1;
                }
                
                  if(an != null)
                {
                    String sql3="update food set cat2='" + an +"' where f_id='" + f_id + "' ";
                    int z=stmt.executeUpdate(sql3);
                    t=t+1;
                }
                   if(d != null)
                {
                    String sql5="update food set description='" + an +"' where f_id='" + f_id + "' ";
                    int z=stmt.executeUpdate(sql5);
                    t=t+1;
                }
                 
                 
            
if(t != 0)
{
            out.println("<script type=\"text/javascript\">");
       out.println("alert('Edit Successful  ||  ');");
       out.print("(window.location='food_details.jsp'); ");
       out.println("</script>");
        
        //response.sendRedirect("user_login.jsp");
 
}
else
{
      out.println("<script type=\"text/javascript\">");
       out.println("alert('Something Wrong || Enter vlue again');");
       out.print("(window.location='food_details.jsp'); ");
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

