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
int p;
p = Integer.parseInt(request.getParameter("x"));

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/institute","root","");



 PreparedStatement ps=con.prepareStatement("delete from ofice where id='"+p+"'");

ps.executeUpdate();


out.println("<script>");
out.println("alert('Recored deleted successfully')");
out.println("window.location.href='display.jsp'");
out.println("</script>");
%>



</body>
</html>