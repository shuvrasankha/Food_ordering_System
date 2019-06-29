<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="img2/logo5.png" type="image/x-icon">
          <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" >
          <link rel="shortcut icon" href="img/logo5.png" type="image/x-icon">
          <link href="https://fonts.googleapis.com/css?family=Source+Code+Pro" rel="stylesheet">
          <link href="https://fonts.googleapis.com/css?family=Mali|Source+Code+Pro" rel="stylesheet">
        <title>Foodbite</title>
        
      <style type="text/css">
            body{
              
                padding-bottom: 30px;
                       background-image: url("img2/background2.jpg");
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
      .special-nav {
                   opacity: .9;
}         
.myButton {text-decoration: none;
	background-color:#ffffff;
	-moz-border-radius:36px;
	-webkit-border-radius:36px;
	border-radius:36px;
	
	display:inline-block;
	cursor:pointer;
	color:blue;
	font-family:Arial;
	font-size:20px;
	font-weight:bold;
	padding:9px 17px;
	text-decoration:none;
	text-shadow:5px 1px 1px #2f6627;
}
.myButton:hover {
	background-color:#5cbf2a;
}
.myButton:active {
	position:relative;
	top:1px;
}
 </style>


<script>
var request;
function sendInfo()
{
var v=document.sort.rdo.value;
var url="sort.jsp?val="+v;

if(window.XMLHttpRequest){
request=new XMLHttpRequest();
}
else if(window.ActiveXObject){
request=new ActiveXObject("Microsoft.XMLHTTP");
}

try
{
request.onreadystatechange=getInfo;
request.open("GET",url,true);
request.send();
}
catch(e)
{
alert("Unable to connect to server");
}
}

function getInfo(){
if(request.readyState==4){
var val=request.responseText;
document.getElementById('Head').innerHTML=val;
}
}

</script>

    </head>
    <body>
        <center>
        <!--Start Nav -->

  <div class=" special-nav">
      <nav class="navbar navbar-expand-lg navbar-light bg-danger">
          <a class="navbar-brand" href="#"><img src="img2/logo4.png"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Link</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="foodbite.jsp" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Dropdown
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0" action="search.jsp">
        <input class="form-control mr-sm-2" type="search" name="f" placeholder="Search" aria-label="Search" required="">
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit"><img src="img2/search.png"></button>
    </form>
  </div>
</nav>
  </div><br><br><br>

  <!-- End Nav-->
            </div>

         <%@page import="java.sql.*,java.util.*"%>
         <div class="con">
              <%
                
            String sn=session.getAttribute("f").toString();
            
            String s=request.getParameter("cat1");
           String r="Rs. ";
            
       try
{
  
Class.forName("com.mysql.jdbc.Driver");

Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/foodbite", "root", "shuva007");
  
Statement stmt=conn.createStatement();
String sql="select * from food where cat2='" + sn + "' and cat1='" + s +"'";


ResultSet sr=stmt.executeQuery(sql);
        out.print("<table class=hovertable>");
        out.print("<tr> <th>Food Name</th><th>Category  </th><th>Price</th><th>Details</th><th>Restaurant</th><th>Add</th></tr>");
        while(sr.next())
            {
                String x;
x =sr.getString("f_id");
	out.print("<tr  onmouseover=this.style.backgroundColor='#ff7979' ; onmouseout=this.style.backgroundColor='white';><td>" + sr.getString("f_name").toUpperCase()  + "</td><td>" + sr.getString("cat1") + "</td><td>"+ r + sr.getInt("price") +"</td><td>" + sr.getString("description") +"</td><td>" + sr.getString("s_name") +"</td><td><a href=cart.jsp?sd=" + x + ">+</a></td></tr>");
            }
        out.print("</table>");
        }
        catch(Exception e)
                {}
                %>
       
         </div>
       </center>
       
    </body>
    <script type="text/javascript">
        function fun(){
            document.getElementById("sort").style.visibility = "visible";
        }
        function fun2(){
            document.getElementById("sort").style.visibility = "hidden";
        }
    </script>
</html>
