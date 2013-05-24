
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>MyPizza | Sign in</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/bootstrap.css" rel="stylesheet" media="screen">
    <script src="http://code.jquery.com/jquery.js"></script>
    <script src="js/bootstrap.js"></script>
    <style type="text/css">
      body {
        padding-top: 20px;
        padding-bottom: 20px;
        background-color: #f5f5f5;
      }
      .form-signin {
        max-width: 300px;
        padding: 19px 29px 29px;
        margin: 0 auto 20px;
        background-color: #fff;
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
  </head>
  <body>
    <div class="container">
        <div class="form-signin">
            <form>
              <h2 class="form-signin-heading">Please sign in</h2>
              <input type="text" class="input-block-level" placeholder="Username">
              <input type="password" class="input-block-level" placeholder="Password">
              <input class="checkbox"type="checkbox" value="remember-me"> Remember me
              <button class="btn btn-large btn-primary pull-right" type="submit">Sign in</button>
            </form>
            <br/>
            <hr/>
            <form>
                <h2 class="form-signin-heading">New customer? Join now!</h2>
                <input type="text" class="input-block-level" placeholder="Username">
                <input type="text" class="input-block-level" placeholder="Email">
                <input type="password" class="input-block-level" placeholder="Password">
                <input type="password" class="input-block-level" placeholder="Password Again">
                <button class="btn btn-large btn-primary pull-right" type="submit">Sign up</button>
            </form>
            <br/>
        </div>
    </div> 
  </body>
</html>
