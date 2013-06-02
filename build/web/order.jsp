<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>MyPizza | Order</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/bootstrap.css" rel="stylesheet" media="screen">
    <script src="http://code.jquery.com/jquery.js"></script>
    <script src="js/bootstrap.js"></script>
    <link rel="shortcut icon" href="img/icon.ico"/>
  </head>
  <body>
    <%@ include file="header.jsp"%>
    <div class="container" style="margin-top:30px">
        <c:forEach var="order" items="${orders}">
            <table class="table table-bordered">
                <tr><td>${order[0]}</td></tr>
                <tr><td>${order[1]}</td></tr>
                <tr><td>${order[2]}</td></tr>
            </table>
        </c:forEach>

    </div>
    <%@ include file="footer.jsp"%>
  </body>
</html>