<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Home Page</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
.opt {
	width: 50%;
	height: 80px;
	display: flex;
}
</style>
</head>

<body>

	<div class="container">
		<h1>welcome to online polling system</h1>
		
		<nav class="navbar navbar-expand-lg ">
			<div class="container-fluid">
				<a class="navbar-brand" href="/createPoll">create polls</a>
			</div>
			<div class="container-fluid">
				<a class="navbar-brand" href="/show">active list</a>
			</div>
			<div class="container-fluid">
				<a class="navbar-brand" href="/register">register</a>
			</div>
		</nav>
	</div>

</body>
</html>