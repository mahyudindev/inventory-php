<?php
error_reporting(0);
session_start();
include "configuration/config_etc.php";
include "configuration/config_include.php";
include 'configuration/config_connect.php';
$queryback = "SELECT * FROM data";
$resultback = mysqli_query($conn, $queryback);
$rowback = mysqli_fetch_assoc($resultback);
$footer = $rowback['nama'];
connect();
timing();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: url('hero.png') no-repeat center center fixed;
            background-size: cover;
            font-family: Arial, sans-serif;
            color: white;
        }
        .dark-overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            backdrop-filter: blur(8px);
            background: rgba(0, 0, 0, 0.6);
            z-index: -1;
        }
        .login-box {
            margin-top: 100px;
            padding: 20px;
            border-radius: 15px;
            background: rgba(0, 0, 0, 0.8);
            box-shadow: 0px 4px 20px rgba(0, 0, 0, 0.5);
            color: white;
        }
        .login-logo a {
            font-size: 28px;
            font-weight: bold;
            text-decoration: none;
            color: white;
        }
        .login-box .form-control {
            background: rgba(255, 255, 255, 0.1);
            border: 1px solid rgba(255, 255, 255, 0.4);
            color: white;
        }
        .login-box .form-control:focus {
            background: rgba(255, 255, 255, 0.2);
            color: white;
            box-shadow: none;
        }
        .btn-primary {
            background-color: #325d75;
            border: none;
        }
        .btn-primary:hover {
            background-color: #26495c;
        }
        .login-box-msg {
            font-size: 14px;
            color: rgba(255, 255, 255, 0.8);
        }
        .error-message {
            color: #ff4d4d;
            font-size: 14px;
            font-weight: bold;
            text-align: center;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <!-- Blur Background with Dark Overlay -->
    <div class="dark-overlay"></div>

    <div class="container position-relative">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="login-box">
                    <div class="login-logo text-center mb-4">
                        <a href="#"><?php echo $footer; ?></a>
                    </div>
                    <form action="op.php" method="post">
                        <div class="mb-3">
                            <label for="txtuser" class="form-label">Username</label>
                            <input type="text" class="form-control" id="txtuser" name="txtuser" placeholder="Enter username" maxlength="20" required>
                        </div>
                        <div class="mb-3">
                            <label for="txtpass" class="form-label">Password</label>
                            <input type="password" class="form-control" id="txtpass" name="txtpass" placeholder="Enter password" maxlength="20" required>
                        </div>
                        <div class="d-grid">
                            <button type="submit" class="btn btn-primary">Masuk</button>
                        </div>
                    </form>
                    <div class="error-message">
                        Username atau Password Salah! Silakan coba lagi.
                    </div>
                    <br>
                    <p class="text-center mt-3 login-box-msg">Management inventory System</p>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
