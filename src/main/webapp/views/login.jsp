<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bootstrap Login Page</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
          
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .login-card {
            width: 100%;
            max-width: 400px;
            padding: 30px;
            border-radius: 15px;
            background: #fff;
            box-shadow: 0 10px 25px rgba(0,0,0,0.2);
        }

        .login-card h2 {
            text-align: center;
            margin-bottom: 25px;
            font-weight: bold;
        }

        .btn-primary {
            width: 100%;
        }

        .form-text {
            text-align: center;
        }
    </style>
</head>
<body>

<div class="login-card">
    <h2>Login</h2>

    <form>
        <div class="mb-3">
            <label for="email" class="form-label">Email Address</label>
            <input
                type="email"
                class="form-control"
                name="email"
                placeholder="Enter your email"
                required
            >
        </div>

        <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input
                type="password"
                class="form-control"
                name="password"
                placeholder="Enter your password"
                required
            >
        </div>

        <button type="submit" class="btn btn-primary">
            Login
        </button>

        <p class="form-text mt-3">
            Don't have an account?
            <a href="/register">Register</a>
        </p>
    </form>
</div>

</body>
</html>