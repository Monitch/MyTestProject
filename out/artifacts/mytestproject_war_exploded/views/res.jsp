<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My test project</title>
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
            String s= String.valueOf(1);
            String res = String.valueOf(request.getAttribute("res"));
            if (res != null && !res.isEmpty()) {
                out.println("<p>"+res+"</p>");
            }
        %>
</div>
<div class="w3-container w3-center w3-padding ">
    <canvas style="border: 3px solid blue;border-radius: 10px"  id="canvas" ></canvas>
</div>
<script>
    var x = <%=request.getAttribute("X")%>;
    var y = <%=request.getAttribute("Y")%>;
    var canvas = document.getElementById("canvas");
    var ctx = canvas.getContext("2d");
    ctx.lineWidth = 3;
    ctx.strokeStyle = 'red';
   for (let i = 0; i < x.length; i++) {
        ctx.lineTo(x[i] * 20, y[i] * 20);
    }
   ctx.lineTo(x[0] * 20, y[0] * 20);
   ctx.stroke();
</script>
<div class="w3-container w3-grey w3-opacity w3-right-align w3-padding">
    <button class="w3-btn w3-round-large" onclick="location.href='/'">Back to main</button>
</div>
</body>
</html>

