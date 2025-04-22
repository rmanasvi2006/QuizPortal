<%@ page session="true" %>
<%
    String user = (String) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Quiz Page</title>
    <style>
        body {
            font-family: 'Quicksand', sans-serif;
            background-color: #f0f5ff;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .quiz-box {
            background: white;
            padding: 30px;
            border-radius: 20px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
            width: 60%;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="quiz-box">
        <h2>Quiz Coming Soon!</h2>
        <p>We'll display your questions here 👩‍💻✨</p>
    </div>
</body>
</html>
