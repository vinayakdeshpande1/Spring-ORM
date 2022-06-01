<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="org.doctor.DBconnect.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Josefin+Sans&display=swap" rel="stylesheet">

<title>Doctor Management System</title>
</head>
<style>
a {
	text-decoration: none;
}

.logo {
	border-radius: 50px;
	heigth:50px;
	width:100px;
}
body{
font-family: 'Josefin Sans', sans-serif;
}
img {
	border-radius: 50px
}

.title {
	top: 50;
	heigth: 50px;
	display: inline;
	justify-content: center;
	align-items: center;
	text-align: center;
	justify-content: center;
	margin-left: 10px;
}

header {
	Display: flex;
	align-items: center;
}

nav::before {
	content: "";
	background-image: url("images/special.jpg");
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	z-index: -1;
	opacity: 0.5;
}
nav {
	width: 100%;
	height: 60px;
	/* padding: 0.5% 0px; */
	background: #21539e;
	display: flex;
	flex-direction: row;
	justify-content: space-between;
	align-items: center;
}

nav h2 {
	margin-left: 16px;
	color: white;
}

nav a {
	margin-right: 16px;
	/* height: 100%; */
	color: white;
}
</style>
<body bgcolor="#b4b4b4">
	<nav>
	 <img src="images/dlogo.jpg" class="logo"
		alt="Logo" width="200" height="100">
			<h2 align="center" class="title">Alandi Hospital Doctor's Details</h2>
			<a href="index.jsp">View All</a>
		</nav>
	<!--<header class="h1"> <img src="images/dlogo.jpg" class="logo"
		alt="Logo" width="100" height="100">
	</header>-->
	<form action="">
		<!-- <h1 align="center" style="color:red">Doctor Management</h1> -->
		<h2 align="center">
			<a href="addDoctor.jsp"
				style="color: rgb(255, 0, 0); font-size: 170%"><b>Add New Doctor</b></a><br>
		</h2>
		<!--  All DOctor shows-->
		<h1 align="center">List of Doctors</h1>
		<table border="1" align="center" cellpadding="5"
			style="font-size: 200%; font-family: inherit; font-style: normal; background-color: window;">
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Speciality</th>
				<th>Email</th>
				<th>City</th>
				<th>Country</th>
				<th>Actions</th>
			</tr>
			<%
			Connection con = DBConnection.getConn();
			Statement statement = con.createStatement();
			ResultSet resultSet = statement.executeQuery("Select * from doctor_table");
			while (resultSet.next()) {
			%>
			<tr>
				<td>
					<%
					out.print(resultSet.getInt(1));
					%>
				</td>
				<td>
					<%
					out.print(resultSet.getString(2));
					%>
				</td>
				<td>
					<%
					out.print(resultSet.getString(3));
					%>
				</td>
				<td>
					<%
					out.print(resultSet.getString(4));
					%>
				</td>
				<td>
					<%
					out.print(resultSet.getString(5));
					%>
				</td>
				<td>
					<%
					out.print(resultSet.getString(6));
					%>
				</td>
				<form action="MyServlet" method="post">
					<td><a value="Edit" name="Action"
						href="edit.jsp?id=<%=resultSet.getInt(1)%> ">Edit</a> <input
						type="hidden" name="j" value="<%=resultSet.getInt(1)%>">&nbsp;&nbsp;&nbsp;
						<a href="delete.jsp">Delete</a>&nbsp;&nbsp;&nbsp;</td>
			</tr>
			</form>
			<%
			}
			%>
		</table>
	</form>
</body>
</html>