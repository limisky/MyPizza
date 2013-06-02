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
    <style type="text/css">   
        .form-signin {
        padding: 19px 29px 29px;
        margin: 20px 20px 20px;
        background-color: rgba(255,255,255,0.8);
        border: 1px solid #e5e5e5;
        -webkit-border-radius: 5px;
           -moz-border-radius: 5px;
                border-radius: 5px;
        -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
           -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
                box-shadow: 0 1px 2px rgba(0,0,0,.05);
      }
      .form-signin .form-signin-heading,
      .form-signin .checkbox {
        margin-bottom: 10px;
      }
      .form-signin input[type="text"],
      .form-signin input[type="password"],
      .form-signin p {
        font-size: 16px;
        height: auto;
        margin-bottom: 15px;
        padding: 7px 9px;
      }
    </style>
  </head>
  <body>
    <%@ include file="header.jsp"%>
    <div class="container" style="margin-top:30px">
        <div class="span5" style="margin-top:50px">
        <table class="table table-striped">
            <thead><tr>
                <th></th>
                <th style="width:25px">Name</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Cost</th>
            </tr></thead>
            <tbody>
            <c:forEach var="cartItem" items="${cartList}">
                <tr>
                    <td height="35" width="55"><img src="${cartItem[0].pic_url}"</td>
                    <td>${cartItem[0].name}</td>
                    <td>${cartItem[0].price} Kr</td>
                    <td>${cartItem[1]}</td>
                    <td>${cartItem[0].price * cartItem[1]} Kr</td>
                </tr>
            </c:forEach>
            <tfoot>
                <td></td>
                <td></td>
                <td></td>
                <td><h4>Total:</h4></td>
                <td><h4>${total} Kr</h4></td>
            </tfoot>
        </tbody>
        </table>
        </div>
        <div class="form-signin pull-right" style="width:400px">
            <form method="POST" action="shop?action=checkout">
              <h2 class="form-signin-heading offset1">Order Detail</h2>
              <table>
                  <thead>
                    <td class="span1"></td>
                    <td></td>
                  </thead>
                  <tr>
                      <td><p class="text-right">Name:</p></td>
                      <td><input type="text" name="name" class="span4" style="margin-left:10px" value="${profile.name}"></td>
                  </tr>
                  <tr>
                      <td><p class="text-right">Street:</p></td>
                      <td><input type="text" name="street" class="span4" style="margin-left:10px" value="${profile.street}"></td>
                  </tr>
                  <tr>
                      <td><p class="text-right">Zip:</p></td>
                      <td><input type="text" name="zip" class="span4" style="margin-left:10px" value="${profile.zip}"></td>
                  </tr>
                  <tr>
                      <td><p class="text-right">City:</p></td>
                      <td><input type="text" name="city" class="span4" style="margin-left:10px" value="${profile.city}"></td>
                  </tr>
                  <tr>
                      <td><p class="text-right">Country:</p></td>
                      <td><input type="text" name="country" class="span4" style="margin-left:10px" value="${profile.country}"></td>
                  </tr>
                  <tr>
                      <td></td>
                      <td><button class="btn btn-large btn-primary pull-right" type="submit">Confirm</button></td>
                  </tr>
              </table>
            </form>
        </div>
    </div>
  <%@ include file="footer.jsp"%>
  </body>
</html>
