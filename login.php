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
        }
        .login-logo a {
            font-size: 28px;
            font-weight: bold;
            text-decoration: none;
            color: white;
        }
        .form-control {
            background: rgba(255, 255, 255, 0.1);
            border: 1px solid rgba(255, 255, 255, 0.4);
            color: white;
        }
        .form-control:focus {
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
    </style>
</head>
<body>
    <div class="dark-overlay"></div>
    <div class="container position-relative">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="login-box">
                    <div class="login-logo text-center mb-4">
                        <a href="#">MARS DROID</a>
                    </div>
                    <?php if (isset($_GET['error']) && $_GET['error'] == 'invalid'): ?>
                        <div class="alert alert-danger text-center">
                            Username atau password salah. Silakan coba lagi!
                        </div>
                    <?php endif; ?>
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
                    <p class="text-center mt-3 login-box-msg">Management Inventory System</p>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
