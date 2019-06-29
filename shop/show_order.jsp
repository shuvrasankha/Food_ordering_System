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
        <title>Orders</title>
        
         <style type="text/css">
            body{
                padding-top: 30px;
                padding-bottom: 30px;
                   background: #ad5389;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #3c1053, #ad5389);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #3c1053, #ad5389); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
  
          
           
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
            <h1 class="h display-4 h"><b>Pending Orders </b></h1><br><br><br>
            
            
         <%@page import="java.sql.*,java.util.*"%>
         <div class="container">
              <%
                
            String sn=session.getAttribute("rs_name").toString();
           // out.print(sn);
            
       try
{
    {
   
Class.forName("com.mysql.jdbc.Driver");

Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/foodbite", "root", "shuva007");
 
Statement stmt=conn.createStatement();
String sql="select * from orders where s_name='" + sn + "'";


ResultSet rs=stmt.executeQuery(sql);
     
      
      out.print("<table class=hovertable>");
        out.print("<tr> <th>Food Name</th><th>Price</th><th>Quantity</th><th>Confirm Order</th></tr>");
        while(rs.next())
            {
               String u_id =rs.getString("U_id");
               String o_id=rs.getString("o_id");
              session.setAttribute("order_id", o_id);
	out.print("<tr onmouseover=this.style.backgroundColor='#ff7979' ; onmouseout=this.style.backgroundColor='white';><td>" + rs.getString("f_name") + "</td><td>" + rs.getInt("t_price") +"</td><td>" + rs.getInt("quan") +"</td><td><a href=order_con.jsp?sd=" + u_id + ">View</a></td></tr>");
            }
        out.print("</table>");
      
        }
       
}
        catch(Exception e)
                {}
                %>
       
         </div>
       
       </center>
       
    </body>
</html>
