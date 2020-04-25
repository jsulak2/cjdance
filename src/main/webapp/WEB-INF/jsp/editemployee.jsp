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

<h1>Edit Employee</h1>
<br>


<hr/>
<form method="post" action="/saveemp/">
    <input type="hidden" name="empid" value="${selectedItem.getempid()}">
    <br>First Name:<br>
    <input type="text" name="empfname" value="${selectedItem.getempfname()}">
    <br>Last name:<br>
    <input type="text" name="emplname" value="${selectedItem.getemplname()}">
    <br><br>
    <input type="submit" value="Submit" style="background-color: darkseagreen">
</form>
<br>

<br>
<button class="button" style="animation: alternate;" onclick="window.location.href = '/employee/';">Cancel</button>
</body>
</html>