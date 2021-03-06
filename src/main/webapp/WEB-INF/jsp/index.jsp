<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html>
<head>
    <title>CJ Dance</title>
    <style>
        body {
            background-color: #323232;
        }
        h1 {
            color: aliceblue;
            text-align: center;
        }
        h2 {
            color: lightcyan;
            text-align: left;
        }
        a {
            color: lightskyblue;
            padding: 8px 8px 8px 30px;
            alignment: left;
        }
        .button {
            margin-left: 30px;
            text-align: center;
            cursor: pointer;
            color: black;
            background-color: darkseagreen;
        }
        .button:hover {background-color: #3e8e41}
        .button:active {
            color: whitesmoke;
            background-color: darkgreen;
            transform: translateY(3px);
        }
    </style>
</head>


<body>

<h1>CJ Dance Studio</h1>
<br>
<!-- Used the following website to learn how to style this button:
https://www.w3docs.com/snippets/html/how-to-create-an-html-button-that-acts-like-a-link.html -->

<button class="button" style="animation: alternate;" onclick="window.location.href = '/employee/';">Employee Information</button>

<br><br>
<button class="button" style="animation: alternate;" onclick="window.location.href = '/classinfo/';">Class Information</button>

<br><br>
<button class="button" style="animation: alternate;" onclick="window.location.href = '/dancer/';">Dancer Information</button>

<br><br>
<button class="button" style="animation: alternate;" onclick="window.location.href = '/bill/';">New Transaction</button>


<br><br>
<button class="button" style="animation: alternate;" onclick="window.location.href = '/view/';">View Billing Data</button>

</body>
</html>