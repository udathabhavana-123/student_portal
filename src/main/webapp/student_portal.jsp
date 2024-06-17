<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!doctype html>
  <html lang="en">
  <head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link href="css/styles.css" rel="stylesheet"/>
  </head>
  <body>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <nav class="navbar navbar-expand-lg bg-secondary">
        <div class="container-fluid">
          <a class="navbar-brand  mb-0 h1 " href="#">
            <img src="images/images98.jpg" alt="Logo" width="40" height="40" class="d-inline-block align-text-top">  
           Student Portal
        </a> 
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link text-white"  href="#"></a>
              </li>
              <li class="nav-item">
                <a class="nav-link text-white"  href="#"></a>
              </li>
              <li class="nav-item">
                <a class="nav-link text-white "  href="#"></a>
              </li>
              <li class="nav-item">
                <a class="nav-link text-white" href="#"></a>
              </li>
              </ul>
            </div>
        </div>
      </nav>
      <%
      String message = request.getAttribute("msg") == null ? "" : (String)request.getAttribute("msg");
      String result =request.getAttribute("result") == null ? "" : (String)request.getAttribute("result");
      %>
      <!---Header-->
      <div class="container mt-5 p-5 ">
      <!----- validation start ---->
      <%if(!message.equals("") &&  !result.equals("")){ %>
      <div class="alert alert-<%=result %> alert-dismissible fade show" role="alert">
       <strong><%=message %></strong>
      <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
     </div>
     <%} %>
     <!----- validation end ---->
        <div class="row mt-3">
          <div class="col-6">
             <h1 mb-4>Welcom </h1>
             <h3>To Student Portal</h3>
             <p>Here you track all individual student details like leaves,attendance track,doucument.along with that you will get rewards and reward excellence points tracking.</p>
             <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#registration">Register Now</button>
          </div>
          <div class="col-6">
          <div class="login-form ms-5 p-3">
          <form action="./LoginController" method="post">
            <div class="form-group mb-2">
              <label for="userName">Enter User Name</label>
              
            <div class="input-group">
      
      <input type="text" class="form-control" placeholder="Username" name="userName" aria-label="Username" aria-describedby="basic-addon1">
       </div>
        </div>
           <div class="form- group mb-2">
              <label  for="password">Enter password</label>
              <input class="form-control"  placeholder="password" type="password" id="password" name="password"/>
            </div>
            
            <input class="btn btn-primary active w-100 mb-4"  type="submit" value="Login"> 
            <a class="dropdown-item1" href="#">Forgot password</a>
            <a class="dropdown-item2" href="#">clear</a>

          </form>
          </div>
        </div>
      </div>
     
      
      

<!-- Modal -->
<div class="modal fade" id="registration" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="staticBackdropLabel">Student Registration</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="./UserController" method="post">
          <div class="form-group mb-2">
            <label for="userName">ENTER ROLL NUMBER</label>
            <input class="form-control" placeholder="Roll Number" type="text" id="rollNumber" name="rollNumber"/>
          </div>
          <div class="form-group mb-2">
            <label for="userName">Enter User Name</label>
             <input type="text" class="form-control" placeholder="Username" name="Username" aria-label="Username" aria-describedby="basic-addon1">          
              </div>
          <div class="form- group mb-2">
            <label for="password">Enter password</label>
            <input class="form-control" placeholder="password" type="password" id="password" name="password"/>
          </div>
          <div class="form- group mb-2">
            <label for="password">Confirm password</label>
            <input class="form-control" placeholder="Confirm Password" type="confirmPassword" id="password" name="confirmPassword"/>
          </div>
          <div class="form- group mb-2">
            <label for="sq1">Choose Sequrity Question 1</label>
            <select id="sq1" name="sq1" class="form-select" aria-label="Default select example">
              <option selected>Open this select menu</option>
              <option value="your birth place">your birth place</option>
              <option value="your school name">your school name</option>
              <option value="your favorite pet">your favorite pet</option>
            </select>
          </div>
          <div class="form-group mb-2">
            <label for="ans1">Type your answer</label>
            <input class="form-control" placeholder="Answer" type="text" id="ans1" name="ans1"/>
          </div>
          <div class="form- group mb-2">
            <label for="sq2">Choose Sequrity Question 1</label>
            <select id="sq2" name="sq2" class="form-select" aria-label="Default select example">
              <option selected>Open this select menu</option>
              <option value="your best friend name">your best friend name</option>
              <option value="your favorite color">your favorite color</option>
              <option value="your nick name">your nick name</option>
            </select>
          </div>
          <div class="form-group mb-2">
            <label for="ans2">Type your answer</label>
            <input class="form-control" placeholder="Answer" type="text" id="ans2" name="ans2"/>
          </div>

          <input class="btn btn-primary  w-100 " type="submit" value="Register">
        </form>
      </div>
    </div>
  </div>
</div>

  </body>
</html>