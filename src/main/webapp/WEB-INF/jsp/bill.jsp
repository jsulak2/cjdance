<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html>
<head>
    <title>CJ Dance: Billing</title>
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
        table {
            color: #eeeeee;
            font-family: arial, sans-serif;
            border-collapse: collapse;
            border-width: 2px;
            border-style: solid;
            border-color: #f5f5f5f5;
            width: 75%;
            margin: auto auto 20px;
        }

        tr:nth-child(even) {
            background-color: #555555;
            border-width: 1px;
            border-style: solid;
            border-color: #f5f5f5f5;
            border-collapse: collapse;
        }
        tr:nth-child(odd) {
            background-color: #333333;
            border-width: 1px;
            border-style: solid;
            border-color: #f5f5f5f5;
            border-collapse: collapse;
        }
        td {
            border-width: 1px;
            border-style: solid;
            border-color: #f5f5f5f5;
            border-collapse: collapse;
        }
        th {
            border-width: 1px;
            border-style: solid;
            border-color: #f5f5f5f5;
            border-collapse: collapse;
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
<h1>Billing</h1>
<br>

<form method="post" action="/savebill/">
    <input type="hidden" name="billid" value="${selectedItem.getbillid()}">
    <br>Employee:<br>
    <input type="text" name="billempid" value="${selectedItem.getbillempid()}">
    <br>Class:<br>
    <input type="text" name="billclassid" value="${selectedItem.getbillclassid()}">
    <br>Dancer:<br>
    <input type="text" name="billdancerid" value="${selectedItem.getbilldancerid()}">
    <br>Date:<br>
    <input type="text" name="billdate" value="${selectedItem.getbilldate()}">
    <br>Total:<br>
    <input type="text" name="billtotal" value="$45">
    <br><br>
    <input type="submit" value="Submit" style="background-color: darkseagreen">
</form>
<br>

<br>
<button class="button" style="animation: alternate;" onclick="window.location.href = '/';">Cancel</button>
</body>
</html>