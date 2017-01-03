<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: dorsa
  Date: 12/21/16
  Time: 1:20 PM
  To change this template use File | Settings | File Templates.
--%>

<html>
<head>
    <%--External sources--%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <%--<link href = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" rel = "stylesheet">--%>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src = "https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <%--<script src = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>--%>
    <%--Internal sources--%>

    <%--<script src="<c:url value="/resources/js/jquery-3.1.1.min.js" />"></script>--%>
    <script src="<c:url value="/resources/js/main.js" />"></script>
    <script src="<c:url value="/resources/bootstrap-3.3.7/dist/js/bootstrap.min.js"/>" type="text/javascript"></script>
    <link href="<c:url value="/resources/bootstrap-3.3.7/dist/css/bootstrap.min.css"/>" rel="stylesheet">
        <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
</head>
<body>
<header>
    <div class="header">
        <div class="col-md-3 search-box">
            <form:form class="navbar-form" role="search" method="get" action="search" commandName="home">
                <div class="input-group add-on">
                    <input type="text" class="form-control" placeholder="<spring:message code="header.search" text="header.search"/>" name="srch" id="srch-term" onkeydown="if (event.keyCode == 13) window.location = 'search';">
                    <div class="input-group-btn">
                        <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
                    </div>
                </div>
            </form:form>
        </div>
        <input type="button" onclick="location.href='login'" class="btn btn-default login" value="<spring:message code="header.login"/>">
    </div>
</header>
<%--navbar--%>
<div class="container-navbar" style="direction: rtl">
    <nav class="navbar navbar-default">
        <div class="navbar-header navbar-right">
            <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".js-navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/edustry"><spring:message code="site.name" text="site.name"/> </a>
        </div>
        <div class="collapse navbar-collapse js-navbar-collapse pull-right">
            <ul class="nav navbar-nav">
                <li class="dropdown mega-dropdown navbar-right">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <spring:message code="menu.services"/>
                        <%--<span class="caret"></span>--%>
                    </a>
                    <ul class="dropdown-menu mega-dropdown-menu">
                        <%--<li class="col-sm-3">
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
                        </li>--%>
                        <li class="col-sm-3">
                            <ul>
                                <li class="dropdown-header">حرفه</li>
                                <li><a href="#">کابینت</a></li>
                                <li><a href="#">کاغذ دیواری</a></li>
                                <li><a href="#">تعمیرکار</a></li>
                                <li><a href="#">تعمیرات دکوراسیون</a></li>
                                <li class="divider"></li>
                                <li class="dropdown-header">صنف</li>
                                <li><a href="#">طراحی</a></li>
                                <li><a href="#">صنایع چوب</a></li>
                            </ul>
                        </li>
                        <%--<li class="col-sm-3">
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
                        </li>--%>
                    </ul>
                </li>
                <li class="dropdown mega-dropdown navbar-right">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <spring:message code="menu.products"/>
                        <%--<span class="caret"></span>--%>
                    </a>
                    <ul class="dropdown-menu mega-dropdown-menu">
                        <li class="col-sm-3">
                            <ul>
                                <li class="dropdown-header">لوازم خانگی</li>
                                <li><a href="#">یخچال</a></li>
                                <li><a href="#">ماشین لباسشویی</a></li>
                                <li><a href="#">گاز</a></li>
                                <li><a href="#">جاروبرقی</a></li>
                                <li class="divider"></li>
                                <%--<li class="dropdown-header">Fonts</li>
                                <li><a href="#">Glyphicon</a></li>
                                <li><a href="#">Google Fonts</a></li>--%>
                            </ul>
                        </li>
                        <li class="col-sm-3">
                            <ul>
                                <li class="dropdown-header">کالای دیجیتال</li>
                                <li><a href="#">رایانه</a></li>
                                <li><a href="#">تلفن همراه</a></li>
                                <li><a href="#">لوازم جانبی</a></li>
                                <li><a href="#">ماشین‌های اداری</a></li>
                            </ul>
                        </li>
                        <%--<li class="col-sm-3">
                            <ul>
                                <li class="dropdown-header">Much more</li>
                                <li><a href="#">Easy to Customize</a></li>
                                <li><a href="#">Calls to action</a></li>
                                <li><a href="#">Custom Fonts</a></li>
                                <li><a href="#">Slide down on Hover</a></li>
                            </ul>
                        </li>--%>
                        <%--<li class="col-sm-3">
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
                        </li>--%>
                    </ul>
                </li>
                <li><a href="about-us"><spring:message code="menu.about.us" text="about us"/></a></li>
                <li><a href="contact-us"><spring:message code="menu.contact.us" text="contact us"/></a></li>
            </ul>
            <%--<ul class="nav navbar-nav navbar-right">
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
            </ul>--%>
        </div><!-- /.nav-collapse -->
    </nav>
</div>
</body>
</html>
