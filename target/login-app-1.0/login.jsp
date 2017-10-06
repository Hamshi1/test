<%--
  Created by IntelliJ IDEA.
  User: hamshika
  Date: 9/8/17
  Time: 3:31 AM
  To change this template use File | Settings | File Templates.
--%>

<html>
<head>
    <title>Login Page</title>

    <script src="js/script.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/Style.css">

    <head>
<body class="temp">
<div class="container">

    <div class="card card-container">
        <img id="profile-img" class="profile-img-card" src="images/propic.png" />
        <p id="profile-name" class="profile-name-card"></p>
        <form class="form-signin">
            <input type="text" name="username" class="form-control" placeholder="User Name" required autofocus>
            <input type="password" name="password" class="form-control" placeholder="Password" required>
            <div class="checkbox">
                <label style="text-align: center; margin: auto">
                    <input type="checkbox" name="secure_flag" value="secure"> Secure Flag
                    <input type="checkbox" name="httponly_flag" value="httponly"> HTTPOnly Flag
                </label>
            </div>
            <button class="btn btn-lg btn-primary btn-block btn-signin" name ="submit" type="submit">Sign in</button>
        </form><!-- /form -->
        <a href="#" class="forgot-password">
            Forgot the password?
        </a>
    </div>

</div>
</body>


</html>