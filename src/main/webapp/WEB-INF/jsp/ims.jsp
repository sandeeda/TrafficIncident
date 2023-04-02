
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>

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

html,
body {
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
    background: linear-gradient(45deg, #ff0000, #ff7300, #fffb00, #48ff00, #00ffd5, #002bff, #7a00ff, #ff00c8, #ff0000);
    position: absolute;
    top: -2px;
    left:-2px;
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

@keyframes glowing {
    0% { background-position: 0 0; }
    50% { background-position: 400% 0; }
    100% { background-position: 0 0; }
}
input[type="text"], input[type="password"] {
  background-color: #b7b9bb;
}
</style>
</head>
<body>
          <button onclick="window.location.href='${pageContext.request.contextPath}/addIncident'" class="glow-on-hover">Add Incident</button>

	<img
			src="https://user-images.githubusercontent.com/42469977/229325338-a2a855b5-34f8-4b39-932f-eacb78af832a.png"
			alt="Logo" style="width: 300px; height: auto;">

	<div class="container">
		
		<h1>IMS - Incident Monitoring System</h1>

		<div class="row">
			<div class="col-md-6">
				<div class="card">
					<div class="card-body card-body-black">
						<h5 class="card-title">Search Incident by Incident ID</h5>
						<p class="card-text">Search for an incident by incident ID.</p>
						<form
							action="${pageContext.request.contextPath}/searchincidentbyid"
							method="GET">
							<div class="form-group">
								<label for="incident-id">Incident ID:</label> <input type="text"
									class="form-control" id="incident-id" name="incidentId">
							</div>
							<button type="submit" class="glow-on-hover">SEARCH</button>
						</form>
					</div>
				</div>
			</div>

			<div class="col-md-6">
				<div class="card">
					<div class="card-body card-body-black">
						<h5 class="card-title">Show All Incidents</h5>
						<p class="card-text">Show all incidents in the system.</p>
						<br><br>
						<br>
						<form action="${pageContext.request.contextPath}/showallincidents"
							method="GET">
							<button type="submit" class="glow-on-hover">SHOW ALL</button>
						</form>
					</div>
				</div>
			</div>

			<div class="col-md-6">
				<div class="card">
					<div class="card-body card-body-black">
						<h5 class="card-title">Search Incident by Plate Number</h5>
						<p class="card-text">Search for an incident by plate number.</p>
						<form
							action="${pageContext.request.contextPath}/searchincidentbyplatenumber"
							method="GET">
							<div class="form-group">
								<label for="plate-number">Plate Number:</label> <input
									type="text" class="form-control" id="plate-number"
									name="plateNumber">
							</div>
							<button type="submit" class="glow-on-hover">SEARCH</button>
						</form>
					</div>
				</div>
			</div>

			<div class="col-md-6">
				<div class="card">
					<div class="card-body card-body-black">
						<h5 class="card-title">Search Incidents by Route ID</h5>
						<p class="card-text">Search for incidents by route ID.</p>
						<form
							action="${pageContext.request.contextPath}/searchincidentsbyrouteid"
							method="GET">
							<div class="form-group">
								<label for="route-id">Route ID:</label> <input type="text"
									class="form-control" id="route-id" name="routeId">
							</div>
							<button type="submit" class="glow-on-hover">SEARCH</button>
						</form>
					</div>
				</div>
			</div>

			<div class="col-md-6">
				<div class="card">
					<div class="card-body card-body-black">
						<h5 class="card-title">Delete Incident by ID</h5>
						<p class="card-text">Delete an incident by incident ID.</p>
						<form
							action="${pageContext.request.contextPath}/deleteincidentbyid"
							method="POST">
							<div class="form-group">
								<label for="delete-incident-id">Incident ID:</label> <input
									type="text" class="form-control" id="delete-incident-id"
									name="incidentId">
							</div>
							<button type="submit" class="glow-on-hover">DELETE</button>
						</form>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="card">
					<div class="card-body card-body-black">
						<h5 class="card-title">Update Incident</h5>
						<p class="card-text">Update an incident by incident ID.</p>
						<div class="form-group">
							<label for="update-incident-id">Incident ID:</label> <input
								type="text" class="form-control" id="update-incident-id"
								placeholder="Enter incident ID">
						</div>
						<button
							onclick="window.location.href='${pageContext.request.contextPath}/updateincident?id=' + document.getElementById('update-incident-id').value"
							class="glow-on-hover">UPDATE</button>
					</div>
				</div>
			</div>


		</div>
	</div>

</body>
</html>
