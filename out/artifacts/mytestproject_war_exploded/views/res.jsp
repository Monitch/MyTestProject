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
    var x = [];
    var y = [];
     x = <%=request.getAttribute("X")%>;
     y = <%=request.getAttribute("Y")%>;
    var canvas = document.getElementById("canvas");
    var ctx = canvas.getContext("2d");
    setDimensions(ctx,250,250);
    ctx.lineWidth = 3;
    ctx.strokeStyle = 'red';
   for (let i = 0; i < x.length; i++) {
        ctx.lineTo(x[i]*50,y[i]*50);
    }
   ctx.lineTo(x[0]*50,y[0]*50);
   ctx.stroke();
    function setDimensions(el, width, height) {
        var el = document.querySelectorAll(el),
            w  = Math.max(document.documentElement.clientWidth, window.innerWidth || 0),
            h  = Math.max(document.documentElement.clientHeight, window.innerHeight || 0);

        if(width) {
            for (var i = 0; i < el.length; ++i) {
                el[i].style.width = w * (width/100) + "px";
            }
        }

        if(height) {
            for (var i = 0; i < el.length; ++i) {
                el[i].style.height = h * (height/100) + "px";
            }
        }
    }
</script>
<div class="w3-container w3-grey w3-opacity w3-right-align w3-padding">
    <button class="w3-btn w3-round-large" onclick="location.href='/'">Back to main</button>
</div>
</body>
</html>

