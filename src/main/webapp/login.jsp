<%@ page import="java.io.*" %>
<%@ page language="java" session="true" %>
<%
    String user = request.getParameter("user");
    String pass = request.getParameter("pass");

    if(user != null && pass != null) {
        if(user.equals("admin") && pass.equals("1234")) {
            session.setAttribute("user", user); // 👈 Store in session
            response.sendRedirect("dashboard.jsp");
            return;
        } else {
            out.println("<p style='color:red;'>Login Failed. Try again.</p>");
        }
    }
%>

<html>
<head>
    <title>Login Page</title>
</head>
<body>
    <h2>Login Page</h2>
    <form method="post">
        Username: <input type="text" name="user"><br><br>
        Password: <input type="password" name="pass"><br><br>
        <input type="submit" value="Login">
    </form>
</body>
</html>
