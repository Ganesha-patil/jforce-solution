<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>User Registration</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">

<div class="container mt-5">
    <div class="row justify-content-center">

        <div class="col-md-6 col-lg-5">

            <div class="card shadow-lg border-0">
                <div class="card-header text-center">
                    <h3>User Registration</h3>
                </div>

                <div class="card-body">

                    <form action="/register">

                        <div class="mb-3">
                            <label class="form-label">Name</label>
                            <input type="text"
                                   class="form-control"
                                   name="name"
                                   placeholder="Enter your name"
                                   required>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Email</label>
                            <input type="email"
                                   class="form-control"
                                   name="email"
                                   placeholder="Enter your email"
                                   required>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Password</label>
                            <input type="password"
                                   class="form-control"
                                   name="password"
                                   placeholder="Enter your password"
                                   required>
                        </div>

                        <div class="d-grid">
                            <button type="submit" class="btn btn-primary">
                                Register
                            </button>
                        </div>

                    </form>

                </div>

                <div class="card-footer text-center">
                    Already have an account?
                    <a href="/login" class="text-decoration-none">
                        Login
                    </a>
                </div>

            </div>

        </div>

    </div>
</div>

</body>
</html>