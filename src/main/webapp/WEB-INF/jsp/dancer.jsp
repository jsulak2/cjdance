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
<h1>Dancer</h1>
<br>

<table>
    <tr>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Date of Birth</th>
        <th>Phone Number</th>
        <th>Email</th>
        <th>Action</th>

    </tr>
    <c:forEach var = "listitem" items = "${dancerlist}">
        <tr>
            <td>${listitem.getdancfname()}</td>
            <td>${listitem.getdanclname()}</td>
            <td>${listitem.getdancdob()}</td>
            <td>${listitem.getdancphone()}</td>
            <td>${listitem.getdancemail()}</td>
            <td>
                <a href="/editdancer/${listitem.getdancid()}">Edit</a>
                <a href="/deletedancer/${listitem.getdancid()}">Delete</a>


            </td>

        </tr>
    </c:forEach>
</table>
<br>
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
<button class="button" style="animation: alternate;" onclick="window.location.href = '/';">Cancel</button>
</body>
</html>