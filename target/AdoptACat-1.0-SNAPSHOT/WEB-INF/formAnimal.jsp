<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'/>
    <title>Animal inscription</title>
    <link type="text/css" rel="stylesheet" href="form.css"/>
</head>

<body>
<form action="inscription" method="get">
    <p>Add a cat </p>

    <label for="nom">Cat's name: </label>
    <input type="text" name="firtName">

    <label for="age">Cat's age: </label>
    <input type="text" name="adresse">

    <input type="submit" value="Valider">
    <input type="submit" value="Annuler">
</form>
</body>
</html>