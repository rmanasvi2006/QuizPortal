<%@ page import="java.util.*" %>
<%
    Integer score = (Integer) session.getAttribute("userScore");
    if (score == null) {
        score = 0;  // If no score is found, show 0
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Scores</title>
    <style>
        body {
            font-family: 'Quicksand', sans-serif;
            text-align: center;
            padding: 50px;
        }
        .score-box {
            display: inline-block;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 5px rgba(0,0,0,0.1);
        }
        .score-box h2 {
            color: #00cc66;
        }
    </style>
</head>
<body>
    <div class="score-box">
        <h2>Your Last Score: <%= score %></h2>
    </div>
</body>
</html>
