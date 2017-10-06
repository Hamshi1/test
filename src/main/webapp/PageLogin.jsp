

<%
    Cookie cookie=null;
    Cookie[] cookies = null;
    cookies = request.getCookies();//Get an array of cookies associated with this domain

  /*  if(cookies != null)
    {
        for (int i = 0; i < cookies.length; i++)
        {
            cookie = cookies[i];
            if (cookie.getName().equals("User_cookie_http") || cookie.getName().equals("User_cookie_http"))
            {
                response.sendRedirect("PageLogin.jsp");
            }
        }
    }
    */

%>


<!DOCTYPE html>
<html >
<head>
    <meta charset="UTF-8">
    <title>Login Form</title>

    <link rel='stylesheet' href='style.css'>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<link href='https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwx5Nw2xp9WYpOKhQ3j7M7IFI_pqWKy1Hm5FQMV0prIPfKjJDb' rel='stylesheet' type='text/css'>
<br>
<div class="Login Page">
    <div class="login-header">
        <h1>Login Page</h1><br>
    </div>
    <form method="post" action="PageLogin.jsp">
        <div>
            <div class="checkbox">
                <label style="text-align: center; margin: auto">
                    <input type="checkbox" name="secure_flag" value="secure"> Secure_Flag
                    <input type="checkbox" name="httponly_flag" value="httponly"> HTTPOnly_Flag
                </label>
            </div><br>
            <input type="text" placeholder="username" name="username"/><br>
            <input type="password" placeholder="password" name="password"/><br>


            <p><div class="Remember">
            <input type="checkbox" >Remember User Password</div></p>
        </div>
        <div class="try-again">
            <input type="submit" value="Login" name="submit" class="login-button"/> Forgot your Password?<br>
        </div>

<br>
        <div class="sign-up" > New to Use?  Sign Up!  </div><br><br><br><br><br><br><br><br><br><br><br><br>
    </form>
</div>

<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js'></script>

<script src="js/javascript.js"></script>

</body>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if(request.getParameter("submit") != null)  //trigger the login function
    {
        String secure = request.getParameter("secure_flag");
        String httponly = request.getParameter("httponly_flag");
        String username = request.getParameter("username");
        String password = request.getParameter("password");


        if ("abc".equals(username) && "abc".equals(password)) //check credential ( password and username are valid or not)
        {
            Cookie uname = new Cookie("uname", username); //creating a cookie object. ( object name is uname)
            uname.setMaxAge(60); //this method sets how much time ( in seconds) should elapse before the cookie expires.
            uname.setDomain("localhost"); //this method sets the domain to which cookie applies
            uname.setPath("/"); //sets the path to which this cookie applies.
            if(secure != null)
                uname.setSecure(true); //sets the boolean value indicating whether the cookie should only be sent over encrypted connections.
            if(httponly != null)
                uname.setHttpOnly(true);
            response.addCookie(uname); //Add both the cookies in the response headers.

        }
        else
        {

            out.println("Failed");
        }

        response.sendRedirect("/login-app"); //redirect the page

    }
%>

</html>
