
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
    <div class="container">
        <div class="hero-unit" style="background: url(img/indexbg.jpg);">
            <h1>This is MyPizza!</h1>
            <p>
                How do you like Pisa? What? You've never been there? <br/>Well, now you can eat pizza instead!
            </p>
            <p><a class="btn btn-primary btn-large" href="shop?action=loadpizza">Buy MyPizza now &raquo;</a></p>
        </div>
        <div class="container-fluid">
            <div class="row-fluid">
                <div class="span8">
                    <h3>SUMMER MENU </h3>
                    <h2>New Pizza------Curry Chicken</h2>
                    <p>
                        <img class='img-rounded' src="http://www.pyrobeijing.com/sites/default/files/styles/colorbox/public/Curry-Chicken-Pizza%281000PXx667PX%29_0.JPG?&photo=true"
                             style='width:550px;height:350px;'
                    </p>
                    <p>Tomato base, mozzarella, curried chicken, and red onion; then topped with cilantro, spiced peanut bits and drizzled with yogurt.</p>
                    <p>Price: 95kr</p>
                    <p>
                        <input type="number" class="span1" style="margin-top:8px"value="1">
                        <a href="#" class="btn btn-primary">Add to Cart &raquo;</a>
                    </p>
                </div>
                <div class="span4">
                    <h3>MyPizza News</h3>
                    <p>
                        Welcome to MyPizza's online ordering system! <br/> Order any day of the week, 10am until midnight.<br/> Our minimum order for delivery is 95kr.<br/><br/>
                        If you have any questions about your order, please contact us @0706175217<br/><br/>
                        Other Useful Info:<br/>
                        We'll call to confirm any orders over 300kr.<br/><br/>
                    </p>
                    <h4> FREE PIZZA UPSIZE </h4>
                    <p>On Friday afternoon, between 14:00-17:00, you can upsize your pizza for free!</p>
                </div>
            </div>
        </div>
    </div>
    <%@ include file="footer.jsp"%>
  </body>
</html>
