<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.example.demo.model.Polls"%>
<%@ page import="java.util.List"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Polls</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>

	<div class="container mt-5">

		<h1>Explore Show Polls</h1>
		<table class="table table-success table-striped">
			<thead>
				<tr>
					<th>ID</th>
					<th>Title</th>
					<th>Description</th>
					<th>Option 1</th>
					<th>Option 2</th>
				</tr>
			</thead>


			<tbody>
				<%
				List<Polls> polls = (List<Polls>) request.getAttribute("polls");
				if (polls != null && !polls.isEmpty()) {
					for (Polls poll : polls) {
				%>
				<tr>
					<td><%=poll.getId()%></td>
					<td><%=poll.getTitle()%></td>
					<td><%=poll.getDescripction()%></td>
					<td><a
						href="/vote?pollId=<%=poll.getId()%>&option=<%=poll.getOption1()%>">
							<%=poll.getOption1()%>
					</a></td>
					
					<td><a
						href="/vote?pollId=<%=poll.getId()%>&option=<%=poll.getOption2()%>">
							<%=poll.getOption2()%>
					</a></td>

					
				</tr>

				<%
				}
				%>

				<%
				} else {
				%>

				<tr>
					<td colspan="5">No polls available.</td>
				</tr>

				<%
				}
				%>

			</tbody>
		</table>
		<button type="submit" class="btn btn-secondary">
       <a href="/report" class="btn btn-secondary">report card</a>
    </button>
		
		<button type="submit" class="btn btn-secondary">
       <a href="/home" class="btn btn-secondary">Home</a>
    </button>
	</div>
</body>
</html>