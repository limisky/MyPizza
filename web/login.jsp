
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>MyPizza | Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/bootstrap.css" rel="stylesheet" media="screen">
    <script src="http://code.jquery.com/jquery.js"></script>
    <script src="js/bootstrap.js"></script>
    <link rel="shortcut icon" href="img/icon.ico"/>
    <style type="text/css">
        body{
        background-image: url("img/background.jpg");
        background-size: cover;
        }
      .form-signin {
        width: 300px;
        padding: 19px 29px 29px;
        margin: 50px 50px 20px;
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
      .form-signin input[type="password"] {
        font-size: 16px;
        height: auto;
        margin-bottom: 15px;
        padding: 7px 9px;
      }
    </style>
    <script type="text/javascript">
         function check1()
        {
            var um = $("input#user_name").val();  
            var ps = $("input#user_pass").val();
            
            if(um == "" || ps == "")
            {
                $("#m1").text("Please fill in the form completely.");
                $("#loginAlert").show();  
                return false;
            }
            else
                return true;
        }
        function check2()
        {
            var um = $("input#um").val();  
            var p1 = $("input#p1").val();
            var p2 = $("input#p2").val();
            
            if(um == "" || p1 == "" || p2 == "")
            {
                $("#m2").text("Please fill in the form completely.");
                $("#signupAlert").show();  
                return false;
            }
            if(p1 != p2)
            {
                $("#m2").text("Two passwords do not match.");
                $("#signupAlert").show();  
                return false;
            }
            else
                return true;
        }
    </script>
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
              <li><a href="#">Pizza</a></li>
              <li><a href="#">Order</a></li>
              <li><a href="#">Cart</a></li>
              <li class="active"><a href="login.jsp">Login</a></li>
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
    <div class="container">
        <div class="pull-left" style="position:absolute;top:30%; color:#ffffff;-webkit-text-stroke: 0.3px #000000;">
            <h2>Welcome to MyPizza.</h2>    
            <h4>Hope you enjoy our fresh and yummy pizza.</h4>
        </div>
        <div class="form-signin pull-right">
        <div id="loginAlert" class="alert alert-error" style="display: none;">
            <button type="button" class="close" data-dismiss="alert">&times;</button>
            <strong>Error!</strong><label id="m1"></label>
        </div>
            <form onsubmit="return check1();">
              <h2 class="form-signin-heading">Please login</h2>
              <input type="text" id="user_name" class="input-block-level" placeholder="Username">
              <input type="password" id="user_pass" class="input-block-level" placeholder="Password">
<!--              <input class="checkbox" type="checkbox" value="remember-me"> Remember me-->
              <button class="btn btn-large btn-primary pull-right" type="submit">Login</button>
            </form>
            <br/>
            <hr/>
        <div id="signupAlert" class="alert alert-error" style="display: none;"> 
            <button type="button" class="close" data-dismiss="alert">&times;</button>
            <strong>Error!</strong><label id="m2"></label>
        </div>
            <form method="POST" action='shop?action=signup' onsubmit="return check2();">
               <h2 class="form-signin-heading">New customer? Join now!</h2>
               <input type="text" id="um" name="username" class="input-block-level" placeholder="Username">
               <input type="password" id="p1" name="password" class="input-block-level" placeholder="Password">
               <input type="password" id="p2" name="ver_pass" class="input-block-level" placeholder="Verify Password">
               <button class="btn btn-large btn-primary pull-right" type="submit">Sign up</button>
           </form>
        </div>
    </div>
  </body>
</html>
