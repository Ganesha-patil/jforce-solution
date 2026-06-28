<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%@ page import="com.example.demo.model.PollReport"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Poll Report</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">

<div class="container mt-5">

    <h3 class="text-center mb-4">Poll Reports</h3>

    <table class="table table-bordered table-hover shadow-sm">
        <thead class="table-primary">
            <tr>
                <th>Report ID</th>
                <th>poll question</th>
                <th>Selected Option</th>
                
                <th>user ID</th>
            </tr>
        </thead>

        <tbody>
        <%
        List<PollReport> reports = (List<PollReport>) request.getAttribute("reports");

        if (reports != null && !reports.isEmpty()) {
            for (PollReport report : reports) {
        %>
            <tr>
                <td><%= report.getId() %></td>
                <td><%= report.getPoll().getDescripction() %></td>
                <td><%= report.getOption() %></td>
                
       			<td><%= report.getUser().getId() %></td>
            </tr>
        <%
            }
        } else {
        %>
            <tr>
                <td colspan="2" class="text-center">No reports found.</td>
            </tr>
        <%
        }
        %>
        </tbody>
    </table>
	    <button type="submit" class="btn btn-secondary">
       <a href="/home" class="btn btn-secondary">Home</a>
    </button>
    
    <button type="submit" class="btn btn-secondary">
       <a href="/show" class="btn btn-secondary">see polls</a>
    </button>
	
</div>

</body>
</html>