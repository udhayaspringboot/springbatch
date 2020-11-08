<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <!DOCTYPE html>
<html lang="en">
<head>
  <title>Batch Processing Site</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 450px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;} 
    }
    
    .ac
    { position: absolute;
  left: 550px;
  top: 120px;
  }
  
  .ad
    { position: absolute;
  left: 750px;
  top: 140px;
  }
  
  ada
  
  {
  position: absolute;
  left: 700px;
  top: 140px
  }
  
  adaa
  {
  
  position: absolute;
  left: 720px;
  top: 140px
  
  }
  
  
   /*  .th1
{border: 1px solid black;
}
    
    .table1 {
  width: 100%;
  border-collapse: collapse;
  border: 1px solid black;
}
     */
    .ab {
  
  
  width: 30%;
  border: 15px solid green;
 padding : 25px;
  margin-left: 20px;
}
    
  </style>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
     
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="/load/home">Home</a></li>
       
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
      </ul>
    </div>
  </div>
</nav>
  
<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
     
    </div>
    
    <div class="col-sm-8 text-left"> 
      <h1>Hi Admin Welcome to Batch Processing Site !...</h1>
      <p>Kindly select the type of batch processing to execute files in the folder</p>
     
     <%-- <hr>
     <input type="checkbox" name="Automode" value="<a href="/load">">
      --%>
      <hr align="left" width="50%" size="50"><h4>for CSV file</h4>
      1. <button type="submit" ><a href="/load/selectmode?mode=auto">Auto scheduling</a> </button>
      2. <button type="submit"><a href="/load/selectmode?mode=manual">Manual Scheduling</a></button><hr align="left" width="50%" size="50">
      <h4>for Sql file</h4>
      3. <button type="submit" ><a href="/load/selectmode?mode=autosql">Auto scheduling Sql</a> </button>
      3. <button type="submit"><a href="/load/selectmode?mode=manualsql">Manual Scheduling for sqlfiles</a></button>
    
         
         
         
         <div class="ac"> <c:if test="${automode eq 'autosql'}">
     
      
      <h3>Sql Auto Job Scheduling</h3>
      <p>

<button><a href="/load/getsqlauto">Auto Job Scheduling</a></button>

  <hr><p>upload files

 <form method="post" action="/load/uploadfilessql" enctype="multipart/form-data">
 
 <input type="file" name="fileUpload" size="50" />
 
 <input type="submit" value="Upload" />
 </form>


<!-- <hr><button><a href="/autohistory">Auto Job Scheduling history</a></button> --></p>
</c:if>
    </div><div class="ac">
      <c:if test="${automode eq 'auto'}">
      
      
      <h3>For Auto Job Scheduling</h3>
      <p><c:if test="${logi ne 'login'}">

<button><a href="/load">Auto Job Scheduling</a></button>

  <hr align="left" width="50%" size="50"><p>upload files

 <form method="post" action="/load/uploadfiles" enctype="multipart/form-data">
 
 <input type="file" name="fileUpload" size="50" />
 
 <input type="submit" value="Upload" />
 </form>


</c:if> <!-- <hr><button><a href="/autohistory">Auto Job Scheduling history</a></button> --></p>
</c:if>

</div>

<hr align="left" width="50%" size="50">
<c:if test="${manualmode eq 'manual' }">
<!-- <h3>For Manual Scheduling</h3> -->

<p> <%-- <c:if test="${logi ne 'login'}">



 <button> <a href="/load/manualmodelist">Manual Job Scheduling</a></button>
</c:if> --%></p></c:if>
    </div>
    <c:if test="${logi eq 'login'}">
<form action="/logicheck" method="post">
<div align="center">
<h3>${logfail}</h3>

UserName : <input type="text" name = "userName" placeholder="Enter username"><br>
Password : <input type="password" name="password"
 placeholder="Enter password">
<hr>
<input type = "submit" value="Login">
</div>

</form>
</c:if>

<%-- <c:if test="${logi ne 'login'}">

<button><a href="/automode">Auto Job Scheduling</a></button>  

 <button> <a href="/manualmodelist">Manual Job Scheduling</a></button>
</c:if> --%>
<br>
${successorfailure} <br>

${cre}


<!-- <br> <a href="/firstautomodetest">first auto test </a> -->



${hello}

<c:if test="${cahis eq 'checkahis' }">

<c:if test="${lisAuto.size() == 0}">

No Auto scheduling histories available

</c:if>
<c:if test="${lisAuto.size() != 0}">
<table border=1>
<h3>Auto Scheduling History</h3>
<tr><th>SNO</th><th>File Name</th><th>Date </th><th>Status</th></tr>
<c:forEach items="${lisAuto}" var = "lh">

<tr><td>${lh.sNo}</td><td>${lh.fileName}</td><td>${lh.dateTime}</td><td>${lh.status}</td></tr>

</c:forEach>
</table>

</c:if>
</c:if>



<c:if test="${chis eq 'checkhis' }">

<c:if test="${lisHist.size() == 0}">

No manual scheduling histories available

</c:if>
<c:if test="${lisHist.size() != 0}">
<table border=1>
<h3>Manual Scheduling History</h3>
<tr><th>SNO</th><th>File Name</th><th>Date </th><th>Status</th></tr>
<c:forEach items="${lisHist}" var = "lh">

<tr><td>${lh.sNo}</td><td>${lh.fileName}</td><td>${lh.dateTime}</td><td>${lh.status}</td></tr>

</c:forEach>
</table>

</c:if>
</c:if>
<div class="ad">
<c:if test="${manualtest eq 'checkmanual'}">

<!-- <button><a href="/manualhistory">Manal scheduling history</a></button> -->
<form action="/load/manualmode" method="get">
<%-- <table border="1">
<tr><th></th><th>Choose files</th><th>Choose time</th><th>Action</th></tr>
<c:forEach items="${fName}" var="fileName"> 
<tr> <td><input type="checkbox" name="fnames" value= "${fileName}"></td><td>
   ${fileName}</td><td rowspan="0"></td><td rowspan="0"></td></tr>
</c:forEach></table>
<div class="ada"><input type="datetime-local"  value="2020-10-08 19:32:00" step="1" name="datetimeloc" style="width:150px">
</div>
<div class="adaa"><input type="submit" value="manual search"></div></form></c:if>

</div> --%>
<table>
<h3>Select files </h3>
<c:forEach items="${fName}" var="fileName"> 
<tr> <td><input type="checkbox" name="fnames" value= "${fileName}"></td><td>
   ${fileName}</td>
</tr>
</c:forEach></table><div align="right"><table><h4>select time</h4><tr><td>
calender :  <input type="datetime-local"  value="2020-10-08 19:32:00" step="1" name="datetimeloc" style="width:150px">
</td></tr><tr><td><br><input type="submit" value="manual search"></td></tr>

</table></div></form></c:if>
</div>
<div class="ad">
<c:if test="${manualtest eq 'checkmanualsql'}">

<!-- <button><a href="/manualhistory">Manal scheduling history</a></button> -->
<form action="/load/manualmodesql" method="get">


<table>
<h3>Select files </h3>
<c:forEach items="${fName}" var="fileName"> 
<tr> <td><input type="checkbox" name="fnames" value= "${fileName}"></td><td>
   ${fileName}</td>
</tr>
</c:forEach></table><div align="right"><table><h4>select time</h4><tr><td>
calender :  <input type="datetime-local"  value="2020-10-08 19:32:00" step="1" name="datetimeloc" style="width:150px">
</td></tr><tr><td><br><input type="submit" value="manual search"></td></tr>

</table></div>
</form>
</c:if></div>
<c:if test="${not empty manualdone}">
			<script>
				alert("Manual batch scheduled");
			</script>
			<c:remove var="manualdone" scope="session" />
		</c:if>



<c:if test="${not empty autodone}">
			<script>
				alert("Auto batch started");
			</script>
			<c:remove var="autodone" scope="session" />
		</c:if>

</div>

<footer class="container-fluid text-center">
  <p>Batch processing site !.</p>
</footer>

</body>
</html>
    
<%-- <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<c:if test="${logi eq 'login'}">
<form action="/logicheck" method="post">
<div align="center">
<h3>${logfail}</h3>

UserName : <input type="text" name = "userName" placeholder="Enter username"><br>
Password : <input type="password" name="password"
 placeholder="Enter password">
<br>
<input type = "submit" value="Login">
</div>

</form>
</c:if>

<c:if test="${logi ne 'login'}">

<button><a href="/automode">Auto Job Scheduling</a></button>  

 <button> <a href="/manualmodelist">Manual Job Scheduling</a></button>
</c:if>
<br>
${successorfailure} <br>

${cre}


<!-- <br> <a href="/firstautomodetest">first auto test </a> -->



${hello}

<c:if test="${chis eq 'checkhis' }">

<c:if test="${lisHist.size() == 0}">

No manual scheduling histories available

</c:if>
<c:if test="${lisHist.size() != 0}">
<table>

<tr><th>SNO</th><th>File Name</th><th>Date </th><th>Status</th></tr>
<c:forEach items="${lisHist}" var = "lh">

<tr><td>${lh.sNo}</td><td>${lh.fileName}</td><td>${lh.dateTime}</td><td>${lh.status}</td></tr>

</c:forEach>
</table>

</c:if>
</c:if>

<c:if test="${manualtest eq 'checkmanual'}">

<button><a href="/manualhistory">Manal scheduling history</a></button>
<form action="/manualmode" method="get">


<table>

<c:forEach items="${fName}" var="fileName"> 
<tr> <td><input type="checkbox" name="fnames" value= "${fileName}"></td><td>
   ${fileName}</td>
</tr>
</c:forEach></table>
calender  <input type="datetime-local"  value="2020-10-08 19:32:00" step="1" name="datetimeloc">
<input type="submit" value="manual search">
</form>
</c:if>
</body>
</html> --%>