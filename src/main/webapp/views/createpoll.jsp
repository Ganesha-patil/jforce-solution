<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.example.demo.model.Polls" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Poll</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">
</head>
<body>

<div class="container mt-5">

<h2>Create New Poll</h2>

<%
    String message = (String) request.getAttribute("message");
    if (message != null) {
%>
    <div class="alert alert-success">
        <%= message %>
    </div>
<%
    }  
%>


<form action="createPoll" >

    <div class="mb-3">
        <label>Poll Title</label>
        <input type="text" class="form-control" name="title">
    </div>

    <div class="mb-3">
        <label>Description</label>
        <textarea class="form-control" rows="3" name="descripction"></textarea>
    </div>

    <div class="mb-3">
        <label>Option 1</label>
        <input type="text" class="form-control" name="option1">
    </div>

    <div class="mb-3">
        <label>Option 2</label>
        <input type="text" class="form-control" name="option2">
    </div>

    <button type="submit" class="btn btn-primary">
        Create Poll
    </button>
    
    <button type="submit" class="btn btn-secondary">
       <a href="/home" class="btn btn-secondary">Home</a>
    </button>
    
    <button type="submit" class="btn btn-secondary">
       <a href="/show" class="btn btn-secondary">see polls</a>
    </button>

</form>

</div>

</body>
</html>