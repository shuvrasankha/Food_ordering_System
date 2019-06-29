
<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="Iso-8859-1"%>
<%@page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
	<title>SignUp</title>
</head>
<body>

        <%
            
             String ue=session.getAttribute("ob").toString();
            String hn=request.getParameter("hn");
            String sn=request.getParameter("sn");
            String an=request.getParameter("an");
            String p=request.getParameter("pin");
            
           int t=0;
            try
            {
                
                Class.forName("com.mysql.jdbc.Driver");
                
                Connection Conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/foodbite","root","shuva007");
                
                Statement stmt=Conn.createStatement();
              
              
                if(p != null)
                {
                    String sql4="update users set pin='" + p +"' where u_email='" + ue + "' ";
                    int w=stmt.executeUpdate(sql4);
                    t=t+1;
                }
                  
                      if(hn != null)
                {
                    String sql1="update users set house_no='" + hn +"' where u_email='" + ue + "' ";
                    int x=stmt.executeUpdate(sql1);
                    t=t+1;
               }
                      
                
                
                       if(sn != null)
                {
                    String sql2="update users set st_name='" + sn +"' where u_email='" + ue + "' ";
                    int y=stmt.executeUpdate(sql2);
                    t=t+1;
                }
                
                  if(an != null)
                {
                    String sql3="update users set area='" + an +"' where u_email='" + ue + "' ";
                    int z=stmt.executeUpdate(sql3);
                    t=t+1;
                }
                 
                 
            
if(t != 0)
{
            out.println("<script type=\"text/javascript\">");
       out.println("alert('Edit Successful  ||  ');");
       out.print("(window.location='user_profile.jsp'); ");
       out.println("</script>");
        
        //response.sendRedirect("user_login.jsp");
 
}
else
{
      out.println("<script type=\"text/javascript\">");
       out.println("alert('Something Wrong || Signup again');");
       out.print("(window.location='user_profile.jsp'); ");
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

