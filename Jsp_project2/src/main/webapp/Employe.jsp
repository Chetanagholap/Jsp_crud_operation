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

String euser,eemail,epass,ecpass,ecity;

euser=request.getParameter("username");
eemail=request.getParameter("email");
epass=request.getParameter("pass");
ecpass=request.getParameter("cpass");
ecity=request.getParameter("city");



Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/institute","root","");

PreparedStatement ps=con.prepareStatement("insert into ofice(username,email,pass,cpass,city)values('"+euser+"','"+eemail+"','"+epass+"','"+epass+"','"+ecity+"')");


if(epass.equals(ecpass))
{
ps.executeUpdate();
out.println("<script>");
out.println("alert('Registraion succesful')");
out.println("window.location.href='display.jsp'");
out.println("</script>");


}
else
{
 out.println("<script>");
 out.println("alert('passowrd not match')");
 out.println("window.location.href='emp.html'");
 out.println("</script>");
}

%>


</body>
</html>