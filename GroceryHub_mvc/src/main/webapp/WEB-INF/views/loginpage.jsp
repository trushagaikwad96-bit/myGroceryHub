<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login Form</title>
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body, html {
      height: 100%;
      margin: 0;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    /* Full background image */
    body {
      background: url('resources/assets/img/Geocery_img.jpeg') no-repeat center center fixed;
      background-size: cover;
    }

    /* Center the login card */
    .login-card {
      background-color: rgba(255, 255, 255, 0.9); /* semi-transparent white */
      padding: 2rem;
      border-radius: 1rem;
      box-shadow: 0 0 20px rgba(0,0,0,0.3);
      max-width: 400px;
      width: 100%;
    }
  </style>
</head>
<body>

  <div class="d-flex justify-content-center align-items-center vh-100">
    <div class="login-card">
      <h2 class="text-center mb-4 fw-bold">Login</h2>
      <form action="Login" method="post">
        <div class="mb-3">
          <input type="text" name="userName" class="form-control form-control-lg" placeholder="Username" required>
        </div>
        <div class="mb-3">
          <input type="email" name="email" class="form-control form-control-lg" placeholder="Email" required>
        </div>
        <div class="mb-3">
          <input type="password" name="password" class="form-control form-control-lg" placeholder="Password" required>
        </div>
        <div class="mb-3">
          <select name="role" class="form-select form-select-lg" required>
            <option value="" disabled selected>Select Role</option>
            <option value="admin">Admin</option>
            <option value="user">User</option>
          </select>
        </div>
        <div class="d-grid">
          <button type="submit" class="btn btn-primary btn-lg">Login</button>
        </div>
      </form>
      <p class="text-center mt-4 mb-0">
        Don't have an account? 
        <a href="register" class="text-decoration-none text-primary fw-semibold">Register here</a>
      </p>
    </div>
  </div>

  <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
