

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" >
        <link href="https://fonts.googleapis.com/css?family=Ubuntu+Condensed" rel="stylesheet">
        <link rel="shortcut icon" href="img2/logo5.png" type="image/x-icon">

	<style type="text/css">
	body{
                        padding-top: 40px;
                          background-image: url("img2/background3.jpg");
                          height: 100%; 
                          background-position: center;
                          background-repeat: no-repeat;
                          background-size: cover;
                          color: white;
  }
  .f1{
    color:white;
  }
  .f2{
      font-family: 'Ubuntu Condensed', sans-serif;
      color:#e74c3c;
  }

            .special-card {
                   opacity: .6;
}	
        </style>
</head>
<body>
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6 align-self-center">
                            <center>
                           <div class="card border-primary mb-3 special-card" style="max-width: 18rem;">
  <div class="card-header"><center><h1 class="f2">LOGIN  </h1></center></div>
  <div class="card-body text-primary">
     <form onsubmit="return login()" action="check.jsp" method="post" name="f2">
                        <div class="form-group">
                            <label for="exampleInputRs_name1" class="f1">Name</label>
                            <input type="text" name="" class="form-control" id="rrs_name"  placeholder="Shuva Paul"  ><br>
                          <label for="exampleInputEmail1" class="f1">Email address</label>
                          <input type="email" name="e1" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="example@email.com" required="" >
                          <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                        </div>
                        <div class="form-group">
                          <label for="exampleInputPassword1" class="f1">Password</label>
                          <input type="password" class="form-control" id="exampleInputPassword1" name="p1" placeholder="Password" required="">
                        </div>

                        <center><button  type="submit" class="btn btn-primary ">login&#187</button></center>

                </form>
    
  </div>
</div>
                            </center>

<!--end of login-->

			</div>


		</div>
  </div>
  <script type="text/javascript">
  function login(){
    var  pass = f2.p1.value;
    var pass1 =pass.trim();
    if (pass1 ==""){
      alert('Password is blank');
      return false ;
    }
    else{
      return true;
    }
  }

  </script>
 
</body>
   <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
   <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
</html>

