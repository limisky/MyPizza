
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>MyPizza | Welcome</title>
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
        <div class="hero-unit">
            <h1><%=request.getParameter("username")%>,welcome!</h1>
            <p>You can place your order after you login.<br>We strongly recommend you complete your user profile at first to avoid typing the same information everytime.</p>
            <p><a href="login.jsp" class="btn btn-primary btn-large">Login Now &raquo;</a></p>
      </div>
    </div>
  </body>
</html>
