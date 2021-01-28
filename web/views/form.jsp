<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add value of point</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>

<body class="w3-light-blue">
<div class="w3-container w3-padding">
    <%
        if (request.getAttribute("pointX") != null&&request.getAttribute("pointX")!=""&&request.getAttribute("pointY") != null&&request.getAttribute("pointY") != "") {
            out.println("<p>Point (" + request.getAttribute("pointX") +";"+request.getAttribute("pointY")+ ") added!</p>");
        }
    %>
    <div class="w3-card-4">
            <div class="w3-container w3-center w3-green">
                <h2>Add point</h2>
            </div>
        <form method="post" class="w3-selection w3-light-grey w3-padding">
            <label>PointX:
                <input type="number" name="pointX"  class="w3-input w3-animate-input w3-border w3-round-large" style="width: 30%"><br />
            </label>
            <label>PointY:
                <input type="number" name="pointY"  class="w3-input w3-animate-input w3-border w3-round-large" style="width: 30%"><br />
            </label>
            <button type="submit" name="action"  class="w3-btn w3-green w3-round-large w3-margin-bottom">AddValue</button>
        </form>
    </div>
</div>
<div class="w3-container w3-grey w3-opacity w3-right-align w3-padding">
    <button class="w3-btn w3-round-large" onclick="location.href='/'">Back to main</button>
</div>
</body>
</html>