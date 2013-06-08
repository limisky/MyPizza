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
              <li class="active"><a href="shop?action=loadcomponent&frw=newpdt">New Product</a></li>
              <li class="nav-header">Components</li>
              <li><a href="shop?action=loadcomponent&frw=ordcom">Order Components</a></li>
              <li><a href="newcomponent.jsp">New Component</a></li>
            </ul>
          </div><!--/.well -->
        </div><!--/span-->
        <div class="span9">
            <form method="POST" action="shop?action=addPizza">
              <h2>New Pizza</h2>
              <table>
                  <thead>
                    <td class="span1"></td>
                    <td></td>
                  </thead>
                  <tr>
                      <td><p class="text-right">Name:</p></td>
                      <td><input type="text" name="name"class="span4" style="margin-left:10px"></td>
                  </tr>
                  <tr>
                      <td><p class="text-right">Price:</p></td>
                      <td><input type="number" name="price" value ="50" class="span4" style="margin-left:10px"></td>
                  </tr>
                  <tr>
                      <td><p class="text-right">Description:</p></td>
                      <td><input type="text" name="description" class="span4" style="margin-left:10px"></td>
                  </tr>
                  <tr>
                      <td><p class="text-right">Picture URL:</p></td>
                      <td><input type="text" name="pic_url" class="span4" style="margin-left:10px"></td>
                  </tr>
                  <tr><td><h2>Components</h2></td><td></td></tr>
                    <c:forEach var="com" items="${comList}">
                        <tr>
                        <td><p class="text-right">${com[1]}</p></td>
                        <td><input type="number" name="${com[0]}" class="span4" value="0" min="0" style="margin-left:10px"></td>
                        </tr>
                    </c:forEach>
                          <tr>
                      <td></td>
                      <td><button class="btn btn-large btn-primary" type="submit">Add Pizza</button></td>
                  </tr>
              </table>
            </form>
        </div><!--/span-->
      </div><!--/row-->
    </div><!--/.fluid-container-->
    <%@ include file="footer.jsp"%>
  </body>
</html>