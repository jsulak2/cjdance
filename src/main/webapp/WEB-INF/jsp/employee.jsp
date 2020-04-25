<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html>
<head>
    <title>CJ Dance: Employee</title>
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

        /*
            Used the following website to learn how to add CSS Style this button:
            https://www.w3schools.com/howto/tryit.asp?filename=tryhow_css_buttons_animate3
         */
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
<h1>Employee</h1>
<br>

<table>
    <tr>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Phone Number</th>
        <th>Email</th>
        <th>Action</th>
    </tr>
    <c:forEach var = "listitem" items = "${employeelist}">
        <tr>
            <td>${listitem.getempfname()}</td>
            <td>${listitem.getemplname()}</td>
            <td>${listitem.getempphone()}</td>
            <td>${listitem.getempemail()}</td>
            <td>
                <a href="/editemployee/${listitem.getempid()}">Edit</a>
                <a href="/deleteemp/${listitem.getempid()}">Delete</a>

            </td>
        </tr>
    </c:forEach>
</table>
<br>
<form method="post" action="/saveemp">
    <input type="hidden" name="empid" value="${selectedItem.getempid()}">
    <br>First Name:<br>
    <input type="text" name="empfname" value="${selectedItem.getempfname()}">
    <br>Last name:<br>
    <input type="text" name="emplname" value="${selectedItem.getemplname()}">
    <br>Phone:<br>
    <input type="text" name="empphone" value="${selectedItem.getempphone()}">
    <br>Email:<br>
    <input type="text" name="empemail" value="${selectedItem.getempemail()}">
    <br><br>
    <input type="submit" value="Submit" style="background-color: darkseagreen">
</form>

<!-- Used the following website to learn how to style this button:
https://www.w3docs.com/snippets/html/how-to-create-an-html-button-that-acts-like-a-link.html -->
<br>
<button class="button" style="animation: alternate;" onclick="window.location.href = '/';">Cancel</button>
</body>
</html>