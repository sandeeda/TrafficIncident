<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Page</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Bootstrap JS -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
.card-body-black {
	background-color: black;
}

.container {
	margin-top: 0vh;
}

.form-control {
	width: 50%;
}

#travelers-img {
	position: fixed;
	bottom: 0;
	right: 0;
	height: 200px;
}

html, body {
	margin: 0;
	padding: 0;
	width: 100%;
	height: 100vh;
	display: flex;
	flex-direction: row;
	justify-content: center;
	align-items: center;
	background: #000;
	color: #aaa;
}

.glow-on-hover {
	width: 220px;
	height: 50px;
	border: none;
	outline: none;
	color: #fff;
	background: #111;
	cursor: pointer;
	position: relative;
	z-index: 0;
	border-radius: 10px;
}

.glow-on-hover:before {
	content: '';
	background: linear-gradient(45deg, #ff0000, #ff7300, #fffb00, #48ff00, #00ffd5,
		#002bff, #7a00ff, #ff00c8, #ff0000);
	position: absolute;
	top: -2px;
	left: -2px;
	background-size: 400%;
	z-index: -1;
	filter: blur(5px);
	width: calc(100% + 4px);
	height: calc(100% + 4px);
	animation: glowing 20s linear infinite;
	opacity: 0;
	transition: opacity .3s ease-in-out;
	border-radius: 10px;
}

.glow-on-hover:active {
	color: #000
}

.glow-on-hover:active:after {
	background: transparent;
}

.glow-on-hover:hover:before {
	opacity: 1;
}

.glow-on-hover:after {
	z-index: -1;
	content: '';
	position: absolute;
	width: 100%;
	height: 100%;
	background: #111;
	left: 0;
	top: 0;
	border-radius: 10px;
}

@
keyframes glowing { 0% {
	background-position: 0 0;
}

50
%
{
background-position
:
400%
0;
}
100
%
{
background-position
:
0
0;
}
}
input[type="text"], input[type="password"] {
	background-color: #b7b9bb;
}
</style>
</head>
<body>
	<div class="container">
		<h1>Update Incident</h1>
		<form action="/updateincident" method="post">
			<input type="hidden" name="id" value="${incident.id}">

			<label for="description">Description:</label>

			<textarea id="description" name="description" class="form-control"
				rows="4" cols="50" required>${incident.description}</textarea>
			<label for="officer">Officer:</label> <select id="officer"
				name="officer" class="form-control" required>
				<option value="">Select an officer</option>
				<c:forEach var="officer" items="${officers}">
					<option value="${officer.id}"
						${officer.id == incident.officer.id ? 'selected' : ''}>${officer.name}
						(${officer.branch})</option>
				</c:forEach>
			</select> <label for="route">Route:</label> <select id="route" name="route"
				class="form-control" required>
				<option value="">Select a route</option>
				<c:forEach var="route" items="${routes}">
					<option value="${route.id}"
						${route.id == incident.route.id ? 'selected' : ''}>${route.routeName}
						(${route.location})</option>
				</c:forEach>
			</select> <label for="vehicle">Vehicle:</label> <select id="vehicle"
				name="vehicle" class="form-control" required>
				<option value="">Select a vehicle</option>
				<c:forEach var="vehicle" items="${vehicles}">
					<option value="${vehicle.id}"
						${vehicle.id == incident.vehicle.id ? 'selected' : ''}>${vehicle.make}
						${vehicle.model} (${vehicle.year})</option>
				</c:forEach>
			</select> <br>
			<button type="submit" class="glow-on-hover">Update</button>

		</form>
	</div>
	<img
		src="https://user-images.githubusercontent.com/42469977/229330098-345d9ad5-54c6-4cf0-9c93-2b983de5dd17.png"
		alt="Logo" style="width: 500px; height: auto;">
</body>
</html>