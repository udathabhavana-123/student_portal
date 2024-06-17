<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!doctype html>
<html lang="en"><head>
<meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<title>Home</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
 <link href="css/styles1.css" rel="stylesheet"/> 
   <style>
   .bg-danger {
    --bs-bg-opacity: 1;
    background-color: rgba(var(--bs-danger-rgb), var(--bs-bg-opacity)) !important;
    width: 130%;
    height: 45px;
}
.bg-light {
    --bs-bg-opacity: 1;
    background-color: rgba(var(--bs-light-rgb), var(--bs-bg-opacity)) !important;
    width: 130%;
    height: 73px;
}
.container-fluid{
box-shadow:  0px 0px 5px 0px rgba(32, 31, 31, 0.5);
    margin-top: -6px;
}
.navbar-nav {
        flex-direction: row;
        margin-left: 244px;
    }
    .carousel-inner {
      width: 200%;
      height: 450px;
      }
    .carousel-control-prev{
    margin-left: 200px;
    
    }
    .carousel-control-next{
    margin-right: -300px;}
    .carousel-indicators{
    margin-right:-350px;
        margin-bottom: 71px;
    }
    .container {
	box-shadow: 0px 0px 0px 0px rgba(32, 31, 31, 0.5);
	width: 100%;
    height: 20vh;
    margin-bottom: 30;
   }
   .col-6 {
    flex: 0 0 auto;
    width: 70%;
    font-family:-webkit-body;
    color:red;
    font-size: x-large;
   }
   .row{
    margin-left: 200px;
    text-align: center;
    }
   .col-sm-6 {
        flex: 0 0 auto;
        width: 49%;
   }
        .card{
margin-left: 90Px;
box-shadow: 0px 0px 10px 0px rgba(32, 31, 31, 0.5);
}
.solid-border{
  border-color: orange;
  border-width: 3px;
  border-bottom-style: solid ;
}
.glyphicon{
margin-left: -49px}
</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body class="nav">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<div>
<nav class="navbar navbar-expand-lg navbar-light bg-danger ">
</nav>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
  <a class="navbar-brand  mb-0 h1 " href="#">
            <img src="images/image97.jpg" alt="Logo" width="50" height="50" class="d-inline-block align-text-top">  
           SVCE TIRUPATI
        </a> 
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      <div class="navbar-nav">
        <a class="nav-link active" aria-current="page" href="./student_portal.jsp">Home</a>&nbsp;
        <a class="nav-link active" href="#">Placements</a>&nbsp;
        <a class="nav-link active" href="#">Admissions</a>&nbsp;
        <a class="nav-link active" href="#">Fees</a>&nbsp;
        <a class="nav-link active" href="#">Jobs</a>&nbsp;
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle active" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Departments
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <li><a class="dropdown-item" href="#">B.TECH</a></li>
            <li><a class="dropdown-item" href="#">MCA</a></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
          </li>&nbsp;
        
        <a class="nav-link active" href="#">About us</a>&nbsp;
        <a class="nav-link active" href="#">Contact us</a>
              </div>
    </div>
  </div>
</nav>
</div>
<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="images/sri.jpg" class="d-block w-100" alt="Slide 1">
    </div>
    <div class="carousel-item">
      <img src="images/svce.jpg" class="d-block w-100" alt="Slide 2">
    </div>
    <div class="carousel-item">
      <img src="images/img.jpg" class="d-block w-100" alt="Slide 3">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</div>
 <div class="container mt-1 p-1 ">
        <div class="row mt-3">
          <div class="col-6">
             <p mb-4 >OUR INSTUTIONS </p>
             </div>
          
      </div>
      </div>
      


<div class="row">
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
      <div class="solid-border">
        <h3 class="card-title">TIRUPATI CAMPUS <h3>
        </div>
        <h4>SVCE & SVEC</h4>
        <p class="card-text">Karakambadi Road, Tirupati</p>
        <p><span style="font-size:24px" class="fa">&#xf098;&nbsp;&nbsp;</span>
        +91-8886644985,<br>
        +91-8886644969 </p>
        <P> <span class="glyphicon">&#x2709;&nbsp;&nbsp;</span>info@svce.edu.in<br>info@svce.edu.in</P>
        </div>
    </div>
  </div>
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
      <div class="solid-border">
        <h3 class="card-title">KADAPA CAMPUS <h3>
        </div>
        <h4>SVCK & SVDK</h4>
        <p class="card-text">Balaji Nagar, Kadapa</p>
        <p><span style="font-size:24px" class="fa">&#xf098;&nbsp;&nbsp;</span>+91-9440283434<br>&nbsp;&nbsp;+91-9966391643</p>
        <P> <span class="glyphicon">&#x2709;&nbsp;&nbsp;</span>info@svck.edu.in<br>&nbsp;info@svdk.edu.in</P>
        </div>
    </div>
  </div>
  </div>


</body>
</html>


