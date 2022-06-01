<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body {
	text-align: center;
	text-decoration: none;
}

body::before {
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
	<h1>Delete Doctor</h1>
	<h1>
		<a href="index.jsp">List Doctors</a>
	</h1>
	<form action="MyServlet" method="post">
		Enter ID<input type="text" name="id"> <input type="submit"
			value="Delete" name="Action">
	</form>
</body>
</html>