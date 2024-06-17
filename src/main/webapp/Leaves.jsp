<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Leaves</title>
<link href="css/style2.css" rel="stylesheet">
</head>
<body>
<%@ include file="student_navigation_bar.html" %>
<h2 class="text-center">Leave Requests</h2>
<div id="new-req" >
<a id="newRequest" class="btn btn-success " href="" data-bs-toggle="modal" data-bs-target="#new-leave-request">New Request</a>
</div>



<!-- Modal -->
<div class="modal fade" id="new-leave-request" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="staticBackdropLabel">New Leave Request</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="./LeaveController" method="post">
          <div class="form-group mb-2">
            <label for="userName">ROLL NUMBER</label>
            <input class="form-control" placeholder="Roll Number" type="text" id="rollNumber" name="rollNumber"/>
          </div>
          <div class="form-group mb-2">
            <label for="LeaveType">Leave Type</label>
             <select id="LeaveType" name="LeaveType" class="form-select" aria-label="Default select example">
              <option selected>Open this select menu</option>
              <option value="Sick Leave">Sick Leave</option>
              <option value="Casual Leave">Casual Leave</option>
              <option value="Annual Leave">Annual Leave</option>
            </select>          
              </div>
          <div class="form- group mb-2">
            <label for="reason">Reason</label>
            <textarea class="form-control" name="reason" rows="3"  cols="10"></textarea>
          </div>
          <div class="form- group mb-2">
            <label for="formDate">Form Date</label>
			<input class="form-control" placeholder="Form Date" type="date" id="formDate" name="formDate"/>				
		 </div>
		 <div class="form- group mb-2">
            <label for="toDate">To Date</label>
			<input class="form-control" placeholder="To Date" type="date" id="toDate" name="toDate"/>				
		 </div>
		 
          
          <div class="form-group mb-2">
            <label for="numberOfDays">Number Of Days</label>
            <input class="form-control" placeholder="Number Of Days" type="text" id="numberOfDays" name="numberOfDays"/>
          </div>

          <input class="btn btn-success  w-100 " type="submit" value="Create">
        </form>
      </div>
    </div>
  </div>
</div>




<table class="table">
  <thead>
    <tr>
      <th scope="col">Roll Number</th>
      
      <th scope="col">Leave type</th>
      <th scope="col">From Date</th>
      <th scope="col">To Date</th>
      <th scope="col">Number Of Days</th>
      <th scope="col">Requested Date</th>
      <th scope="col">Status</th>
      <th scope="col">Actions</th>
      
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">100101</th>
      
      <td>Sick Leave </td>
      <td>05-06-2024</td>
      <td>07-06-2024</td>
      <td>2</td>
      <td>04-06-2024</td>
      <td>New</td>
      <td>
     <a href=""> <i class="bi bi-file-earmark-medical"></i></a>
     <a href=""> <i class="bi bi-pencil-square"></i></a>
     <a href=""> <i class="bi bi-trash"></i></a>
      </td>
    </tr>
    <tr>
      <th scope="row">100101</th>
      
      <td>Sick Leave </td>
      <td>05-06-2024</td>
      <td>07-06-2024</td>
      <td>2</td>
      <td>04-06-2024</td>
      <td>New</td>
      <td>
     <a href=""> <i class="bi bi-file-earmark-medical"></i></a>
     <a href=""> <i class="bi bi-pencil-square"></i></a>
     <a href=""> <i class="bi bi-trash"></i></a>
      </td>
    </tr>
    <tr>
      <th scope="row">100101</th>
      
      <td>Sick Leave </td>
      <td>05-06-2024</td>
      <td>07-06-2024</td>
      <td>2</td>
      <td>04-06-2024</td>
      <td>New</td>
      <td>
     <a href=""> <i class="bi bi-file-earmark-medical"></i></a>
     <a href=""> <i class="bi bi-pencil-square"></i></a>
     <a href=""> <i class="bi bi-trash"></i></a>
      </td>
    </tr>
  </tbody>
</table>
</body>
</html>