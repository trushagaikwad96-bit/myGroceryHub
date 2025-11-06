<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Register Form</title>
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body, html {
      height: 100%;
      margin: 0;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background: url('resources/assets/img/register.jpg') no-repeat center center fixed;
      background-size: cover;
    }

    .register-card {
      background-color: rgba(255, 255, 255, 0.95);
      padding: 2rem;
      border-radius: 1rem;
      box-shadow: 0 0 20px rgba(0,0,0,0.3);
      max-width: 450px;
      width: 90%;
    }

    .register-card h2 {
      margin-bottom: 1.5rem;
      font-weight: 700;
    }

    .form-label {
      font-weight: 500;
    }
  </style>
</head>
<body>
  <div class="d-flex justify-content-center align-items-center vh-100 p-3">
    <div class="register-card">
      <h2 class="text-center">Register</h2>
      <form action="/register" method="post">
        <div class="mb-3">
          <label for="userName" class="form-label">Username</label>
          <input type="text" class="form-control" id="userName" name="userName" placeholder="Enter username" maxlength="45" required>
        </div>

        <div class="mb-3">
          <label for="email" class="form-label">Email</label>
          <input type="email" class="form-control" id="email" name="email" placeholder="Enter email" maxlength="45" required>
        </div>

        <div class="mb-3">
          <label for="phone" class="form-label">Phone Number</label>
          <input type="tel" class="form-control" id="phone" name="PhoneNo" placeholder="Enter phone number" maxlength="45" required>
        </div>

        <div class="mb-3">
          <label for="address" class="form-label">Address</label>
          <textarea class="form-control" id="address" name="address" rows="2" placeholder="Enter your address" maxlength="45" required></textarea>
        </div>

        <div class="mb-3">
          <label for="role" class="form-label">Role</label>
          <select class="form-select" id="role" name="role" required>
            <option value="" disabled selected>Select Role</option>
            <option value="admin">Admin</option>
            <option value="user">User</option>
          </select>
        </div>

        <div class="mb-3">
          <label for="password" class="form-label">Password</label>
          <input type="password" class="form-control" id="password" name="password" placeholder="Enter password" maxlength="45" required>
        </div>

        <div class="d-grid mt-3">
          <button type="submit" class="btn btn-primary btn-lg">Register</button>
        </div>
      </form>

      <p class="text-center mt-3">
        Already have an account? <a href="loginp" class="text-primary fw-semibold">Login here</a>
      </p>
    </div>
  </div>

  <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
