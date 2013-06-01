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
    <div class="container" style="margin-top: 30px">
      <div class="row">
        <c:forEach var="pizza" items="${pizzaList}">
            <div class="span4">
              <h2>${pizza.name}</h2>
              <p><img class="img-rounded" src="${pizza.pic_url}"></p>
              <p>
                 ${pizza.description}<br/>
                 Price:${pizza.price}kr<br/>
                 Sales:${pizza.sales}st
              </p>
              <form method="POST" action="shop?action=addCart">
                  <input type="hidden" name="pizzaid" value=${pizza.id}>
                  <input type="number" name="quantity" class="span1" style="margin-top:8px"value="1">
                  <button class="btn btn-primary" type="submit">Add to Cart &raquo;</button>
              </form>
            </div>  
        </c:forEach>
      </div>
  <%@ include file="footer.jsp"%>
  </body>
</html>
