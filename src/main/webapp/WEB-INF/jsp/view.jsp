<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html>
<head>
    <title>CJ Dance: Dancer</title>
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
        table {
            color: #eeeeee;
            font-family: arial, sans-serif;
            border-collapse: collapse;
            border-width: 2px;
            border-style: solid;
            border-color: #f5f5f5f5;
            width: 95%;
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
<h1>Bill Data</h1>
<br>

<table>
    <tr>
        <th>Employee Name</th>
        <th>Class Name</th>
        <th>Dancer Name</th>
        <th>Bill Date</th>
        <th>Total</th>
        <th>Action</th>
    </tr>
    <c:forEach var = "listitem" items = "${billlist}">
        <tr>
            <td>${listitem.getbillempid()}</td>
            <td>${listitem.getbillclassid()}</td>
            <td>${listitem.getbilldancerid()}</td>
            <td>${listitem.getbilldate()}</td>
            <td>${listitem.getbilltotal()}</td>
            <td>
                <a href="/deleteview/${listitem.getbillid()}">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
<br>

<br>
<p style="color:#eeeeee; margin-left: 30px ">Search</p>
<input type="text" style="padding-left: 30px; margin-left: 30px" name="search">
<br><br>
<button class="button" style="animation: alternate; width: 58px ">Go</button>
<br>

<br>
<button class="button" style="animation: alternate;" onclick="window.location.href = '/';">Cancel</button>
</body>
</html>