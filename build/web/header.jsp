<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="utf-8">
    <title>MyPizza</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/bootstrap.css" rel="stylesheet" media="screen">
    <script src="http://code.jquery.com/jquery.js"></script>
    <script src="js/bootstrap.js"></script>
    <link rel="shortcut icon" href="img/icon.ico"/>
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
                  <li><a href="index.jsp">Home</a></li>
                  <li><a href="shop?action=loadpizza">Pizza</a></li>
                  <li><a href="#">Order</a></li>
                  <li><a href="#">Cart</a></li>
                  <li class="divider-vertical"></li>
                  <li id="username" style="height: 40px"><a href="#"><%= request.getRemoteUser() %><a href="#"></a></li>
                  <li id="login"><a href="login.jsp">Login</a></li>
                  <li id="logout"><a href="shop?action=logout">Logout</a></li>
                  <script>
                    var username = $("li#username").text();
                    if(username == "null")
                    {
                        $("li#username").hide();
                        $("li#logout").hide();
                    }
                    else
                        $("li#login").hide();
                  </script>
<!--                  <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">limisky <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                      <li><a href="profile.jsp">Edit profile</a></li>
                      <li><a href="#">Change password</a></li>
                      <li class="divider"></li>
                      <li><a href="logout.jsp">Logout</a></li>
                    </ul>
                  </li>-->
                </ul>          
              </div>
            </div>
          </div>
        </div>
    </body>
</html>
