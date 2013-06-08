<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>MyPizza | Manage</title>
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
              <li><a href="shop?action=loadcomponent&frw=ordcom">Order Components</a></li>
              <li><a href="newcomponent.jsp">New Component</a></li>
            </ul>
          </div><!--/.well -->
        </div><!--/span-->
        <div class="span9">
            <h2>Contact Us</h2><br>
            <address>
                <strong>Group 9</strong><br>
                <strong>Li Mi</strong><br>
                <a href="mailto:limisky@gmail.com">limisky@gmail.com</a><br>
                <strong>Yang Jinyi</strong><br>
                <a href="mailto:phyjyi999@163.com">phyjyi999@163.com</a><br>
              </address>
        </div><!--/span-->
      </div><!--/row-->
    </div><!--/.fluid-container-->
    <%@ include file="footer.jsp"%>
  </body>
</html>