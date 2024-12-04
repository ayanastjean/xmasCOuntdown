<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Countdown to Christmas</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            background-color: #eaf4f4;
            color: #383;
            padding: 20px;
        }
        h1 {
            font-size: 3em;
            color: #2b2d42;
        }
        .countdown {
            font-size: 2em;
            margin: 20px 0;
            color: #e63946;
            font-weight: bold;
        }
        .back {
            text-decoration: none;
            color: #264653;
            font-weight: bold;
            border: 2px solid #264653;
            padding: 10px 20px;
            border-radius: 5px;
            transition: all 0.3s ease;
        }
        .back:hover {
            background-color: #264653;
            color: #fff;
        }
    </style>
</head>
<body>
    <h1>Countdown to Christmas</h1>
    <p class="countdown">
        ${days} days, ${hours} hours, ${minutes} minutes
    </p>
    <p>
        <a class="back" href="index.jsp">Go Back to Welcome Page</a>
    </p>
</body>
</html>
