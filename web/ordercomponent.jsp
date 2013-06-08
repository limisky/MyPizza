<!DOCTYPE html>
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
    <div class="container-fluid" style="margin-top:20px">
      <div class="row-fluid">
        <div class="span3">
          <div class="well sidebar-nav">
            <ul class="nav nav-list">
              <li class="nav-header">Products</li>
              <li><a href="shop?action=loadcomponent&frw=newpdt">New Product</a></li>
              <li class="nav-header">Components</li>
              <li class="active"><a href="shop?action=loadcomponent&frw=ordcom">Order Components</a></li>
              <li><a href="newcomponent.jsp">New Component</a></li>
            </ul>
          </div><!--/.well -->
        </div><!--/span-->
        <div class="span9">
            <form method="POST" action="shop?action=ordCom">
                <h2>Order Component</h2>
                <table class="table table-striped">
                    <thead>
                        <td>Name</td>
                        <td>Stock</td>
                        <td>Order</td>
                    </thead>
                    <c:forEach var="com" items="${comList}">
                        <tr>
                        <td>${com[1]}</td>
                        <td>${com[2]}</td>
                        <td><input type="number" name="${com[0]}" class="span4" value="0" min="0" style="margin-left:10px"></td>
                        </tr>
                    </c:forEach>
                  <tr>
                      <td></td>
                      <td><button class="btn btn-large btn-primary" type="submit">Order</button></td>
                      <td></td>
                  </tr>
              </table>
            </form>
        </div><!--/span-->
      </div><!--/row-->
    </div><!--/.fluid-container-->
    <%@ include file="footer.jsp"%>
  </body>
</html>