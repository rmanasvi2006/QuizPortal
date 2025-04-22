<%@ page session="true" %>
<%
    String user = (String) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
    <link rel="stylesheet" href="css/style.css"> <!-- Make sure this exists -->
    <style>
        body {
            font-family: 'Quicksand', sans-serif;
            background-color: #ffe6f0; /* pastel pink */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .dashboard-box {
            background-color: white;
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            text-align: center;
        }
        .dashboard-box h2 {
            margin-bottom: 20px;
            color: #ff66a3;
        }
        .dashboard-btn {
            display: block;
            margin: 10px auto;
            padding: 12px 25px;
            background-color: #ff99cc;
            color: white;
            border: none;
            border-radius: 10px;
            font-size: 16px;
            cursor: pointer;
            width: 200px;
            transition: background 0.3s ease;
        }
        .dashboard-btn:hover {
            background-color: #ff66a3;
        }
    </style>
</head>
<body>
    <div class="dashboard-box">
        <h2>Welcome to Your Dashboard</h2>
        <form action="startQuiz.jsp">
            <button class="dashboard-btn">Start Quiz</button>
        </form>
        
        <form action="viewScores.jsp">
            <button class="dashboard-btn">View Scores</button>
            <a href="viewScores.jsp">View Scores</a>
        </form>
        <form action="profile.jsp">
            <button class="dashboard-btn">Profile</button>
        </form>
    </div>
</body>
</html>
