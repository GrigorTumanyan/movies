<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Կոդ</title>
    <link rel="stylesheet" href="../css/ckin.css">
    <link rel="stylesheet" href="../css/demo.css">
</head>

<body>

<section>
    <div class="container">
        <video poster="../images/ckin.jpg"  id="video-player"
               src="https://cdp.playfamily.ru/data/storage25/trl/1d3b9ce8-1e7f-478b-b7cd-faf2b39af358.webm" controls>

        </video>
        <div><button id="play">Play</button></div>
        <div><button id="pause">Pause</button></div>
        <div><button id="stop">Stop</button></div>
        <div><button type="range" id="volume" min="0" max="100">Volume</button></div>
    </div>
</section>
<script src="../js/ckin.js"></script>
</body>
</html>
