<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>MyPizza | Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/bootstrap.css" rel="stylesheet" media="screen">
    <script src="http://code.jquery.com/jquery.js"></script>
    <script src="js/bootstrap.js"></script>
  </head>
  <body>
    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container" style="width: auto; margin-left: 100px; margin-right: 100px">
          <a class="brand" href="#">MyPizza</a>
          <form class="navbar-form pull-left">
            <input class="span4" type="text" placeholder="Pizza...">
            <button type="submit" class="btn">Search</button>
          </form>   
          <div class="nav-collapse collapse pull-right">
            <ul class="nav">
              <li class="active"><a href="#">Home</a></li>
              <li><a href="#">Pizza</a></li>
              <li><a href="#">Order</a></li>
              <li><a href="#">Cart</a></li>
              <li><a href="signin.jsp">Sign in</a></li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">limisky <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="#">Edit profile</a></li>
                  <li><a href="#">Change password</a></li>
                  <li class="divider"></li>
                  <li><a href="#">Logout</a></li>
                </ul>
              </li>
            </ul>          
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
