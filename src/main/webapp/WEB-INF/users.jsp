<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Users</title>
		
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
	</head>
	
	<body style="background-color: #eefbf0;">
		<h1 style="text-align: center; margin: 5%;">User's Management System</h1>
		
		<div class="container" style="display: flex; justify-content: center; align-items: center;">
			<table class="table" style="margin:5%; width:55%; ">
				<thead>
					<tr class="table-primary">
						<th scope="col">
							E-mail
						</th>

						<th scope="col">
							First Name
						</th>

						<th scope="col">
							Last Name
						</th>
					</tr>
				</thead>

				<tbody>
					<c:forEach var="user" items="${users}">
						<tr class="table-info" scope="row">
							<td>
								${user.email}
							</td>

							<td>
								${user.firstName}
							</td>

							<td>
								${user.lastName}
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		
	</body>
</html>
