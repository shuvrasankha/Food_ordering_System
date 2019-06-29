<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="Iso-8859-1"%>
<%@page import="java.sql.*,java.util.*" %>


        <%
            
String n=request.getParameter("name");
String c1=request.getParameter("cat1");
String c2=request.getParameter("cat2");
String p=request.getParameter("price");
String d=request.getParameter("details");
String sn=session.getAttribute("rs_name").toString();



   int id= 1; 
   
   String s= sn +"-"+n;
   String f_id=s.replaceAll("\\s+", "");
            try
            {
                
                Class.forName("com.mysql.jdbc.Driver");
                
                Connection Conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/foodbite","root","shuva007");
                
                Statement stmt=Conn.createStatement();
            
             
                    
                String sql="insert into food values( '" + f_id + "' , '" + n + "' , '" + c1 +"'  , '" + c2 + "'  , '" + p + "' , '" + sn + "' ,'" + d + "')";
                  
                int x=stmt.executeUpdate(sql);
                 
                
               
 

if(x!=0)
{
   session.setAttribute("food_id",f_id);
                 
                 out.println("<script type=\"text/javascript\">");
                 out.println("alert('Food Added  Successfully || Add more');");
                 out.print("(window.location='rs_prof.jsp'); ");
                 out.println("</script>");


    

    
            
 
}
else
{
           out.println("<script type=\"text/javascript\">");
       out.println("alert('Sorry || action failed  || Add again');");
       out.print("(window.location='rs_prof.jsp'); ");
       out.println("</script>");
}
}
catch(Exception e)
{
   System.out.print(e);
    e.printStackTrace();
}

    %>



