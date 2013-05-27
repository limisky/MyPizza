
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
    <%@ include file="header.jsp"%>
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
