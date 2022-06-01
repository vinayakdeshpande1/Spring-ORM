<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit doctor info</title>
<style>
body {
	text-align: center;
	display: flex;
	justify-content: center;
	text-decoration: none;
}

form::before {
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
</style>
</head>
<body bgcolor="#b4b4b4">
	<form action="MyServlet" method="post">
		<h1 align="center">Edit Doctor</h1>
		<h1>
			<a href="index.jsp">List Doctors</a>
		</h1>
		<table border="1" align="center" cellpadding="5"
			style="font-size: 200%; font-family: inherit; font-style: normal; background-color: window;">
			<tr>
				<td>Enter Doctor ID</td>
				<td><input type="text" name="id" required></td>
			</tr>
			<tr>
				<td>Enter Doctor Email</td>
				<td><input type="text" name="email" required></td>
			</tr>
			<tr>
				<td>Enter Doctor City</td>
				<td><input type="text" name="city" required></td>
			</tr>
			<tr>
				<td>Enter Doctor Country</td>
				<td><input type="text" name="country" required></td>
			</tr>
			<tr>
				<td></td>
				<td align="center"><input type="submit" name="Action"
					value="Edit"></td>
			</tr>
		</table>
	</form>
</body>
</html>