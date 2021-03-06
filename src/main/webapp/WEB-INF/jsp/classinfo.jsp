<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html>
<head>
    <title>CJ Dance: Class</title>
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
<h1>Class Information</h1>
<br>

<table>
    <tr>
        <th>Class Name</th>
        <th>Room Number</th>
        <th>Day & Time</th>
        <th>Action</th>


    </tr>
    <c:forEach var = "listitem" items = "${classlist}">
        <tr>
            <td>${listitem.getclname()}</td>
            <td>${listitem.getclroom()}</td>
            <td>${listitem.getcldaytime()}</td>
            <td>
                <a href="/editclassinfo/${listitem.getclid()}">Edit</a>
                <a href="/deleteclass/${listitem.getclid()}">Delete</a>
            </td>



        </tr>
    </c:forEach>
</table>
<br>
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
<button class="button" style="animation: alternate;" onclick="window.location.href = '/';">Cancel</button>
</body>
</html>