<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
	<head>
		<title>Employees Login</title>
	</head>		

	<body>
	
		<h1><strong>Employees Login</strong></h1>
						
		<c:url value="/login" var="login"/>
		
		<div>
		<form:form action="" method="post">
			<label>Username:</label> <input type="text" name="username" />
			<br>
			<br>
			<label>Password:</label> <input type="password" name="password" />
			<br>
			<br>
			<input type="submit"/>
		</form:form>
		</div>
	</body>
</html>
	