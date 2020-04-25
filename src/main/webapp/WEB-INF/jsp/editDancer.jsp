<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html>
<head>
    <title>CJ Dance: Edit Employee</title>
    <style>
        body {
            background-color: #323232;
        }
        h1 {
            color: aliceblue;
            text-align: center;
        }
        a {
            color: lightskyblue;
            padding: 8px 8px 8px 25px;
            alignment: left;
        }
        form {
            color: aliceblue;
            margin-left: 30px;
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
<br>

<h1>Edit Dancer</h1>
<br>


<hr/>
<form method="post" action="/savedancer/">
    <input type="hidden" name="dancid" value="${selectedItem.getdancid()}">
    <br>First Name:<br>
    <input type="text" name="dancfname" value="${selectedItem.getdancfname()}">
    <br>Last name:<br>
    <input type="text" name="danclname" value="${selectedItem.getdanclname()}">
    <br>Date of Birth:<br>
    <input type="text" name="dancdob" value="${selectedItem.getdancdob()}">
    <br>Phone:<br>
    <input type="text" name="dancphone" value="${selectedItem.getdancphone()}">
    <br>Email:<br>
    <input type="text" name="dancemail" value="${selectedItem.getdancemail()}">

    <br><br>
    <input type="submit" value="Submit" style="background-color: darkseagreen">
</form>
<br>

<br>
<button class="button" style="animation: alternate;" onclick="window.location.href = '/dancer';">Cancel</button>
</body>
</html>