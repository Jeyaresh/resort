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

String fn=request.getParameter("name");
session .setAttribute("user", fn);
String ln=request.getParameter("email");
String un=request.getParameter("phone");
String e=request.getParameter("adults");
String g=request.getParameter("children");
String p=request.getParameter("checkin");
String co=request.getParameter("checkout");
String r=request.getParameter("room");
String q="insert into booking (name,email,phone,adults,children,checkin,checkout,room)values('"+fn+"','"+ln+"','"+un+"','"+e+"','"+g+"','"+p+"','"+co+"','"+r+"')";
Class.forName("com.mysql.jdbc.Driver");
Connection ob=DriverManager.getConnection("jdbc:mysql://localhost:3306/resort?","root","");
Statement st=ob.createStatement();
int i=st.executeUpdate(q);
if(i>0){%>
<script>
    alert("sucess")
    window.location="payment.jsp"
</script>
<%}else{%>
<script>
    alert("failure")
</script> <%} }catch(Exception e){out.print(e);}

        %>
    </body>
</html>
