
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset=UTF-8">
        <title>MyPizza | Logout</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/bootstrap.css" rel="stylesheet" media="screen">
    <script src="http://code.jquery.com/jquery.js"></script>
    <script src="js/bootstrap.js"></script>
    <link rel="shortcut icon" href="img/icon.ico"/>
    </head>
    <body>
    <%@ include file="header.jsp"%> 
    <div class="container" >
        <div class="pull-left" style="position:absolute;top:10%;">
            <h1>You have logged out from the shop.</h1><br/><br/>
            <a href="login.jsp">Login again!</a><br/><br/>
            <a href="pizza.jsp">Buy more pizzas.</a>
        </div>
    </div>
    </body>
</html>
