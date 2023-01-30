<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>sendmail</title>
</head>
<body>

<div>
    <h2>Forgot Password</h2>
</div>
<form th:action="" method="post" style="max-width: 420px; margin: 0 auto;">
    <div class="border border-secondary rounded p-3">
        <div>
            <p>We will be sending a reset password link to your email.</p>
        </div>
        <div>
            <p>
                <input type="email" name="email" class="form-control" placeholder="Enter your e-mail" required autofocus/>
            </p>
            <p class="text-center">
                <input type="submit" value="Send" class="btn btn-primary" />
            </p>
        </div>
    </div>
</form>

</body>
</html>