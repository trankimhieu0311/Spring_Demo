<!doctype html>
<html lang="en">
<head>
    <title>Document</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="icon" href="data:,">
    <link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<h1>ERROR</h1>
<%--<div class="alert alert-primary" role="alert" th:text="${success}" th:if="${success}"></div>--%>
<div class="alert alert-danger" role="alert">${error232}</div>
</body>
<script type="text/javascript">
    function alertName(){
        alert("Form has been submitted");
    }
    window.onload = alertName;
</script>
</html>