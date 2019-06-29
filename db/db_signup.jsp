
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <html>
 <head>
 <meta>
<title>Signup</title>
<head>
    <link rel="shortcut icon" href="img2/logo5.png" type="image/x-icon">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
     <link rel="shortcut icon" href="img/logo5.png" type="image/x-icon">
    <style type="text/css">
    body{
        margin-top: 30px;
          background-image: url("img/db2.jpg");
          height: 100%; 
           background-position: center;
           background-repeat: no-repeat;
           background-size: cover;

color: white;
    }
    .a{
      color:white;
      padding-top:100px;
    }
  </style>

</head>
<body>
    <center>
 <h1>  SIGN UP  </h1>
 <center>
  <div class="container a">
     <%@page import="java.sql.*,java.util.*"%>
     <%
          try
        {
                 Class.forName("com.mysql.jdbc.Driver");
                Connection Conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/foodbite","root","shuva007");
                Statement stmt=Conn.createStatement();
                String sql="select * from shop ";
                ResultSet rs=stmt.executeQuery(sql);
               out.print("<form onsubmit='return recheck()'action='db_save.jsp' method='post' name ='f1'>");
        
               out.print("<div class='container'>");
               out.print("<select class='dropdown'  name='shop'>");
  while (rs.next())
   {
        out.print("<option value=" + rs.getString("s_email") + ">" + rs.getString("shop_name") + "</option>");
   }
out.print("</select> ");
out.print("</div><br>");
out.print(" <div class='col-md-6'><input type='name'class='form-control' name='name' placeholder='Enter Name' required > <br></div>");

out.print("<div class='col-md-6'><input type='email'class='form-control'  name='email' id='exampleInputEmail1'  placeholder='example@email.com' required > <br></div>");
out.print(" <div class='col-md-6'><input type='number' class='form-control'  name='phone'   placeholder='Enter Phone N0 :1234567890' required> <br></div>");
out.print("<div class='col-md-6'><input type='password' class='form-control'  name ='pass1' placeholder='Password' required> <br></div>");
out.print("<div class='col-md-6'><input type='password' class='form-control'  name ='pass2' placeholder='Re Enter Password' required> <br></div>");
out.print("<div class='form-group'>");
out.print("<div class='form-check'>");
out.print("<input class='form-check-input' type='checkbox' id='gridCheck' required>");
out.print("<label class='form-check-label' for='gridCheck'><a href='terms.html'>Accept T&C</a></label>");
out.print("</div>");
out.print("</div>");

out.print("<center><button type='submit' class='btn btn-success btn-lg'  value=''>Sign Up</button></center>");

out.print("</form>");
        }
 catch(Exception e)
{
System.out.print(e);
out.print("<font color=red> Failed</font>");
}
          
     %>
  </div>
 </center>
</body>
<script type="text/javascript">
function recheck(){
  var phone =f1.phone.value;
  var phonelen  = phone.length ;
  var pass1 =f1.pass1.value;
  var pass2 = f1.pass2.value;
  var plength = pass1.length ;
  var pass =pass1.trim();

  if (phonelen < 10)
 {
     alert('phone no is wrong');
     return false;
 }
 else if (phonelen > 10) {
     alert('phone no is wrong');
     return false;
 }

 else if (plength <= 6)
 {
     alert( ' Password is too short') ;
     return false ;

 }

 else if (pass1 == pass2) {
    return true;
 }
 else{
     alert("password does not match");
     return false;
 }
}

</script>
</head>

