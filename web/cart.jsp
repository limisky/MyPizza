<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>MyPizza | Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/bootstrap.css" rel="stylesheet" media="screen">
    <script src="http://code.jquery.com/jquery.js"></script>
    <script src="js/bootstrap.js"></script>
    <link rel="shortcut icon" href="img/icon.ico"/>
  </head>
  <body>
    <%@ include file="header.jsp"%>
    <div class="container" style="margin-top:30px">
        <div class="span10 offset1">
        <table class="table table-striped">
            <thead><tr>
                <th></th>
                <th>Name</th>
                <th>Price</th>
                <th>Quantity</th>
            </tr></thead>
            <tbody>
            <c:forEach var="cartItem" items="${cartList}">
                <tr>
                    <td height="50" width="100"><img src="${cartItem[0].pic_url}"</td>
                    <td>${cartItem[0].name}</td>
                    <td>${cartItem[0].price}Kr</td>
                    <td>${cartItem[1]}</td>
                </tr>
            </c:forEach>
        </tbody>
        </table>
        </div>
    </div>
  <%@ include file="footer.jsp"%>
  </body>
</html>
