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
        .form-signin {
        padding: 19px 29px 29px;
        margin: 50px 20px 20px;
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
      .form-signin input[type="password"],
      .form-signin p {
        font-size: 16px;
        height: auto;
        margin-bottom: 15px;
        padding: 7px 9px;
      }
    </style>
    </head>
    <body>
    <%@ include file="header.jsp"%>
    <div class="container">
        <div class="form-signin pull-right" style="width:420px">
            <form method="POST" action="shop?action=updateProfile">
              <h2 class="form-signin-heading">Update Profile</h2>
              <table>
                  <thead>
                    <td class="span1"></td>
                    <td></td>
                  </thead>
                  <tr>
                      <td><p class="text-right">Username:</p></td>
                      <td><input type="text" class="span4" style="margin-left:10px" value="${profile.user}" disabled></td>
                  </tr>
                  <tr>
                      <td><p class="text-right">Name:</p></td>
                      <td><input type="text" name="name" class="span4" style="margin-left:10px" value="${profile.name}"></td>
                  </tr>
                  <tr>
                      <td><p class="text-right">Street:</p></td>
                      <td><input type="text" name="street" class="span4" style="margin-left:10px" value="${profile.street}"></td>
                  </tr>
                  <tr>
                      <td><p class="text-right">Zip:</p></td>
                      <td><input type="text" name="zip" class="span4" style="margin-left:10px" value="${profile.zip}"></td>
                  </tr>
                  <tr>
                      <td><p class="text-right">City:</p></td>
                      <td><input type="text" name="city" class="span4" style="margin-left:10px" value="${profile.city}"></td>
                  </tr>
                  <tr>
                      <td><p class="text-right">Country:</p></td>
                      <td><input type="text" name="country" class="span4" style="margin-left:10px" value="${profile.country}"></td>
                  </tr>
                  <tr>
                      <td></td>
                      <td><button class="btn btn-large btn-primary pull-right" type="submit">Update</button></td>
                  </tr>
              </table>
            </form>
        </div>
<!--        <div class="form-signin pull-left" style="width:300px">
            <form method="POST">
               <h2 class="form-signin-heading">Change Password</h2>
               <input type="text" id="op" name="username" class="input-block-level" placeholder="Old Password">
               <input type="password" id="p1" name="password" class="input-block-level" placeholder="Password">
               <input type="password" id="p2" name="ver_pass" class="input-block-level" placeholder="Verify Password">
               <button class="btn btn-large btn-primary pull-right" type="submit">Change</button>
           </form>
        </div>-->
    </div>
   </body>
</html>
