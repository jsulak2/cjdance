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
            padding: 8px 8px 8px 30px;
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
<a style="font-family: 'Lucida Grande'; text-align: left; text-decoration: none; color: lawngreen;", href="/">CJ Dance</a>

<h1>Edit Class Information</h1>
<br>

<hr/>
<form method="post" action="/saveclassinfo/">
    <input type="hidden" name="clid" value="${selectedItem.getclid()}">
    <br>Class Name:<br>
    <input type="text" name="clname" value="${selectedItem.getclname()}">
    <br>Classroom:<br>
    <input type="text" name="clroom" value="${selectedItem.getclroom()}">
    <br>Day & Time:<br>
    <input type="text" name="cldaytime" value="${selectedItem.getcldaytime()}">
    <br><br>
    <input type="submit" value="Submit" style="background-color: darkseagreen">
</form>
<br>

<br>
<button class="button" style="animation: alternate;" onclick="window.location.href = '/classinfo';">Cancel</button>
</body>
</html>