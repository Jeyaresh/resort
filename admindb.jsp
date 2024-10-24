<%-- 
    Document   : admindb
    Created on : 2 Jan, 2024, 11:47:31 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    </head>
    <body>
        
        <style>
               /*navbar*/
   a:hover{
    background-color: gray;
    background-size: cover;
    border-radius: 5px;
   }
   /*end*/
        </style>
          
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid ">
    <a class="navbar-brand si" href="">RESORT</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="home.jsp">HOME</a>
        </li>
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="reg.jsp">SIGN UP</a>
        </li>
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="rooms.jsp">BOOK A STAY</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">CONTACT</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="about.jsp">ABOUT</a>
        </li>
        
       
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
        
        
        
        
        <table class="table-primary">
            
            <thead>
                <tr>
                     name
                </tr>
                 <tr>
                    user name
                </tr>
                 <tr>
                    email
                </tr>
                 <tr>
                    phone
                </tr>
                 <tr>
                    adult
                </tr>
                 <tr>
                   children
                </tr>
                 <tr>
                    checkin
                </tr>
                 <tr>
                    checkout
                </tr>
                 <tr>
                    room
                </tr>
                
                
       
            </thead>
        </table>
        
        
    </body>
</html>
