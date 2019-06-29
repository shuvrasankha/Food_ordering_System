
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Sign up</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" >
        <link rel="shortcut icon" href="img2/logo5.png" type="image/x-icon">
        <link href="https://fonts.googleapis.com/css?family=Ubuntu+Condensed" rel="stylesheet">
	<style type="text/css">
  body{
    margin-top: 30px;
    background-image: url("img2/background4.jpg");
    background-position: center;
           background-repeat: no-repeat;
           background-size: cover;
           height: 100%; 

  }
  .f1{
    color:#f53b57;
    font-family: 'Ubuntu Condensed', sans-serif;
  }
         .special-nav {
                   opacity: .7;
}
</style>

</head>
<body>
	
<center>
    		<div class="card border-primary mb-3 special-nav" style="max-width: 35rem; ">
  <div class="card-header"><center><h1 class="f1">SignUp</h1></center></div>
  <div class="card-body text-primary">
   <center>
       <form onsubmit= " return recheck()" action="save.jsp" method="post" name="f1">
                 <div >
                   <div class="col-md-6">
                       <label for="phone" class="f1">Enter your Full name</label>
                     <input type="text" class="form-control " placeholder="Full name" name="f_name" required="">
                   </div>

                 </div>
                 <br>
                  <div >
                    <div class="form-group col-md-6">
                        <label for="phone" class="f1">Enter your phone number</label>
                      <input type="number" class="form-control" id="phone" name="phone" placeholder="0123456789">
                    </div>
                  </div>

          <div >
            <div class="form-group col-md-6">
              <label for="inputEmail4" class="f1">Email</label>
                 <input type="email" class="form-control" id="inputEmail4" placeholder="example@email.com" name="e" required >
            </div>
            <div class="form-group col-md-6">
              <label for="inputPassword4"class="f1" >Password</label>
                 <input type="password" class="form-control" id="inputPassword1" placeholder="Password" name="pass1" required=""><br>

                 <input type="password" class="form-control" id="inputPassword2" placeholder="Re-enter Password" name="pass2" required="">
            </div>
          </div>
          <div class="form-group col-md-6">
            <label for="inputAddress" class="f1" >Address</label>
            <input type="text" class="form-control" id="inputAddress" name="h_n" placeholder="House No." required="" ><br>
            <input type="text" class="form-control" id="inputAddress" name="s_n" placeholder="Street Name" required="" ><br>
            <input type="text" class="form-control" id="inputAddress" name="area" placeholder="Area" required="" ><br>
            <input type="number" class="form-control" id="inputAddress" name="pin" placeholder="PIN" ><br>
            <input type="text" class="form-control" id="inputAddress" name="city" placeholder="City name" >
          </div>
          <div class="form-group">
            <div class="form-check">
              <input class="form-check-input" type="checkbox" id="gridCheck" required>
              <label class="form-check-label" for="gridCheck" class="f1"><a href="terms.html">Accept T&C</a></label>
            </div>
          </div>
          <center><button type="submit" class="btn btn-success "  value="">SignUp&#8593</button></center>
           </form>
    </center>

  </div>
</div>
</center>

<script type="text/javascript">
  function recheck() {

        var phone = f1.phone.value;
        var phonelen  = phone.length ;

        var p1 = f1.pass1.value ;
        var p2 = f1.pass2.value ;
        var plength = p1.length ;

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
        else if (p1 == p2) {
           return true;
        }
        else{
            alert("password does not match");
            return false;
        }

    }

</script>
</body>
   <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
   <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
</html>
