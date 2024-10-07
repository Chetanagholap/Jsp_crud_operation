<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
int a;
String euser,eemail,epass,ecpass,ecity;

a=Integer.parseInt(request.getParameter("y"));
euser=request.getParameter("username");
eemail=request.getParameter("email");
epass=request.getParameter("pass");
ecpass=request.getParameter("cpass");
ecity=request.getParameter("city");



	

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/institute","root","");

PreparedStatement ps=con.prepareStatement("update ofice set username='"+euser+"',email='"+eemail+"',pass='"+epass+"',cpass='"+ecpass+"',city='"+ecity+"' where id='"+a+"'");

ps.executeUpdate();
response.sendRedirect("display.jsp");




%>

</body>
</html>