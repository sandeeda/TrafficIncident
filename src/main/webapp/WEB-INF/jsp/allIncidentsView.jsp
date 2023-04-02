<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>All Incidents</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<style>
		body {
			background-color: black;
			color: white;
			font-size: 18px;
		}
		.container {
			width: 70%;
			margin: 0 auto;
		}
	</style>
</head>
<body>
	<div class="container">
	<img
			src="https://user-images.githubusercontent.com/42469977/229329600-cf6fd0e3-6810-4e5d-b4b3-f2ed3e8938c7.png"
			alt="Logo" style="width: 500px; height: auto;">
	
		<h1>All Incidents</h1>
		<div class="table-responsive">
			<table class="table" style="color:#a2a8b3">
				<thead>
					<tr>
						<th>Incident ID</th>
						<th>Route ID</th>
						<th>Incident Date</th>
						<th>Vehicle plate number</th>
						<th>Vehicle Make</th>
						<th>Vehicle Model</th>
						<th>Vehicle Year</th>
						<th>Vehicle KMs</th>
						<th>Description</th>
						<th>Officer Name</th>
						<th>Officer Branch</th>
						<th>Officer Code</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="incident" items="${incidents}">
						<tr>
							<td>${incident.id}</td>
							<td>${incident.route.id}</td>
							<td>${incident.incidentDate}</td>
							<td>${incident.vehicle.id}</td>
							<td>${incident.vehicle.make}</td>
							<td>${incident.vehicle.model}</td>
							<td>${incident.vehicle.year}</td>
							<td>${incident.vehicle.kms}</td>
							<td>${incident.description}</td>
							<td>${incident.officer.name}</td>
							<td>${incident.officer.branch}</td>
							<td>${incident.officer.code}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
			
	</div>

	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
