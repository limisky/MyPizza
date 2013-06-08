<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>MyPizza | Cart</title>
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
                <th>Cost</th>
                <th></th>
                <th></th>
            </tr></thead>
            <tbody>
            <c:forEach var="cartItem" items="${cartList}">
            <form method="POST" action="shop?action=remove&id=${cartItem[0].id}">
                <tr>
                    <td height="50" width="100"><img src="${cartItem[0].pic_url}"</td>
                    <td>${cartItem[0].name}</td>
                    <td>${cartItem[0].price} Kr</td>
                    <td>${cartItem[1]}</td>
                    <td>${cartItem[0].price * cartItem[1]} Kr</td>
                    <td><input type="number" name="num" class="span1" value="${cartItem[1]}" max="${cartItem[1]}" min="1"/></td>
                    <td><button class=" btn" type="submit">remove</button></td>
                </tr>
            </form>
            </c:forEach>
            <tfoot>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td><h4>Total:</h4></td>
                <td><h4>${total} Kr</h4></td>
                <td><a button class=" btn btn-primary" href="shop?action=loadProfile&frd=checkout">Check Out &raquo;</a></td>
            </tfoot>
        </tbody>
        </table>
        </div>
    </div>
  <%@ include file="footer.jsp"%>
  </body>
</html>
