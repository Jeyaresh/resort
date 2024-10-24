<%-- 
    Document   : regdb
    Created on : 27 Nov, 2023, 10:21:36 AM
    Author     : ADMIN
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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

String fn=request.getParameter("firstname");
String ln=request.getParameter("lastname");
String un=request.getParameter("username");
String e=request.getParameter("email");
String g=request.getParameter("gender");
String p=request.getParameter("pass");
String q="insert into reg (first,last,user,email,gender,pass)values('"+fn+"','"+ln+"','"+un+"','"+e+"','"+g+"','"+p+"')";
Class.forName("com.mysql.jdbc.Driver");
Connection ob=DriverManager.getConnection("jdbc:mysql://localhost:3306/resort?","root","");
Statement st=ob.createStatement();
int i=st.executeUpdate(q);
if(i>0){%>
<script>
    alert("sucess")
    window.location="login.jsp"
</script>
<%}else{%>
<script>
    alert("failure")
</script> <%} }catch(Exception e){out.print(e);}

        %>
    </body>
</html>
