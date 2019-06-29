

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <html>
 <head>
 <meta>
<title>SignUP</title>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
    
    <link rel="shortcut icon" href="img/logo5.png" type="image/x-icon">
    <style type="text/css">
                  body{
                                padding-top: 40px;
                          background-image: url("img/background1.jpg");
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


<body>
    
    
<center> <h3>   SIGN UP  </h3><br><br>
        
        
    <div class="container a">
      <form  onsubmit= " return recheck()"action="rs_save.jsp " method="post" name ="f1">
     <div class="col-md-6"><input type="name"class="form-control" name="oname" placeholder="Enter Owner Name" required > <br></div>
     <div class="col-md-6"><input type="name"class="form-control" name="rname" placeholder="Enter Restaurant Name" required > <br></div>
    <div class="col-md-6"><input type="email"class="form-control"  name="email" id="exampleInputEmail1"  placeholder="example@email.com" required > <br></div>
    <div class="col-md-6"><input type="name"class="form-control" name="add" placeholder="Enter Address" required > <br></div>
    <div class="col-md-6"><input type="number"class="form-control"  name="phone"   placeholder="Enter Phone N0 :1234567890" required> <br></div>
    <div class="col-md-6"><input type="password" class="form-control"  name ="pass1" placeholder="Password" required> <br></div>

    <div class="col-md-6"><input type="password"class="form-control"  name ="pass2" placeholder="Re Enter Password" required> <br></div>


    <div class="form-group">
      <div class="form-check">
        <input class="form-check-input" type="checkbox" id="gridCheck" required>
        <label class="form-check-label" for="gridCheck"><a href="terms.html">Accept T&C</a></label>
      </div>
    </div>

    <center><button type="submit" class="btn btn-success btn-lg"  value="">Sign Up</button></center>

    </form>
  </div>

  

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



