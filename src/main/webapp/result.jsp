<%@ page import="java.util.*" %>
<%
    int score = 0;
    List<String> answers = (List<String>) session.getAttribute("answers");

    for (int i = 0; i < answers.size(); i++) {
        String userAnswer = request.getParameter("q" + (i + 1));
        if (answers.get(i).equals(userAnswer)) {
            score++;
        }
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Result</title>
    <style>
        body {
            font-family: 'Quicksand', sans-serif;
            background-color: #f0fff4;
            text-align: center;
            padding: 100px;
        }
        .score-box {
            display: inline-block;
            background-color: #ffffff;
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        .score-box h2 {
            color: #00cc66;
        }
    </style>
</head>
<body>
    <div class="score-box">
        <h2>Your Score: <%= score %>/<%= answers.size() %></h2>
    </div>
    
</body>
</html>
