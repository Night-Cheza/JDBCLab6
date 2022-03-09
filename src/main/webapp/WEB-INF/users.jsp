<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Users</title>
		
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
		<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
	</head>
	
	<body style="background-color: #eefbf0;">
		<h1 style="text-align: center; margin: 3% 5% 1% 5%;"><b>User's Management System</b></h1>
		
		<div class="container" style="display: flex; justify-content: center; margin:.5vh 5vw 5vh 5vw;">
			<table class="table" style="margin:1% 1% 3% 1%; width:100%;">
				<thead>
					<tr>
						<th colspan="7" style="text-align: center; font-size: large;">
							Manage Users
						</th>
					</tr>
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
						
						<th scope="col">
							Role
						</th>
						
						<th scope="col">
							Active
						</th>
						
						<th scope="col">
							Edit
						</th>
						
						<th scope="col">
							Delete
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
							
							<td>
								${user.role.roleName}
							</td>
							
							<td>
								${user.active}
							</td>
							
							<td>
								<form action="users" method="post">
									<input type="hidden" name="action" value="delete">
									<button type="submit" style="background-color: rgba(255,255,255,0.0); border-style: none;"><span class="glyphicon glyphicon-pencil" style="color:blue"></span></button>		
								</form>
							</td>
							
							<td>
								<form action="users" method="post">
									<input type="hidden" name="action" value="delete">
									<button type="submit" style="background-color: rgba(255,255,255,0.0); border-style: none;"><span class="glyphicon glyphicon-trash" style="color:red"></span></button>		
								</form>
							</td>
						</tr>
					</c:forEach>
				</tbody> 
			</table>
			
			<form action="users" method="post" style="margin:1% 1% 3% 1%; width:25%">
				<input type="hidden" name="action" value="add">				
				<table class="table" style="height:100%";>
					<thead>
						<tr style="text-align: center; font-size: large;">
							<th>
								Add User
							</th>
						</tr>
					</thead>
					
					<tbody class="table-primary">
						<tr scope="row">
							<td>
								<input type="text" name="email" id="email" placeholder="Email" style="width:100%; border-style:none; background-color:#cfe2ff;">
							</td>
						</tr>
						
						<tr scope="row">
							<td>
								<input type="text" name="firstName" id="firstName" placeholder="First Name" style="width:100%; border-style:none; background-color:#cfe2ff;">
							</td>
						</tr>
						
						<tr scope="row">
							<td>
								<input type="text" name="lastName" id="lastName" placeholder="Last Name" style="width:100%; border-style:none; background-color:#cfe2ff;">
							</td>
						</tr>
						
						<tr scope="row">
							<td>
								<input type="text" name="password" id="password" placeholder="Password" style="width:100%; border-style:none; background-color:#cfe2ff;">
							</td>
						</tr>
						
						<tr scope="row">
							<td>
								<select name="role" id="role" style="width:100%; border-style:none; background-color:#cfe2ff;">
									<option>Select Role</option>
									<option value="sysAdmin">System Admin</option>
									<option value="user">Regular User</option>
									<option value="compAdmin">Company Admin</option>
								</select>
							</td>
						</tr>
						
						<tr scope="row">
							<td>
								<label for="active" style="padding-left: 2px;">Active</label>
								<input type="radio" name="active" id="active">
								<label for="active" style="padding-left: 25px;">Not Active</label>
								<input type="radio" name="active" id="nonActive">
							</td>
						</tr>
						<tr scope="row">
							<td style="background-color:#188754; padding:2px;">
								<button type="submit" class="btn btn-success" value="add" style="width:100%; font-weight: bold; letter-spacing: 0.5px;">Add</button>
							</td>
						</tr>
					</tbody>				
				</table>
				
			</form>
			
			<form action="users" method="post" style=" margin:1% 1% 3% 1%; width:25%;">
				<input type="hidden" name="action" value="edit">				
				<table class="table" style="height:100%;">
					<thead>
						<tr style="text-align: center; font-size: large;">
							<th>
								Edit User
							</th>
						</tr>
					</thead>
					
					<tbody class="table-primary">
						<tr scope="row">
							<td>
								<input type="text" name="email" id="email" value="${user.email}" style="width:100%; border-style:none; background-color:#cfe2ff;">
							</td>
						</tr>
						
						<tr scope="row">
							<td>
								<input type="text" name="firstName" id="firstName" value="${user.firstName}" style="width:100%; border-style:none; background-color:#cfe2ff;">
							</td>
						</tr>
						
						<tr scope="row">
							<td>
								<input type="text" name="lastName" id="lastName" value="${user.lastName}" style="width:100%; border-style:none; background-color:#cfe2ff;">
							</td>
						</tr>
						
						<tr scope="row">
							<td>
								<select name="role" id="role" style="width:100%; border-style:none; background-color:#cfe2ff;">
									<option>${user.role.roleName}</option>
									<option value="sysAdmin">System Admin</option>
									<option value="user">Regular User</option>
									<option value="compAdmin">Company Admin</option>
								</select>
							</td>
						</tr>
						
						<tr scope="row">
							<td>
								<label for="active" style="padding-left: 2px;">Active</label>
								<input type="radio" name="active" id="active">
								<label for="active" style="padding-left: 25px;">Not Active</label>
								<input type="radio" name="active" id="nonActive">
							</td>
						</tr>
						
						<tr scope="row">
							<td style="padding:0; background-color:#188754;">
								<button type="submit" class="btn btn-success" value="save" style="width:100%; font-weight: bold; letter-spacing: 0.5px;">Save</button>
							</td>
						</tr>
						
						<tr scope="row">
							<td style="padding:0; background-color:#6c757d">
								<button type="submit" class="btn btn-secondary" value="delete" style="width:100%; font-weight: bold; letter-spacing: 0.5px;">Cancel</button>
							</td>
						</tr>
					</tbody>				
				</table>
				
				
			</form>
		</div>
		
	</body>
</html>
