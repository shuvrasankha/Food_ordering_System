<html>
<head>
    
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Restaurant</title>
        <link href="assets/css/bootstrap.css" rel="stylesheet">  
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" >
        <link href="https://fonts.googleapis.com/css?family=Major+Mono+Display" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Major+Mono+Display|Roboto+Mono" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">
        <link rel="shortcut icon" href="img/logo5.png" type="image/x-icon">
        <style type="text/css">
            body{
                padding-top: 30px;
                padding-bottom: 30px;
                background-image: url("img/background1.jpg");
                 height: 100%; 
           background-position: center;
           background-repeat: no-repeat;
           background-size: cover;
            }
            .f1{
                font-family: 'Major Mono Display', monospace;
                color: #2ecc71;
            }
            .f2{
                font-family: 'Major Mono Display', monospace;
               font-family: 'Roboto Mono', monospace;
               color: #48dbfb;
            }
            .f3{
                color: #0a3d62;
                font-family: 'Nunito', sans-serif;
            }

            .divi{
               margin-top: 100px;

            }
           
             .special-card {
                   opacity: .6;
                        }
     
        </style>
    

</head>
<body>
    <%
            String rs_n= session.getAttribute("rs_name").toString().toUpperCase();
            out.print("<center><h1 class=f1><font color=orange><v>" + rs_n  +"</b></font></h1><br><br></center>");
            
            
        %>
        
        
        <div class="container">
            <center>  <h1 class="f1 display-4"><b>RESTAURANT</b></h1></center><br><br><br>
        </div>
        <div class="container">
            <center>
                <button type="button" class="btn btn-outline-warning btn-lg "><a href="show_order.jsp" style="text-decoration: none ; color:yellow ">Your Orders</a></button>
            </center>
        </div><br>
        
        <div class="container"><center>  <h4 class="f2"><b>Upload Food Details</b></h4></center><br><br></div>

        
        
        
        <!-- from start -->
        
        
        <div class="container special-card ">
            <form action="food_save.jsp" method="post" name="food">
        <div class="row">
            <div class="col-md-3  ">
                <input class="form-control f3" type="text" name="name" placeholder="enter food name" required="" >
            </div>
            <div class="col-md-3">
                <select class="custom-select f3" name="cat1" placeholder="category 1" required >
                                       
                                       <option value="non-veg">non-veg</option>
                                       <option value="veg">veg</option>
                                       
                 </select>
            </div>
            <div class="col-md-3">
                <select class="custom-select f3"  name="cat2" required="" >
                                       
                                        <option value="breakfast">breakfast</option>
                                       <option value="meal">meal</option>
                                       <option value="snacks">snacks</option>
                                       <option value="desssert">dessert</option>
                                       <option value="drinks">drinks</option>
                                       <option value="main course">main_course</option>
                                       <option value="soup and salad">soup and salad</option>
                                       <option value="starter">starter</option>
                                   </select>
            </div>
             <div class="col-md-3">
                    <input class="form-control f3" type="text"  name="price" placeholder="Price of the Food" required="" >
                </div>
            
        </div><br><br>
        
        <div>
            <input class="form-control" type="text" name="details" placeholder="Anything important about the food ...." >
        </div><br><br>
                
            
            <div><center><button  type="submit" class="btn btn-outline-success" onClick="sendInfo()">Submit</button></center></div>
            </center>

            </form>
      
    <div class="container back"> 
     <div class="divi" >
        <div class="container px-lg-5">
  <div class="row mx-lg-n5">
    <div class="col py-3 px-lg-5 bb"><center><button class="btn btn-outline-warning btn-sm"><a href="" style="text-decoration: none ; color:yellow ">Edit Foods </a></button></center>
    </div>
    <div class="col py-3 px-lg-5 bb"><center><button class="btn btn-outline-warning btn-sm"><a href="food_details.jsp" style="text-decoration: none ; color:yellow ">All Foods</a></button>
    </center></div>
  </div>
</div>
</div></div>

        
            
        </div>
<span id="Head"> </span>

</body>
</html>