<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="/resources/style.css" >
<title>Search User</title>
</head>
<body>
<%
String runningENV=System.getenv("ENV");
if (runningENV.equalsIgnoreCase("dev"))
{	
%>
<ul>
  <li><a class="active" href="http://localhost:9000/ui/searchuser">Search User</a></li>
  <li><a  href="http://localhost:9000/ui/createuser">Create User</a></li>
  <li><a href="http://localhost:9000/ui/transfermoney">Create Branch</a></li>
  <li><a href="#about">Logout</a></li>
</ul>
<%
}
else if(runningENV.equalsIgnoreCase("prod"))
{
%>
<ul>
  <li><a class="active" href="http://localhost:7777/ui/searchuser">Search User</a></li>
  <li><a  href="http://localhost:7777/ui/createuser">Create User</a></li>
  <li><a href="http://localhost:7777/ui/transfermoney">Create Branch</a></li>
  <li><a href="#about">Logout</a></li>
</ul>
<%
}
%>
<br>
<h3>Search by username</h3>
<br>

<%
String port="";
if (runningENV.equalsIgnoreCase("dev"))
	port="9000";
else if (runningENV.equalsIgnoreCase("prod"))
	port="7777";
%>
	<form method="post" action="http://localhost:<%out.print(port); %>/api/searchUserfromDB">
		<table border="0">
			<tr>
				<td>Username</td>
				<td><input type="text" name="username" size="25"></td>
			</tr>
			
			<tr>
				<td><input type="submit" value="Submit" name="submitButton"></td>

			</tr>
		</table>
	</form>
</body>
</html>