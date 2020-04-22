<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html>
<head>
    <title>CJ Dance: Class</title>
    <style>
        body {
            background-color: #323232;
        }
        h4 {
            text-align: left;
            color: lawngreen;
        }
        h1 {
            color: aliceblue;
            text-align: center;
        }
        a {
            color: lightskyblue;
            padding: 8px;
            padding-left: 25px;
            alignment: left;
        }
        table {
            color: #eeeeee;
            font-family: arial, sans-serif;
            border-collapse: collapse;
            border-width: 2px;
            border-style: solid;
            border-color: #f5f5f5f5;
            width: 100%;
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
    </style>
</head>


<body>
<h4>CJ Dance</h4>
<h1>Class Information</h1>
<br>

<table>
    <tr>
        <th>First Name</th>
        <th>Room Number</th>
        <th>Day & Time</th>
        <th>Instructor</th>
    </tr>
    <c:forEach var = "listitem" items = "${classlist}">
        <tr>
            <td>${listitem.getclname()}</td>
            <td>${listitem.getclroom()}</td>
            <td>${listitem.getcldaytime()}</td>
            <td>${listitem.getclinstructor()}</td>
        </tr>
    </c:forEach>
</table>

<a href="/">Back</a>
</body>
</html>