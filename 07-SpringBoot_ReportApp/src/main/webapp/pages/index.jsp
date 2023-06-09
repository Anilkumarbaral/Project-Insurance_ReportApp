<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<title>Report Application</title>
</head>
<body>

	<div class="container ">
		<h2 class="pb-3 pt-3">Report Application</h2>
		<form:form action="search" modelAttribute="search" method="POST">
			<table>
				<tr>
					<td>Plan Name:</td>
					<td><form:select path="planName">
							<form:option value="">-select-</form:option>
							<form:options items="${names}" />
						</form:select></td>
					<td>Plan Status:</td>
					<td><form:select path="planStatus">
							<form:option value="">-select-</form:option>
							<form:options items="${status}" />
						</form:select></td>
					<td>Gender:</td>
					<td><form:select path="gender">
							<form:option value="">-select-</form:option>
							<form:option value="Male">Male</form:option>
							<form:option value="Fe-Male">Fe-Male</form:option>
						</form:select></td>
				</tr>
				<tr>
					<td>Start Date:</td>
					<td><form:input path="startDate" type="date" />
					<td>
					<td>End Date:</td>
					<td><form:input path="endDate" type="date" /></td>
				</tr>

				<tr>
					<td><input type="submit" value="search"
						class="btn btn-primary"></td>
				</tr>
			</table>
		</form:form>
		<hr>
		<table class="table table-striped  table-bordered">
			<thead>
				<tr>
					<th>Id</th>
					<th>Holder Name</th>
					<th>Plan Name</th>
					<th>Gender</th>
					<th>Plan Status</th>
					<th>Start Date</th>
					<th>End Date</th>
					<th>Benefit Amount</th>
					<th>Denial Reason</th>
					<th>Terminated Date</th>
					<th>Termination Reason</th>
				</tr>
			</thead>
			<tbody >
			<c:forEach items="${plans}" var="plan" varStatus="index">
			     <tr> 
			          <td>${index.count}</td>
			          <td>${plan.citizenName}</td>
			          <td>${plan.planName}</td>
			          <td>${plan.gender}</td>
			          <td>${plan.planStatus}</td>
			          <td>${plan.planStartDate}</td>
			          <td>${plan.planEndDate}</td>
			          <td>${plan.benefitAmt}</td>
			          <td>${plan.denialReason}</td>
			          <td>${plan.terminatedDate}</td>
			          <td>${plan.terminationRsn}</td>
			     </tr>
			</c:forEach>
			</tbody>
		</table>
		<hr>
		Export:<a href="excel">Excel</a> <a href="pdf">Pdf</a>

	</div>




	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</body>
</html>