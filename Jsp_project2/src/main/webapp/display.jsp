<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
</head>
<body>
<table class="table table-success table-striped">


<tr>
<th>Id</th>
<th>Username</th>
<th>Email</th>
<th>Paaword</th>
<th>Confirm_Password</th>
<th>City</th>

<th>Action</th>

 </tr>
<%


Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/institute","root","");


PreparedStatement ps=con.prepareStatement("select*from ofice");
ResultSet rs=ps.executeQuery();

while(rs.next())
{
	%>
	<tr>
	   <td><%= rs.getInt(1)%></td>
	    <td><%= rs.getString(2)%></td>
	     <td><%= rs.getString(3)%></td>
	      <td><%= rs.getString(4)%></td>
	       <td><%= rs.getString(5)%></td>
	        <td><%= rs.getString(6)%></td>
	      
	
	  <td><a href="update.jsp?y=<%=rs.getInt("id")%>" "button" class="btn btn-info">Edit</a> 
	        <a href="deletedata.jsp?x=<%=rs.getInt(1)%>""button" class="btn btn-danger">Delete</a> 
	  </td>
	  
	
	 </tr>
<% 
}

%>







</table>

</body>
</html>