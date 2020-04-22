<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html>
<head>
    <title>CJ Dance: Billing</title>
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
<h1>Billing</h1>
<br>

<table>
    <tr>
        <th>Dancer Name</th>
        <th>Bill Date</th>
        <th>Number of Classes</th>
        <th>Total</th>
        <th>Status</th>
    </tr>
    <c:forEach var = "listitem" items = "${billlist}">
        <tr>
            <td>${listitem.getbilldancer()}</td>
            <td>${listitem.getbilldate()}</td>
            <td>${listitem.getbillnumclasses()}</td>
            <td>${listitem.getbilltotal()}</td>
            <td>${listitem.getbillpaid()}</td>
        </tr>
    </c:forEach>
</table>

<a href="/">Back</a>
</body>
</html>