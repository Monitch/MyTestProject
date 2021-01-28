<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Result</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>

<body class="w3-light-blue">
<div class="w3-container w3-blue-grey w3-opacity w3-right-align">
    <h1>Result</h1>
</div>

<div class="w3-container w3-center w3-padding">
    <div class="w3-card-4">
        </div>
        <%
            String res = String.valueOf(request.getAttribute("res"));
            List<String> X = (List<String>) request.getAttribute("pointX");
            List<String> Y = (List<String>) request.getAttribute("pointY");
            if (res != null && !res.isEmpty()) {
                out.println("<p>"+res+"</p>");
            }
        %>
</div>

<div class="w3-container w3-grey w3-opacity w3-right-align w3-padding">
    <button class="w3-btn w3-round-large" onclick="location.href='/'">Back to main</button>
</div>
</body>
