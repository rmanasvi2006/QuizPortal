<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Start Quiz</title>
    <style>
        body {
            font-family: 'Quicksand', sans-serif;
            background-color: #e6f7ff;
            padding: 20px;
        }
        .quiz-container {
            background-color: #fff;
            border-radius: 20px;
            padding: 30px;
            max-width: 600px;
            margin: auto;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        h2 {
            text-align: center;
            color: #3399ff;
        }
        .question {
            margin-bottom: 20px;
        }
        .submit-btn {
            display: block;
            margin: 30px auto 0;
            padding: 12px 25px;
            background-color: #3399ff;
            color: white;
            border: none;
            border-radius: 10px;
            font-size: 16px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="quiz-container">
        <h2>Simple Quiz</h2>
        <form action="result.jsp" method="post">

            <%
                // Question format: question | option1 | option2 | option3 | correctAnswer
                String[][] questions = {
                    {"What is the capital of India?", "Delhi", "Mumbai", "Chennai", "Delhi"},
                    {"What is 2 + 2?", "3", "4", "5", "4"},
                    {"Which planet is known as the Red Planet?", "Earth", "Mars", "Jupiter", "Mars"}
                };

                for (int i = 0; i < questions.length; i++) {
                    out.println("<div class='question'>");
                    out.println("<p>" + (i + 1) + ". " + questions[i][0] + "</p>");
                    for (int j = 1; j <= 3; j++) {
                        out.println("<label><input type='radio' name='q" + (i + 1) + "' value='" + questions[i][j] + "'> " + questions[i][j] + "</label><br>");
                    }
                    out.println("</div>");
                }

                // Save answers to session to use later
                List<String> answers = new ArrayList<>();
                for (int i = 0; i < questions.length; i++) {
                    answers.add(questions[i][4]); // correct answer
                }
                session.setAttribute("answers", answers);
            %>

            <button class="submit-btn" type="submit">Submit</button>
        </form>
    </div>
</body>
</html>
