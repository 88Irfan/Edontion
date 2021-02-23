<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../adminnav.jsp"></jsp:include>
<div style="margin-top: 100px"></div>
<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<img src="../img/8099dc7264300c2b8a89b773e4a6ddec.png" style="width: 100%; height: 90%" />
		</div>
	</div>
</div>
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<table class="table table-bordered">
				<tr>
					<th>Id</th>
					<th>Fast Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Password</th>
					<th>Gender</th>
					<th>Date</th>
				</tr>
				<c:forEach var="user" items="${allUser}">
					<tr>
						<td>${user.id}</td>
						<td>${user.fastName}</td>
						<td>${user.lastName}</td>
						<td>${user.email}</td>
						<td>${user.password}</td>
						<td>${user.gender}</td>
						<td>${user.date}</td>
						<td><a href="/deleteUser/${user.id}" class="btn btn-danger">Remove</a>
						</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</div>
<div style="margin-top: 100px"></div>