<!DOCTYPE html>
<html>
<head>
    <title>Acaled Style Registration</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
</head>
<body>
<div class="container mt-5">
    <h2 class="text-center text-light">Register</h2>
    <form action="insert.php" method="POST" class="bg-dark p-4 rounded shadow">
        <div class="mb-3">
            <label class="text-light">Name</label>
            <input type="text" name="name" class="form-control" required>
        </div>

        <div class="mb-3">
            <label class="text-light">Email</label>
            <input type="email" name="email" class="form-control" required>
        </div>

        <div class="mb-3">
            <label class="text-light">Password</label>
            <input type="password" name="password" class="form-control" required>
        </div>

        <div class="mb-3">
            <label class="text-light">Confirm Password</label>
            <input type="password" name="confirm_password" class="form-control" required>
        </div>

        <button type="submit" class="btn-netflix w-100">Register</button>
    </form>
    <br>
    <div class="text-center">
        <a href="view.php" class="btn btn-secondary">View Users</a>
    </div>
</div>
</body>
</html>
