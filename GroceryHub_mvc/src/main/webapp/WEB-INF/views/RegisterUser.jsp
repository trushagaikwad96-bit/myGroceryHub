<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register Form</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #ff9a9e, #fad0c4);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .register-container {
            background-color: white;
            padding: 40px 50px;
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.3);
            width: 400px;
            text-align: center;
        }
        .register-container h2 {
            margin-bottom: 25px;
            color: #333;
        }
        .register-container input[type="text"],
        .register-container input[type="email"],
        .register-container input[type="password"],
        .register-container input[type="tel"],
        .register-container textarea {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border-radius: 8px;
            border: 1px solid #ccc;
            transition: 0.3s;
        }
        .register-container input:focus,
        .register-container textarea:focus {
            border-color: #ff6f61;
            box-shadow: 0 0 5px #ff6f61;
            outline: none;
        }
        .register-container input[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #ff6f61;
            border: none;
            color: white;
            font-size: 16px;
            font-weight: bold;
            border-radius: 8px;
            cursor: pointer;
            transition: 0.3s;
        }
        .register-container input[type="submit"]:hover {
            background-color: #e55b50;
        }
        .register-container .login-link {
            display: block;
            margin-top: 15px;
            color: #ff6f61;
            text-decoration: none;
            font-size: 14px;
        }
        .register-container .login-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="register-container">
        <h2>Register</h2>
        <form action="/register" method="post">
            <input type="text" name="userName" placeholder="Username" maxlength="45" required>
            <input type="password" name="password" placeholder="Password" maxlength="45" required>
            <input type="email" name="email" placeholder="Email" maxlength="45" required>
            <input type="tel" name="PhoneNo" placeholder="Phone Number" maxlength="45" required>
            <textarea name="address" placeholder="Address" maxlength="45" rows="3" required></textarea>
        
  <select name="role" required>
                <option value="">Select Role</option>
                <option value="admin">Admin</option>
                <option value="user">User</option>
            </select>
        
            <input type="submit" value="Register">
        
        </form>
        <a href="loginp" class="login-link">Already have an account? Login here</a>
    </div>
</body>
</html>
