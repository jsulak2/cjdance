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
        hr {
            color: lightcyan;
            text-align: left;
        }
        br {
            color: lightcyan;
            text-align: left;
        }
        input {
            color: lightcyan;
            text-align: left;
        }

    </style>
</head>
<body>



<hr/>
<form method="post" action="/signup/">
    <input type="hidden" name="id" value="${selectedItem.getId()}">
    <br>First Name:<br>
    <input type="text" name="firstname" value="${selectedItem.getFirstName()}">
    <br>Last name:<br>
    <input type="text" name="lastname" value="${selectedItem.getLastName()}">
    <br><br>
    <input type="submit" value="Submit">
</form>

</body>
</html>
