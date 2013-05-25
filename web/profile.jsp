
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>MyPizza | Profile</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/bootstrap.css" rel="stylesheet" media="screen">
    <script src="http://code.jquery.com/jquery.js"></script>
    <script src="js/bootstrap.js"></script>
    <link rel="shortcut icon" href="img/icon.ico"/>
     <style type="text/css">
        body{
        background-image: url("img/probg.jpg");
        background-size: cover;
        }
        </style>
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
              <li id="home"><a href="index.jsp">Home</a></li>
              <li id="pizza"><a href="#">Pizza</a></li>
              <li id="order"><a href="#">Order</a></li>
              <li id="cart"><a href="#">Cart</a></li>
              <li id="login"><a href="login.jsp">Login</a></li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">limisky <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="profile.jsp">Edit profile</a></li>
                  <li><a href="#">Change password</a></li>
                  <li class="divider"></li>
                  <li><a href="logout.jsp">Logout</a></li>
                </ul>
              </li>
            </ul>          
          </div>
        </div>
      </div>
    </div>
    <div class="container">
        <div class="pull-left" style="position:absolute;top:10%; color:#ffffff;">
       <h1>Please update your profile
      <i>${sessionScope.currentUser}</i></h1>
      ${(passwordInvalid != null)?(passwordInvalid):null}
      <table border=0>
          <form action="index.jsp" method='post'
      <tr>
      <td>Name:</td>
      <td> <input type = "text" name = "name"
              value = "${profile.name}" ></td>
      </tr>
       <tr>
      <td>Surname:</td> 
      <td><input type = "text" name = "surname"
                       value = "${profile.surname}"></td>
      </tr>
       <tr>
      <td>Street address:</td> 
      <td><input type = "text" name = "address"
                       value = "${profile.address}"></td>
      </tr>
      <tr>
      <td>Zipcode:</td> 
      <td><input type = "text" name = "zipcode"
                       value = "${profile.zipcode}"></td>
      </tr>
      <tr>
      <td>City:</td> 
      <td><input type = "text" name = "city"
                       value = "${profile.city}"></td>
      </tr>
      <tr>
      <td>Telephone number:</td> 
      <td><input type = "text" name = "tel"
                       value = "${profile.tel}"></td>
      </tr>
      </table>
      <input type="submit" value="Save" style='width:80px;height:30px;'>
     </form>
    </div>
    </div>
   </body>
</html>
