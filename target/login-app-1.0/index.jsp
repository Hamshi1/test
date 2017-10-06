<%--
  Created by IntelliJ IDEA.
  User: hamshika
  Date: 9/8/17
  Time: 4:37 AM
  To change this template use File | Settings | File Templates.
--%>



<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Cookie[] cookies = null;
    cookies = request.getCookies();
    boolean check_cookie = false;
    for(Cookie cookie1:cookies)
    {
        if(cookie1.getName().equals("uname")) {
            check_cookie = true;
           // out.print("Name : " + cookie1.getName() + "</br>");
           // out.print("Value : " + cookie1.getValue() + "</br>");
        }
    }
    if(!check_cookie)
        response.sendRedirect("PageLogin.jsp");
%>

<html>
<head>
    <link rel='stylesheet' href='PageLoginstyle.css'>
    <link rel="stylesheet" href="css/PageLoginstyle.css">


</head>

<body>
<div>
    <h1>WelCome</h1>
    <br>

        <button onclick="myFunction()">Display</button>

        <script>
            function myFunction() {
                alert(document.cookie);
            }
        </script>
    <br>
    <br>
    <br>


    <div class="Logout-form">
        <form name ="form-login" method="post">
            <input type="submit" name="logout" value="Logout"><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
            <br><br><br><br><br><br><br><br>
        </form>
    </div>
</div>
</body>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%

            if(request.getParameter("logout")!=null)
            {
                session.invalidate();
                for(Cookie cookie1:cookies)
                {
                    if (cookie1.getName().equals("uname"))
                    {
                        cookie1.setDomain("localhost");
                        cookie1.setMaxAge(0);
                        cookie1.setValue(null);
                        cookie1.setPath("/");
                        response.addCookie(cookie1);
                    }
                }
            }
        %>
</html>

