<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome to Xmas Countdown!</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            text-align: center;
            background-color: #fffbf0;
            color: #333;
            padding: 20px;
        }
        h1 {
            font-size: 3em;
            color: #e63946;
        }
        p {
            font-size: 1.2em;
        }
        .gif {
            margin: 20px auto;
            width: 300px;
            height: auto;
        }
        a {
            text-decoration: none;
            color: #2a9d8f;
            font-weight: bold;
            border: 2px solid #2a9d8f;
            padding: 10px 20px;
            border-radius: 5px;
            transition: all 0.3s ease;
        }
        a:hover {
            background-color: #2a9d8f;
            color: #fff;
        }
    </style>
</head>
<body>
    <h1>Welcome to Xmas Countdown!</h1>
    <img src="https://media0.giphy.com/media/3ofT5EtPNBpIjC8jTy/200w.gif?cid=6c09b952p3qdp7suajd7wd2s0s70d3jqrlow3ynjhyt3flg6&ep=v1_gifs_search&rid=200w.gif&ct=g" alt="Excited GIF" class="gif">
    <p>Excited for Christmas? Check out how much time is left!</p>
    <p>
        <a href="countdown.jsp">View the Countdown</a>
    </p>
</body>
</html>
