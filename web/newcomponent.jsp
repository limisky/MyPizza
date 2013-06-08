<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>MyPizza | New Component</title>
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
              <li class="active"><a href="newcomponent.jsp">New Component</a></li>
            </ul>
          </div><!--/.well -->
        </div><!--/span-->
        <div class="span9">
            <br/>
            <form method="POST" action='shop?action=addCom'>
                <input type="text" name="name" class="span4" placeholder="Component Name">
                <input type="number" name="price" class="span2" value="10">  Kr
                <br/>
                <button class="btn btn-large btn-primary" type="submit">Add</button>
            </form>
        </div><!--/span-->
      </div><!--/row-->
    </div><!--/.fluid-container-->
    <%@ include file="footer.jsp"%>
  </body>
</html>