<%-- 
    Document   : logindb.jsp
    Created on : 11 Dec, 2023, 11:13:00 AM
    Author     : ADMIN
--%>


<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <% 
            try{
                
           String un=request.getParameter("username");
           String p=request.getParameter("password");
           if(un.equals("admin") && p.equals("1234")){%>
           <script>
               window.location="admin.jsp"
           </script>
         <%  }
           String z="select *From reg where user='"+un+"'and pass='"+p+"'";
           Class.forName("com.mysql.jdbc.Driver");
           Connection ob=DriverManager.getConnection("jdbc:mysql://localhost:3306/resort?","root","");
          Statement St=ob.createStatement();
          ResultSet i=St.executeQuery(z);
          if(i.next()){
              %>
              <script>
                  alert("login success")
                  window.location="home.jsp"
              </script>
             
              <%}
              
              else{
              %>
              <script>
                  alert("something wrong")
                  window.location="login.jsp"
              </script>
              
              
         <% }
          
          
                   
               
            }catch(Exception e){
            out.print(e);}
            %>
    </body>
</html>
