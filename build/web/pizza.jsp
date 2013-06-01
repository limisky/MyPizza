<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>MyPizza | Pizza</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/bootstrap.css" rel="stylesheet" media="screen">
    <script src="http://code.jquery.com/jquery.js"></script>
    <script src="js/bootstrap.js"></script>
    <link rel="shortcut icon" href="img/icon.ico"/>
    <script type="text/javascript">
        function message()
        {
            var id = "<%=request.getParameter("id")%>";
            var mess = "<%=request.getParameter("mess")%>";
            if(mess=="succ")
                $("span#succ"+id).show();
            else if(mess=="err")
                $("span#err"+id).show();
        }
    </script>
  </head>
  <body onload="message();">
    <%@ include file="header.jsp"%>
    <div class="container" style="margin-top: 30px">
        <h1>It's Pizza Time!</h1>
      <div class="row">
        <c:forEach var="pizza" items="${pizzaList}">
            <div class="span4">
              <h2>${pizza.name}</h2>
              <p><img class="img-rounded" src="${pizza.pic_url}"></p>
              <p style="height:50px">
                 ${pizza.description}</p>
              <p>
                 Price:${pizza.price} kr<br/>
                 Sales:${pizza.sales} st
              </p>
              <form method="POST" action="shop?action=addCart">
                  <input type="hidden" name="pizzaid" value=${pizza.id}>
                  <input type="number" name="quantity" class="span1" style="margin-top:8px"value="1">
                  <button class="btn btn-primary" type="submit">Add to Cart &raquo;</button>
                  <span id ="succ${pizza.id}" class="label label-success hide">Success</span>
                  <span id ="err${pizza.id}" class="label label-important hide">Out of Stock!</span>
              </form>
            </div>  
        </c:forEach>
      </div>
  <%@ include file="footer.jsp"%>
  </body>
</html>
