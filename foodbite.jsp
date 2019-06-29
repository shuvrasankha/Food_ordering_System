
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title> FoodBite</title>

    <!-- Favicon -->
    <link rel="shortcut icon" href="img2/logo5.png" type="image/x-icon">
    <!-- Main style sheet -->

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto+Mono|ZCOOL+QingKe+HuangYou" rel="stylesheet">
    
    <!--bootstrap-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
    
    <style type="text/css">
        body{
             
            padding-bottom: 30px;
                      background-image: url("img2/food.jpg");
          height: 100%; 
           background-position: center;
           background-repeat: no-repeat;
           background-size: cover;
            
        }
        
        .bor{
            padding: 10px;
        }
        .f1{
            font-family: 'ZCOOL QingKe HuangYou', cursive;
            font-family: 'Roboto Mono', monospace;
            color: #00a8ff;
        }
               .special-card {
                   opacity: .8;
}
        .special-nav {
                   opacity: 0.9;
                   color:#FF3031;
}
#text{
    visibility:hidden;
}
.an{
     transition: all .37s linear;
}
    </style>
    

  </head>
  <body>  
  
  <!--Start Nav -->

  <div class=" special-nav ">
      <nav class="navbar navbar-expand-lg navbar-light bg-danger">
          <a class="navbar-brand" href="foodbite.jsp"><img src="img2/logo4.png"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
          <a class="nav-link" href="aboutus.html">About</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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
        <a class="nav-link " href="user_profile.jsp" tabindex="-1" aria-disabled="true">Profile</a>
      </li>
    </ul>
      <form class="form-inline my-2 my-lg-0" action="search.jsp">
          <input class="form-control mr-sm-2" name="f" type="search" placeholder="Search" aria-label="Search" required="">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit"><img src="img2/search.png"></button>
    </form>
  </div>
</nav>
  </div><br><br><br>

  <!-- End Nav-->
  
  <center> <h3 class="f1">Order Now</h3></center><br>
  <!--menu-->
  
  <center>
      
      <div class="container">
      <div class="row">
          <div class="col-md-3 bor" onmouseover="fun3()" onmouseout="fun4()"  >
              <div class="card special-card an" style="width: 13rem;" id="d1">
                  <a href="breakfast.jsp" ><img src="img2/brakfast.png"  class="card-img-top" alt="..."></a>
                  <div class="card-body" id="text"  >
                      <p class="card-text"><a href="breakfast.jsp" style="text-decoration:none ;color: #FF3E4D" ><b><h3>BREAKFAST</h3></b></a></p>
  </div>
</div></div>
          <div class="col-md-3 bor" onmouseover="fun()" onmouseout="fun2()">
              <div class="card special-card an" style="width: 13rem;" id="d2" >
                  <a href="meal.jsp"><img src="img2/meal.png" class="card-img-top" alt="..."></a>
                  <div class="card-body" id="t2" style="visibility:hidden">
                      <p class="card-text"><a href="meal.jsp" style="text-decoration:none ; color: #FF3E4D"><b><h3>MEAL</h3></b></a></p>
  </div>
</div>
          </div>
          <div class="col-md-3 bor" onmouseover="fun5()" onmouseout="fun6()">
              <div class="card special-card an" style="width: 13rem;"  id="d3">
                  <a href="dessert.jsp"><img src="img2/dessert.png" class="card-img-top" alt="..."></a>
  <div class="card-body" id="t3" style="visibility:hidden">
      <p class="card-text"><a href="dessert.jsp" style="text-decoration:none ; color: #FF3E4D" ><b><h3>DESSERT</h3></b></a></p>
  </div>
</div>
          </div>
          <div class="col-md-3 bor" onmouseover="fun7()" onmouseout="fun8()">
              <div class="card special-card an" style="width: 13rem;" id="d4">
                  <a href="drinks.jsp"><img src="img2/drink2.png" class="card-img-top" alt="..."></a>
  <div class="card-body" id="t4" style="visibility:hidden">
      <p class="card-text"><a href="drinks.jsp" style="text-decoration:none ; color: #FF3E4D"><b><h3>DRINKS</h3></b></a></p>
  </div>
</div>
          </div>
      </div>
  </div>
              
      <div class="container">
      <div class="row">
          <div class="col-md-3 bor" onmouseover="fun9()" onmouseout="fun10()">
              <div class="card special-card an" style="width: 13rem;" id="d5">
                  <a href="salad.jsp" ><img src="img2/salad.png"  class="card-img-top" alt="..."></a>
  <div class="card-body" id="t5" style="visibility:hidden">
      <p class="card-text"><a href="salad.jsp"  style="text-decoration:none ;color: #FF3E4D"><b><h3>SALAD</h3></b></a></p>
  </div>
</div></div>
          <div class="col-md-3 bor" onmouseover="fun11()" onmouseout="fun12()">
              <div class="card special-card an" style="width: 13rem;" id="d6">
                  <a href="main_c.jsp"><img src="img2/main2.png" class="card-img-top" alt="..."></a>
  <div class="card-body" id="t6" style="visibility:hidden">
      <p class="card-text"><a href="main_c.jsp" style="text-decoration:none ;color: #FF3E4D"><b><h4>MAIN COURSE</h4></b></a></p>
  </div>
</div>
          </div>
          <div class="col-md-3 bor" onmouseover="fun13()" onmouseout="fun14()">
              <div class="card special-card an" style="width: 13rem;" id="d7">
                  <a href="soup.jsp"><img src="img2/soup.png" class="card-img-top" alt="..."></a>
                  <div class="card-body" id="t7" style="visibility:hidden">
                      <p class="card-text"><a href="soup.jsp" style="text-decoration:none ; color: #FF3E4D"><b><h3>SOUP</h3></b></a></p>
  </div>
</div>
          </div>
          <div class="col-md-3 bor" onmouseover="fun15()" onmouseout="fun16()">
              <div class="card special-card an" style="width: 13rem;" id="d8">
                  <a href="snacks.jsp"><img src="img2/snack.png" class="card-img-top" alt="..."></a>
  <div class="card-body" id="t8" style="visibility:hidden">
      <p class="card-text"><a href="snacks.jsp" style="text-decoration:none ; color: #FF3E4D"><b><h3>SNACKS</h3></b></a></p>
  </div>
</div>
          </div>
      </div>
  </div>
  </center>
  </body>
    <script type="text/javascript">
        function fun(){
            document.getElementById("t2").style.visibility = "visible";
            document.getElementById("d2").style.width= "16rem";
            
        }
        function fun2(){
            document.getElementById("t2").style.visibility = "hidden";
            document.getElementById("d2").style.width= "13rem";
        }
        function fun3(){
            document.getElementById("text").style.visibility = "visible";
            document.getElementById("d1").style.width= "16rem";
        }
        function fun4(){
            document.getElementById("text").style.visibility = "hidden";
            document.getElementById("d1").style.width= "13rem";
        }
         function fun5(){
            document.getElementById("t3").style.visibility = "visible";
            document.getElementById("d3").style.width= "16rem";
        }
        function fun6(){
            document.getElementById("t3").style.visibility = "hidden";
            document.getElementById("d3").style.width= "13rem";
        }
        function fun7(){
            document.getElementById("t4").style.visibility = "visible";
            document.getElementById("d4").style.width= "16rem";
        }
        function fun8(){
            document.getElementById("t4").style.visibility = "hidden";
            document.getElementById("d4").style.width= "13rem";
        } function fun9(){
            document.getElementById("t5").style.visibility = "visible";
            document.getElementById("d5").style.width= "16rem";
        }
        function fun10(){
            document.getElementById("t5").style.visibility = "hidden";
            document.getElementById("d5").style.width= "13rem";
        }
        function fun11(){
            document.getElementById("t6").style.visibility = "visible";
            document.getElementById("d6").style.width= "16rem";
        }
        function fun12(){
            document.getElementById("t6").style.visibility = "hidden";
            document.getElementById("d6").style.width= "13rem";
        } function fun13(){
            document.getElementById("t7").style.visibility = "visible";
            document.getElementById("d7").style.width= "16rem";
        }
        function fun14(){
            document.getElementById("t7").style.visibility = "hidden";
            document.getElementById("d7").style.width= "13rem";
        }
        function fun15(){
            document.getElementById("t8").style.visibility = "visible";
            document.getElementById("d8").style.width= "16rem";
        }
        function fun16(){
            document.getElementById("t8").style.visibility = "hidden";
            document.getElementById("d8").style.width= "13rem";
        }
        
    </script>
  
  
</html>  
  
  
  
  
  
