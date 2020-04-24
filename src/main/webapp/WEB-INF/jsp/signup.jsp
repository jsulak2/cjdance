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
            padding: 8px 8px 8px 25px;
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
            color: black;
            text-align: left;
        }
        form {
            color: lightcyan;
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
<h1>Sign Up</h1>

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
<br>

<!-- Used the following website to learn how to style this button:
https://www.w3docs.com/snippets/html/how-to-create-an-html-button-that-acts-like-a-link.html -->
<button class="button" style="animation: alternate;" onclick="window.location.href = '/';">Cancel</button>
</body>
</html>