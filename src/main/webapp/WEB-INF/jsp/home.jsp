<%@ page import="jdk.nashorn.internal.runtime.Context" %>
<%@ page import="org.springframework.web.context.support.HttpRequestHandlerServlet" %>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: dorsa
  Date: 12/3/16
  Time: 9:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
    <%--External sources--%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <%--<link href = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" rel = "stylesheet">--%>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src = "https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <%--<script src = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>--%>
    <%--Internal sources--%>
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
    <%--<script src="<c:url value="/resources/js/jquery-3.1.1.min.js" />"></script>--%>
    <script src="<c:url value="/resources/js/main.js" />"></script>
    <script src="<c:url value="/resources/bootstrap-3.3.7/dist/js/bootstrap.min.js"/>" type="text/javascript"></script>
    <link href="<c:url value="/resources/bootstrap-3.3.7/dist/css/bootstrap.min.css"/>" rel="stylesheet">


</head>
<body>
<header>
    <div class="header">
        <div class="col-md-3 ">
            <form class="navbar-form" role="search">
                <div class="input-group add-on">
                    <input type="text" class="form-control" placeholder="Search" name="srch-term" id="srch-term">
                    <div class="input-group-btn">
                        <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
                    </div>
                </div>
            </form>
        </div>
        <input type="button" class="btn btn-default login" value="Login">
    </div>
</header>
<%--navbar--%>
<div class="container-navbar">
    <nav class="navbar navbar-default">
        <div class="navbar-header">
            <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".js-navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Site name</a>
        </div>
        <div class="collapse navbar-collapse js-navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="dropdown mega-dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Men <span class="caret"></span></a>
                    <ul class="dropdown-menu mega-dropdown-menu">
                        <li class="col-sm-3">
                            <ul>
                                <li class="dropdown-header">Men Collection</li>
                                <div id="menCollection" class="carousel slide" data-ride="carousel">
                                    <div class="carousel-inner">
                                        <div class="item active">
                                            <a href="#"><img
                                                    src="http://placehold.it/254x150/ff3546/f5f5f5/&text=New+Collection"
                                                    class="img-responsive" alt="product 1"></a>
                                            <h4>
                                                <small>Summer dress floral prints</small>
                                            </h4>
                                            <button class="btn btn-primary" type="button">49,99 €</button>
                                            <button href="#" class="btn btn-default" type="button"><span
                                                    class="glyphicon glyphicon-heart"></span> Add to Wishlist
                                            </button>
                                        </div><!-- End Item -->
                                        <div class="item">
                                            <a href="#"><img
                                                    src="http://placehold.it/254x150/3498db/f5f5f5/&text=New+Collection"
                                                    class="img-responsive" alt="product 2"></a>
                                            <h4>
                                                <small>Gold sandals with shiny touch</small>
                                            </h4>
                                            <button class="btn btn-primary" type="button">9,99 €</button>
                                            <button href="#" class="btn btn-default" type="button"><span
                                                    class="glyphicon glyphicon-heart"></span> Add to Wishlist
                                            </button>
                                        </div><!-- End Item -->
                                        <div class="item">
                                            <a href="#"><img
                                                    src="http://placehold.it/254x150/2ecc71/f5f5f5/&text=New+Collection"
                                                    class="img-responsive" alt="product 3"></a>
                                            <h4>
                                                <small>Denin jacket stamped</small>
                                            </h4>
                                            <button class="btn btn-primary" type="button">49,99 €</button>
                                            <button href="#" class="btn btn-default" type="button"><span
                                                    class="glyphicon glyphicon-heart"></span> Add to Wishlist
                                            </button>
                                        </div><!-- End Item -->
                                    </div><!-- End Carousel Inner -->
                                    <!-- Controls -->
                                    <a class="left carousel-control" href="#menCollection" role="button"
                                       data-slide="prev">
                                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                        <span class="sr-only">Previous</span>
                                    </a>
                                    <a class="right carousel-control" href="#menCollection" role="button"
                                       data-slide="next">
                                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                        <span class="sr-only">Next</span>
                                    </a>
                                </div><!-- /.carousel -->
                                <li class="divider"></li>
                                <li><a href="#">View all Collection <span
                                        class="glyphicon glyphicon-chevron-right pull-right"></span></a></li>
                            </ul>
                        </li>
                        <li class="col-sm-3">
                            <ul>
                                <li class="dropdown-header">Features</li>
                                <li><a href="#">Auto Carousel</a></li>
                                <li><a href="#">Carousel Control</a></li>
                                <li><a href="#">Left & Right Navigation</a></li>
                                <li><a href="#">Four Columns Grid</a></li>
                                <li class="divider"></li>
                                <li class="dropdown-header">Fonts</li>
                                <li><a href="#">Glyphicon</a></li>
                                <li><a href="#">Google Fonts</a></li>
                            </ul>
                        </li>
                        <li class="col-sm-3">
                            <ul>
                                <li class="dropdown-header">Plus</li>
                                <li><a href="#">Navbar Inverse</a></li>
                                <li><a href="#">Pull Right Elements</a></li>
                                <li><a href="#">Coloured Headers</a></li>
                                <li><a href="#">Primary Buttons & Default</a></li>
                            </ul>
                        </li>
                        <li class="col-sm-3">
                            <ul>
                                <li class="dropdown-header">Much more</li>
                                <li><a href="#">Easy to Customize</a></li>
                                <li><a href="#">Calls to action</a></li>
                                <li><a href="#">Custom Fonts</a></li>
                                <li><a href="#">Slide down on Hover</a></li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li class="dropdown mega-dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Women <span class="caret"></span></a>
                    <ul class="dropdown-menu mega-dropdown-menu">
                        <li class="col-sm-3">
                            <ul>
                                <li class="dropdown-header">Features</li>
                                <li><a href="#">Auto Carousel</a></li>
                                <li><a href="#">Carousel Control</a></li>
                                <li><a href="#">Left & Right Navigation</a></li>
                                <li><a href="#">Four Columns Grid</a></li>
                                <li class="divider"></li>
                                <li class="dropdown-header">Fonts</li>
                                <li><a href="#">Glyphicon</a></li>
                                <li><a href="#">Google Fonts</a></li>
                            </ul>
                        </li>
                        <li class="col-sm-3">
                            <ul>
                                <li class="dropdown-header">Plus</li>
                                <li><a href="#">Navbar Inverse</a></li>
                                <li><a href="#">Pull Right Elements</a></li>
                                <li><a href="#">Coloured Headers</a></li>
                                <li><a href="#">Primary Buttons & Default</a></li>
                            </ul>
                        </li>
                        <li class="col-sm-3">
                            <ul>
                                <li class="dropdown-header">Much more</li>
                                <li><a href="#">Easy to Customize</a></li>
                                <li><a href="#">Calls to action</a></li>
                                <li><a href="#">Custom Fonts</a></li>
                                <li><a href="#">Slide down on Hover</a></li>
                            </ul>
                        </li>
                        <li class="col-sm-3">
                            <ul>
                                <li class="dropdown-header">Women Collection</li>
                                <div id="womenCollection" class="carousel slide" data-ride="carousel">
                                    <div class="carousel-inner">
                                        <div class="item active">
                                            <a href="#"><img
                                                    src="http://placehold.it/254x150/3498db/f5f5f5/&text=New+Collection"
                                                    class="img-responsive" alt="product 1"></a>
                                            <h4>
                                                <small>Summer dress floral prints</small>
                                            </h4>
                                            <button class="btn btn-primary" type="button">49,99 €</button>
                                            <button href="#" class="btn btn-default" type="button"><span
                                                    class="glyphicon glyphicon-heart"></span> Add to Wishlist
                                            </button>
                                        </div><!-- End Item -->
                                        <div class="item">
                                            <a href="#"><img
                                                    src="http://placehold.it/254x150/ff3546/f5f5f5/&text=New+Collection"
                                                    class="img-responsive" alt="product 2"></a>
                                            <h4>
                                                <small>Gold sandals with shiny touch</small>
                                            </h4>
                                            <button class="btn btn-primary" type="button">9,99 €</button>
                                            <button href="#" class="btn btn-default" type="button"><span
                                                    class="glyphicon glyphicon-heart"></span> Add to Wishlist
                                            </button>
                                        </div><!-- End Item -->
                                        <div class="item">
                                            <a href="#"><img
                                                    src="http://placehold.it/254x150/2ecc71/f5f5f5/&text=New+Collection"
                                                    class="img-responsive" alt="product 3"></a>
                                            <h4>
                                                <small>Denin jacket stamped</small>
                                            </h4>
                                            <button class="btn btn-primary" type="button">49,99 €</button>
                                            <button href="#" class="btn btn-default" type="button"><span
                                                    class="glyphicon glyphicon-heart"></span> Add to Wishlist
                                            </button>
                                        </div><!-- End Item -->
                                    </div><!-- End Carousel Inner -->
                                    <!-- Controls -->
                                    <a class="left carousel-control" href="#womenCollection" role="button"
                                       data-slide="prev">
                                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                        <span class="sr-only">Previous</span>
                                    </a>
                                    <a class="right carousel-control" href="#womenCollection" role="button"
                                       data-slide="next">
                                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                        <span class="sr-only">Next</span>
                                    </a>
                                </div><!-- /.carousel -->
                                <li class="divider"></li>
                                <li><a href="#">View all Collection <span
                                        class="glyphicon glyphicon-chevron-right pull-right"></span></a></li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li><a href="#">Store locator</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">My
                        account <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="#">Action</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li class="divider"></li>
                        <li><a href="#">Separated link</a></li>
                    </ul>
                </li>
                <li><a href="#">My cart (0) items</a></li>
            </ul>
        </div><!-- /.nav-collapse -->
    </nav>
</div>
<%--content container--%>
<div class="container">
    <%-- Start Carousel--%>
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <div class="item active">
                    <img src="/edustry/resources/img/architecture1.jpg">
                    <div class="carousel-caption">
                        <h3>
                            Headline</h3>
                        <p>
                            Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod
                            tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem
                            ipsum dolor sit amet, consetetur sadipscing elitr.</p>
                    </div>
                </div>
                <!-- End Item -->
                <div class="item">
                    <img src="/edustry/resources/img/architecture2.jpg">
                    <div class="carousel-caption">
                        <h3>
                            Headline</h3>
                        <p>
                            Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod
                            tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem
                            ipsum dolor sit amet, consetetur sadipscing elitr.</p>
                    </div>
                </div>
                <!-- End Item -->
                <div class="item">
                    <img src="http://placehold.it/1200x400/2980b9/ffffff&text=Portfolio">
                    <div class="carousel-caption">
                        <h3>
                            Headline</h3>
                        <p>
                            Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod
                            tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem
                            ipsum dolor sit amet, consetetur sadipscing elitr.</p>
                    </div>
                </div>
                <!-- End Item -->
                <div class="item">
                    <img src="http://placehold.it/1200x400/8e44ad/ffffff&text=Services">
                    <div class="carousel-caption">
                        <h3>
                            Headline</h3>
                        <p>
                            Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod
                            tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem
                            ipsum dolor sit amet, consetetur sadipscing elitr.</p>
                    </div>
                </div>
                <!-- End Item -->
            </div>
            <!-- End Carousel Inner -->
            <ul class="nav nav-pills nav-justified">
                <li data-target="#myCarousel" data-slide-to="0" class="active"><a href="#">About<small>Lorem
                    ipsum dolor sit</small></a></li>
                <li data-target="#myCarousel" data-slide-to="1"><a href="#">Projects<small>Lorem ipsum
                    dolor sit</small></a></li>
                <li data-target="#myCarousel" data-slide-to="2"><a href="#">Portfolio<small>Lorem ipsum
                    dolor sit</small></a></li>
                <li data-target="#myCarousel" data-slide-to="3"><a href="#">Services<small>Lorem ipsum
                    dolor sit</small></a></li>
            </ul>
        </div>
        <!-- End Carousel -->
</div>
<%--footer--%>
<div id="footer">
    <div class="container">
        <div class="row">
            <h3 class="footertext">About Us:</h3>
            <br>
            <div class="col-md-4">
                <center>
                    <%--<img src="http://oi60.tinypic.com/w8lycl.jpg" class="img-circle" alt="the-brains">--%>
                    <br>
                    <h4 class="footertext">Programmer</h4>
                    <p class="footertext">You can thank all the crazy programming here to this guy.<br>
                </center>
            </div>
            <div class="col-md-4">
                <center>
                    <%--<img src="http://oi60.tinypic.com/2z7enpc.jpg" class="img-circle" alt="...">--%>
                    <br>
                    <h4 class="footertext">Artist</h4>
                    <p class="footertext">All the images here are hand drawn by this man.<br>
                </center>
            </div>
            <div class="col-md-4">
                <center>
                    <%--<img src="http://oi61.tinypic.com/307n6ux.jpg" class="img-circle" alt="...">--%>
                    <br>
                    <h4 class="footertext">Designer</h4>
                    <p class="footertext">This pretty site and the copy it holds are all thanks to this guy.<br>
                </center>
            </div>
        </div>
        <div class="row">
            <p>
                <center><a href="#">Contact Stuff Here</a>
            <p class="footertext">Copyright 2014</p></center></p>
        </div>
    </div>
</div>
</body>
</html>
