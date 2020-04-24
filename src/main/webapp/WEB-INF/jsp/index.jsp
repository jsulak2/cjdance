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
            padding: 8px;
            padding-left: 25px;
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
<a href="/signup/">Class Sign Up</a>
<br><br>

<h2>View</h2>

<a href="/employee/">Employee Information</a>
<br><br>
<a href="/classinfo/">Class Information</a>
<br><br>
<a href="/dancer/">Dancer Information</a>
<br><br>
<a href="/bill/">Billing History</a>

</body>
</html>