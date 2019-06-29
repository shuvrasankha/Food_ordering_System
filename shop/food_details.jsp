<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="img2/logo5.png" type="image/x-icon">
          <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" >
          <link href="https://fonts.googleapis.com/css?family=Source+Code+Pro" rel="stylesheet">
          <link rel="shortcut icon" href="img/logo5.png" type="image/x-icon">
        <title>All Foods</title>
        
       <style type="text/css">
            body{
                padding-top: 30px;
                padding-bottom: 30px;
                       background-image: url("img/back6.jpg");
          height: 100%; 
           background-position: center;
           background-repeat: no-repeat;
           background-size: cover;
            }
            .f1{
                font-family: 'ZCOOL QingKe HuangYou', cursive;
                color: #f39c12;
            }
            
            table.hovertable {
	opacity: .8;
	font-size:18px;
	color:#333333;
	border-width: 10px;
	
	border-collapse: collapse;
}
table.hovertable th {
                 font-family: 'Source Code Pro', monospace;
	background-color:#f39c12;
                opacity: .7;
	
	padding: 8px;
	
	
                 color: white;
                 text-align: center;
}
table.hovertable tr {
	background-color:white;
                 opacity: .8;
                 border-radius: 25px;
}
table.hovertable td {
                 font-family: 'Source Code Pro', monospace;
                 font-family: 'Mali', cursive;
	border-width: 12px;
                 text-align: center;
	padding-top: 17px;
                 padding-bottom: 17px;
	padding-left: 8px;
                 padding-right: 8px;
                 color: blue;
}
.con{
    padding-left: 40px;
    padding-right: 40px
}
.h{
    font-family: 'Source Code Pro', monospace;
    color: #ff9f43;
}      
        </style>

    </head>
    <body>
        <center>
            <h1 class="h display-4 h"><b>Foods on your Shop</b></h1><br><br><br>
            
            
         <%@page import="java.sql.*,java.util.*"%>
         <div class="container">
              <%
                
            String sn=session.getAttribute("rs_name").toString();
            
       try
{
   
Class.forName("com.mysql.jdbc.Driver");

Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/foodbite", "root", "shuva007");
 
Statement stmt=conn.createStatement();
String sql="select * from food where s_name='" + sn + "'";


ResultSet sr=stmt.executeQuery(sql);
        out.print("<table class=hovertable>");
        out.print("<tr> <th>Food Name</th><th>Category 1 </th><th>Category 2</th><th>Price</th><th>Details</th><th>Edit Values</th></tr>");
        while(sr.next())
            {
               String x =sr.getString("f_id");
	out.print("<tr onmouseover=this.style.backgroundColor='#ff7979' ; onmouseout=this.style.backgroundColor='white';><td>" + sr.getString("f_name") + "</td><td>" + sr.getString("cat1") + "</td><td>" + sr.getString("cat2") +"</td><td>" + sr.getInt("price") +"</td><td>" + sr.getString("description") +"</td><td><a href=fedit.jsp?sd=" + x + ">edit</a></td></tr>");
            }
        out.print("</table>");
        }
        catch(Exception e)
                {}
                %>
       
         </div>
       
       </center>
       
    </body>
</html>
