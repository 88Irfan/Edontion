<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../adminnav.jsp"></jsp:include>
<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<img src="../img/Team_Members_Templates_17.png"
				style="width: 100%" />
		</div>
	</div>
</div>
<div class="container">
	<div class="row">
		<div class="col-md-10">
			<form class="form-inline my-2 my-lg-0" action="/teammemberbyname"
				method="post">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Enter Full Name" aria-label="Search" name="fullName">
				<button type="submit" class="btn btn-outline-success my-2 my-sm-0">Show
					Report</button>
			</form>
		</div>
		<div class="col-md-2">
			<a href="/allteammember" class="btn btn-outline-success my-2 my-sm-0">Show
				All Report</a>
		</div>
	</div>
	
	<div class="row" style="margin-top: 10px">
		<div class="col-md-12">
			<table class="table table-bordered">
				<tr>
					<th>Id</th>
					<th>FullName</th>
					<th>Email</th>
					<th>Gender</th>
					<th>Country Name</th>
					<th>BirthDate</th>
					<th>Occupation</th>
					<th>Address</th>
					<th>Answer</th>
					<th>Status</th>
				</tr>
				<c:forEach var="mamber" items="${teammamber}">
					<tr>
						<td>${mamber.id}</td>
						<td>${mamber.fullName}</td>
						<td>${mamber.email}</td>
						<td>${mamber.gender}</td>
						<td>${mamber.countryName}</td>
						<td>${mamber.birthDate}</td>
						<td>${mamber.occupation}</td>
						<td>${mamber.address}</td>
						<td>${mamber.qus}</td>
						<td>${mamber.status}</td>
						<td><c:if test="${mamber.status=='Request Pending'}">
								<a href="/removeorcancalteammember/${mamber.id}"
									class="btn btn-danger">Cancel Request</a>
								<a href="/addteammember/Team Member/${mamber.id}"
									class="btn btn-success">Add As Team Member</a>
							</c:if> <c:if test="${mamber.status=='Team Member'}">
								<a href="/removeorcancalteammember/${mamber.id}"
									class="btn btn-warning">Remove From Team</a>
							</c:if></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</div>
<div style="margin-bottom: 100px"></div>