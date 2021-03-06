<%--
  Created by IntelliJ IDEA.
  User: Levon
  Date: 26.01.2021
  Time: 17:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-16">
    <title>կինոթատրոն</title>
    <!-- for-mobile-apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="One Movies Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <!-- //for-mobile-apps -->
    <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="../css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <link rel="stylesheet" href="../css/contactstyle.css" type="text/css" media="all"/>
    <link rel="stylesheet" href="../css/faqstyle.css" type="text/css" media="all"/>
    <link href="../css/single.css" rel='stylesheet' type='text/css'/>
    <link href="../css/medile.css" rel='stylesheet' type='text/css'/>
    <!-- banner-slider -->
    <link href="../css/jquery.slidey.min.css" rel="stylesheet">
    <!-- //banner-slider -->
    <!-- pop-up -->
    <link href="../css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- //pop-up -->
    <!-- font-awesome icons -->
    <link rel="stylesheet" href="../css/font-awesome.min.css"/>
    <!-- //font-awesome icons -->
    <!-- js -->
    <script type="text/javascript" src="../js/jquery-2.1.4.min.js"></script>
    <!-- //js -->
    <!-- banner-bottom-plugin -->
    <link href="../css/owl.carousel.css" rel="stylesheet" type="text/css" media="all">
    <script src="../js/owl.carousel.js"></script>
    <script>
        $(document).ready(function () {
            $("#owl-demo").owlCarousel({

                autoPlay: 3000, //Set AutoPlay to 3 seconds

                items: 5,
                itemsDesktop: [640, 4],
                itemsDesktopSmall: [414, 3]

            });

        });
    </script>
    <!-- //banner-bottom-plugin -->
    <link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700italic,700,400italic,300italic,300'
          rel='stylesheet' type='text/css'>
    <!-- start-smoth-scrolling -->
    <script type="text/javascript" src="../js/move-top.js"></script>
    <script type="text/javascript" src="../js/easing.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function ($) {
            $(".scroll").click(function (event) {
                event.preventDefault();
                $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
            });
        });
    </script>
    <!-- start-smoth-scrolling -->
</head>

<body>
<!-- header -->
<div class="header">
    <div class="container">
        <div class="w3layouts_logo">
            <a href="index"><h1>12<span>կինոթատրոն</span></h1></a>
        </div>
        <div class="w3_search">
            <form action="SearchServlet" method="get">
                <input type="text" name="movieName" placeholder="Փնտրել կայքում" required="movieName">
                <input type="submit" value="Որոնել">
            </form>
        </div>
        <div class="w3l_sign_in_register">
            <ul>
                <li><i class="fa fa-phone" aria-hidden="true"></i> (+374) 98-50-26-09</li>
<%--                <c:if test="${user == null}">--%>
                    <c:choose>
                        <c:when test="${user == null}">
                            <li><a href="" data-toggle="modal" data-target="#myModal">մուտք</a></li>
                        </c:when>
                        <c:when test="${user != null}">
                            Բարև ${user.name}
                            <li><a href="existServlet" >Ելք</a></li>
                        </c:when>
                    </c:choose>
<%--                </c:if>--%>
            </ul>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!-- //header -->
<!-- bootstrap-pop-up -->

<div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                Մուտք
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
            </div>
            <section>
                <div class="modal-body">
                    <div class="w3_login_module">
                        <div class="module form-module">
                            <div class="toggle"><i class="fa fa-times fa-pencil"></i>
                                <div class="tooltip">Գրանցվել</div>
                            </div>
                            <div class="form">
                                <h3>Մուտք</h3>
                                <form action="loginServlet" method="post">
                                    <input type="email" name="email" placeholder="Էլ․ հասցե" required="">
                                    <input type="password" name="password" placeholder="Գաղտնաբառ" required="">
                                    <input type="submit" value="Մուտք">
                                </form>
                            </div>
                            <div class="form">
                                <%--                                <h3>Ստողծել նոր էջ</h3>--%>
                                <form action="registerServlet" method="post">
                                    <input type="text" name="name" placeholder="Անուն">
                                    <input type="text" name="surName" placeholder="Ազգանուն">
                                    <input type="email" name="email" placeholder="Էլ․ հասցե">
                                    <input type="password" name="password" placeholder="Գաղտնաբառ">
                                    <input type="submit" value="Գրանցվել">
                                </form>
                            </div>
                            <div class="cta"><a href="../#">Մոռացել եմ գաղտնաբառը</a></div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
</div>
<script>
    $('.toggle').click(function () {
        // Switches the Icon
        $(this).children('i').toggleClass('fa-pencil');
        // Switches the forms
        $('.form').animate({
            height: "toggle",
            'padding-top': 'toggle',
            'padding-bottom': 'toggle',
            opacity: "toggle"
        }, "slow")
        const signInRegister = $('section div .tooltip').hide();
        const newText = signInRegister.text() === "Գրանցվել" ? "Մուտք" : "Գրանցվել";
        signInRegister.text(newText).show(700);

    });
</script>
<!-- //bootstrap-pop-up -->
<!-- nav -->
<div class="movies_nav">
    <div class="container">
        <nav class="navbar navbar-default">
            <div class="navbar-header navbar-left">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
                <nav>
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="index">Գլխավոր</a></li>
                        <li class="dropdown">
                            <a href="../#" class="dropdown-toggle" data-toggle="dropdown">Ժանրեր<b
                                    class="caret"></b></a>
                            <ul class="dropdown-menu multi-column columns-3">
                                <li>
                                    <div class="col-sm-4">
                                        <ul class="multi-column-dropdown">
                                            <li><a href="genresServlet?genres=Action">Մարտաֆիլմ</a></li>
                                            <li><a href="genresServlet?genres=Crime">Կրիմինալ</a></li>
                                            <li><a href="genresServlet?genres=Family">Ընտանեկան</a></li>
                                            <li><a href="genresServlet?genres=Horror">Սարսափ</a></li>
                                            <li><a href="genresServlet?genres=Romance">Ռոմանտիկ</a></li>
                                            <li><a href="genresServlet?genres=War">Պատերազմական</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-sm-4">
                                        <ul class="multi-column-dropdown">
                                            <li><a href="genresServlet?genres=Adventure">Արկածային</a></li>
                                            <li><a href="genresServlet?genres=Comedy">Հումորային</a></li>
                                            <li><a href="genresServlet?genres=Psychological">Հոգեբանական</a></li>
                                            <li><a href="genresServlet?genres=Fantasy">Ֆանտաստիկ</a></li>
                                            <li><a href="genresServlet?genres=Thriller">Թրիլլեր</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-sm-4">
                                        <ul class="multi-column-dropdown">
                                            <li><a href="genresServlet?genres=Animation">Անիմացիոն</a></li>
                                            <li><a href="genresServlet?genres=Drama">Դրամմա</a></li>
                                            <li><a href="genresServlet?genres=History">Պատմական</a></li>
                                            <li><a href="genresServlet?genres=Documentary">Փաստավավերագրական</a></li>
                                        </ul>
                                    </div>
                                    <div class="clearfix"></div>
                                </li>
                            </ul>
                        </li>
                        <li><a href="../WEB-INF/series.jsp">TV - Սերիալներ</a></li>
                        <li><a href="../WEB-INF/news.jsp">Նորություններ</a></li>
                        <%--                        <li class="dropdown">--%>
                        <%--                            <a href="../#" class="dropdown-toggle" data-toggle="dropdown">Երկիր <b class="caret"></b></a>--%>
                        <%--                            <ul class="dropdown-menu multi-column columns-3">--%>
                        <%--                                <li>--%>
                        <%--                                    <div class="col-sm-4">--%>
                        <%--                                        <ul class="multi-column-dropdown">--%>
                        <%--                                            <li><a href="genresServlet">Հայաստան</a></li>--%>
                        <%--                                            <li><a href="genresServlet">Ռուսաստան</a></li>--%>
                        <%--                                            <li><a href="genresServlet">Ճապոնիա</a></li>--%>
                        <%--                                            <li><a href="genresServlet">Չինաստան</a></li>--%>
                        <%--                                        </ul>--%>
                        <%--                                    </div>--%>
                        <%--                                    <div class="col-sm-4">--%>
                        <%--                                        <ul class="multi-column-dropdown">--%>
                        <%--                                            <li><a href="genresServlet">Հնդկաստան</a></li>--%>
                        <%--                                            <li><a href="genresServlet">Բրազիլիա</a></li>--%>
                        <%--                                            <li><a href="genresServlet">Միացյալ Նահանգներ</a></li>--%>
                        <%--                                            <li><a href="genresServlet">Կորեա</a></li>--%>
                        <%--                                        </ul>--%>
                        <%--                                    </div>--%>
                        <%--                                    <div class="col-sm-4">--%>
                        <%--                                        <ul class="multi-column-dropdown">--%>
                        <%--                                            <li><a href="genresServlet">Գերմանիա</a></li>--%>
                        <%--                                            <li><a href="genresServlet">Ֆրանսիա</a></li>--%>
                        <%--                                            <li><a href="genresServlet">Իտալիա</a></li>--%>
                        <%--                                            <li><a href="genresServlet">Մեծ Բրիտանիա</a></li>--%>
                        <%--                                        </ul>--%>
                        <%--                                    </div>--%>
                        <%--                                    <div class="clearfix"></div>--%>
                        <%--                                </li>--%>
                        <%--                            </ul>--%>
                        <%--                        </li>--%>
                        <%--                        <li><a href="../WEB-INF/list.jsp">Ա - Ֆ լիստ</a></li>--%>
                    </ul>
                </nav>
            </div>
        </nav>
    </div>
</div>
<!-- //nav -->
<!-- banner -->
<div id="slidey" style="display:none;">
    <ul>
        <li><img src="../images/5.jpg" alt=" ">
            <p class='title'>Tarzan</p>
            <p class='description'> Tarzan, having acclimated to life in London, is called back to his former home in
                the jungle to investigate the activities at a mining encampment.</p></li>
        <li><img src="../images/2.jpg" alt=" ">
            <p class='title'>Maximum Ride</p>
            <p class='description'>Six children, genetically cross-bred with avian DNA, take flight around the country
                to discover their origins. Along the way, their mysterious past is ...</p></li>
        <li><img src="../images/3.jpg" alt=" ">
            <p class='title'>Independence</p>
            <p class='description'>The fate of humanity hangs in the balance as the U.S. President and citizens decide
                if these aliens are to be trusted ...or feared.</p></li>
        <li><img src="../images/4.jpg" alt=" ">
            <p class='title'>Central Intelligence</p>
            <p class='description'>Bullied as a teen for being overweight, Bob Stone (Dwayne Johnson) shows up to his
                high school reunion looking fit and muscular. Claiming to be on a top-secret ...</p></li>
        <li><img src="../images/6.jpg" alt=" ">
            <p class='title'>Ice Age</p>
            <p class='description'>In the film's epilogue, Scrat keeps struggling to control the alien ship until it
                crashes on Mars, destroying all life on the planet.</p></li>
        <li><img src="../images/7.jpg" alt=" ">
            <p class='title'>X - Man</p>
            <p class='description'>In 1977, paranormal investigators Ed (Patrick Wilson) and Lorraine Warren come out of
                a self-imposed sabbatical to travel to Enfield, a borough in north ...</p></li>
    </ul>
</div>
<script src="../js/jquery.slidey.js"></script>
<script src="../js/jquery.dotdotdot.min.js"></script>
<script type="text/javascript">
    $("#slidey").slidey({
        interval: 8000,
        listCount: 5,
        autoplay: false,
        showList: true
    });
    $(".slidey-list-description").dotdotdot();
</script>
<!-- //banner -->
<!-- banner-bottom -->
<div class="banner-bottom">
    <div class="container">
        <div class="w3_agile_banner_bottom_grid">
            <div id="owl-demo" class="owl-carousel owl-theme">
                <c:forEach var="movie" items="${descMovie}">
                    <div class="item">
                        <div class="w3l-movie-gride-agile w3l-movie-gride-agile1">
                            <a href="moviePage?idMovie=${movie.id}" class="hvr-shutter-out-horizontal"><img
                                    src="../images/m${movie.id}.jpg" title="album-name" class="img-responsive" alt=" "/>
                                <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
                            </a>
                            <div class="mid-1 agileits_w3layouts_mid_1_home">
                                <div class="w3l-movie-text">
                                    <h6><a href="moviePage?idMovie=${movie.id}">${movie.name}</a></h6>
                                </div>
                                <div class="mid-2 agile_mid_2_home">
                                    <p>${movie.productYear}</p>
                                    <div class="block-stars">
                                        <ul class="w3l-ratings">
                                            <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                            <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                            <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                            <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                            <li><a href="../#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            <div class="ribben">
                                <p>Նոր</p>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>
<!-- //banner-bottom -->
<div class="general_social_icons">
    <nav class="social">
        <ul>
            <li class="w3_twitter"><a href="../#">Twitter <i class="fa fa-twitter"></i></a></li>
            <li class="w3_facebook"><a href="../#">Facebook <i class="fa fa-facebook"></i></a></li>
            <li class="w3_dribbble"><a href="../#">Dribbble <i class="fa fa-dribbble"></i></a></li>
            <li class="w3_g_plus"><a href="../#">Google+ <i class="fa fa-google-plus"></i></a></li>
        </ul>
    </nav>
</div>
<!-- general -->
<div class="general">
    <h4 class="latest-text w3_latest_text">Առաջարկվող ֆիլմեր</h4>
    <div class="container">
        <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
            <ul id="myTab" class="nav nav-tabs" role="tablist">
<%--                <li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">Սիրված</a></li>--%>
                <li role="presentation"><a href="#profile" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile" aria-expanded="false">Հաճախակի դիտված</a></li>
                <li role="presentation"><a href="#rating" id="rating-tab" role="tab" data-toggle="tab" aria-controls="rating" aria-expanded="true">Վարկանիշային</a></li>
                <li role="presentation"><a href="#imdb" role="tab" id="imdb-tab" data-toggle="tab" aria-controls="imdb" aria-expanded="false">Նոր </a></li>
            </ul>
            <div id="myTabContent" class="tab-content">
                <div role="tabpanel" class="tab-pane fade active in" id="home" aria-labelledby="home-tab">
                    <div class="w3_agile_featured_movies">
                        <div class="col-md-2 w3l-movie-gride-agile">
                            <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m15.jpg"
                                                                                          title="album-name"
                                                                                          class="img-responsive"
                                                                                          alt=" "/>
                                <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
                            </a>
                            <div class="mid-1 agileits_w3layouts_mid_1_home">
                                <div class="w3l-movie-text">
                                    <h6><a href="single.html">God’s Compass</a></h6>
                                </div>
                                <div class="mid-2 agile_mid_2_home">
                                    <p>2016</p>
                                    <div class="block-stars">
                                        <ul class="w3l-ratings">
                                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            <div class="ribben">
                                <p>NEW</p>
                            </div>
                        </div>
                        <div class="col-md-2 w3l-movie-gride-agile">
                            <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m2.jpg"
                                                                                          title="album-name"
                                                                                          class="img-responsive"
                                                                                          alt=" "/>
                                <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
                            </a>
                            <div class="mid-1 agileits_w3layouts_mid_1_home">
                                <div class="w3l-movie-text">
                                    <h6><a href="single.html">Bad Moms</a></h6>
                                </div>
                                <div class="mid-2 agile_mid_2_home">
                                    <p>2016</p>
                                    <div class="block-stars">
                                        <ul class="w3l-ratings">
                                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            <div class="ribben">
                                <p>NEW</p>
                            </div>
                        </div>
                        <div class="col-md-2 w3l-movie-gride-agile">
                            <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m5.jpg"
                                                                                          title="album-name"
                                                                                          class="img-responsive"
                                                                                          alt=" "/>
                                <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
                            </a>
                            <div class="mid-1 agileits_w3layouts_mid_1_home">
                                <div class="w3l-movie-text">
                                    <h6><a href="single.html">Jason Bourne</a></h6>
                                </div>
                                <div class="mid-2 agile_mid_2_home">
                                    <p>2016</p>
                                    <div class="block-stars">
                                        <ul class="w3l-ratings">
                                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a>
                                            </li>
                                            <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            <div class="ribben">
                                <p>NEW</p>
                            </div>
                        </div>
                        <div class="col-md-2 w3l-movie-gride-agile">
                            <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m16.jpg"
                                                                                          title="album-name"
                                                                                          class="img-responsive"
                                                                                          alt=" "/>
                                <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
                            </a>
                            <div class="mid-1 agileits_w3layouts_mid_1_home">
                                <div class="w3l-movie-text">
                                    <h6><a href="single.html">Rezort</a></h6>
                                </div>
                                <div class="mid-2 agile_mid_2_home">
                                    <p>2016</p>
                                    <div class="block-stars">
                                        <ul class="w3l-ratings">
                                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a>
                                            </li>
                                            <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            <div class="ribben">
                                <p>NEW</p>
                            </div>
                        </div>
                        <div class="col-md-2 w3l-movie-gride-agile">
                            <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m17.jpg"
                                                                                          title="album-name"
                                                                                          class="img-responsive"
                                                                                          alt=" "/>
                                <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
                            </a>
                            <div class="mid-1 agileits_w3layouts_mid_1_home">
                                <div class="w3l-movie-text">
                                    <h6><a href="single.html">Peter</a></h6>
                                </div>
                                <div class="mid-2 agile_mid_2_home">
                                    <p>2016</p>
                                    <div class="block-stars">
                                        <ul class="w3l-ratings">
                                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            <div class="ribben">
                                <p>NEW</p>
                            </div>
                        </div>
                        <div class="col-md-2 w3l-movie-gride-agile">
                            <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m18.jpg"
                                                                                          title="album-name"
                                                                                          class="img-responsive"
                                                                                          alt=" "/>
                                <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
                            </a>
                            <div class="mid-1 agileits_w3layouts_mid_1_home">
                                <div class="w3l-movie-text">
                                    <h6><a href="single.html">ISRA 88</a></h6>
                                </div>
                                <div class="mid-2 agile_mid_2_home">
                                    <p>2016</p>
                                    <div class="block-stars">
                                        <ul class="w3l-ratings">
                                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            <div class="ribben">
                                <p>NEW</p>
                            </div>
                        </div>
                        <div class="col-md-2 w3l-movie-gride-agile">
                            <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m1.jpg"
                                                                                          title="album-name"
                                                                                          class="img-responsive"
                                                                                          alt=" "/>
                                <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
                            </a>
                            <div class="mid-1 agileits_w3layouts_mid_1_home">
                                <div class="w3l-movie-text">
                                    <h6><a href="single.html">War Dogs</a></h6>
                                </div>
                                <div class="mid-2 agile_mid_2_home">
                                    <p>2016</p>
                                    <div class="block-stars">
                                        <ul class="w3l-ratings">
                                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a>
                                            </li>
                                            <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            <div class="ribben">
                                <p>NEW</p>
                            </div>
                        </div>
                        <div class="col-md-2 w3l-movie-gride-agile">
                            <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m14.jpg"
                                                                                          title="album-name"
                                                                                          class="img-responsive"
                                                                                          alt=" "/>
                                <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
                            </a>
                            <div class="mid-1 agileits_w3layouts_mid_1_home">
                                <div class="w3l-movie-text">
                                    <h6><a href="single.html">The Other Side</a></h6>
                                </div>
                                <div class="mid-2 agile_mid_2_home">
                                    <p>2016</p>
                                    <div class="block-stars">
                                        <ul class="w3l-ratings">
                                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a>
                                            </li>
                                            <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            <div class="ribben">
                                <p>NEW</p>
                            </div>
                        </div>
                        <div class="col-md-2 w3l-movie-gride-agile">
                            <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m19.jpg"
                                                                                          title="album-name"
                                                                                          class="img-responsive"
                                                                                          alt=" "/>
                                <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
                            </a>
                            <div class="mid-1 agileits_w3layouts_mid_1_home">
                                <div class="w3l-movie-text">
                                    <h6><a href="single.html">Civil War</a></h6>
                                </div>
                                <div class="mid-2 agile_mid_2_home">
                                    <p>2016</p>
                                    <div class="block-stars">
                                        <ul class="w3l-ratings">
                                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a>
                                            </li>
                                            <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            <div class="ribben">
                                <p>NEW</p>
                            </div>
                        </div>
                        <div class="col-md-2 w3l-movie-gride-agile">
                            <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m20.jpg"
                                                                                          title="album-name"
                                                                                          class="img-responsive"
                                                                                          alt=" "/>
                                <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
                            </a>
                            <div class="mid-1 agileits_w3layouts_mid_1_home">
                                <div class="w3l-movie-text">
                                    <h6><a href="single.html">The Secret Life of Pets</a></h6>
                                </div>
                                <div class="mid-2 agile_mid_2_home">
                                    <p>2016</p>
                                    <div class="block-stars">
                                        <ul class="w3l-ratings">
                                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a>
                                            </li>
                                            <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            <div class="ribben">
                                <p>NEW</p>
                            </div>
                        </div>
                        <div class="col-md-2 w3l-movie-gride-agile">
                            <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m21.jpg"
                                                                                          title="album-name"
                                                                                          class="img-responsive"
                                                                                          alt=" "/>
                                <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
                            </a>
                            <div class="mid-1 agileits_w3layouts_mid_1_home">
                                <div class="w3l-movie-text">
                                    <h6><a href="single.html">The Jungle Book</a></h6>
                                </div>
                                <div class="mid-2 agile_mid_2_home">
                                    <p>2016</p>
                                    <div class="block-stars">
                                        <ul class="w3l-ratings">
                                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a>
                                            </li>
                                            <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            <div class="ribben">
                                <p>NEW</p>
                            </div>
                        </div>
                        <div class="col-md-2 w3l-movie-gride-agile">
                            <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m22.jpg"
                                                                                          title="album-name"
                                                                                          class="img-responsive"
                                                                                          alt=" "/>
                                <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
                            </a>
                            <div class="mid-1 agileits_w3layouts_mid_1_home">
                                <div class="w3l-movie-text">
                                    <h6><a href="single.html">Assassin's Creed 3</a></h6>
                                </div>
                                <div class="mid-2 agile_mid_2_home">
                                    <p>2016</p>
                                    <div class="block-stars">
                                        <ul class="w3l-ratings">
                                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            <div class="ribben">
                                <p>NEW</p>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane fade" id="profile" aria-labelledby="profile-tab">
                    <div class="col-md-2 w3l-movie-gride-agile">
                        <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m22.jpg"
                                                                                      title="album-name"
                                                                                      class="img-responsive" alt=" "/>
                            <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
                        </a>
                        <div class="mid-1 agileits_w3layouts_mid_1_home">
                            <div class="w3l-movie-text">
                                <h6><a href="single.html">Assassin's Creed 3</a></h6>
                            </div>
                            <div class="mid-2 agile_mid_2_home">
                                <p>2016</p>
                                <div class="block-stars">
                                    <ul class="w3l-ratings">
                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                    </ul>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <div class="ribben">
                            <p>NEW</p>
                        </div>
                    </div>
                    <div class="col-md-2 w3l-movie-gride-agile">
                        <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m2.jpg"
                                                                                      title="album-name"
                                                                                      class="img-responsive" alt=" "/>
                            <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
                        </a>
                        <div class="mid-1 agileits_w3layouts_mid_1_home">
                            <div class="w3l-movie-text">
                                <h6><a href="single.html">Bad Moms</a></h6>
                            </div>
                            <div class="mid-2 agile_mid_2_home">
                                <p>2016</p>
                                <div class="block-stars">
                                    <ul class="w3l-ratings">
                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                    </ul>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <div class="ribben">
                            <p>NEW</p>
                        </div>
                    </div>
                    <div class="col-md-2 w3l-movie-gride-agile">
                        <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m9.jpg"
                                                                                      title="album-name"
                                                                                      class="img-responsive" alt=" "/>
                            <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
                        </a>
                        <div class="mid-1 agileits_w3layouts_mid_1_home">
                            <div class="w3l-movie-text">
                                <h6><a href="single.html">Central Intelligence</a></h6>
                            </div>
                            <div class="mid-2 agile_mid_2_home">
                                <p>2016</p>
                                <div class="block-stars">
                                    <ul class="w3l-ratings">
                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                    </ul>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <div class="ribben">
                            <p>NEW</p>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div role="tabpanel" class="tab-pane fade" id="rating" aria-labelledby="rating-tab">
                    <div class="col-md-2 w3l-movie-gride-agile">
                        <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m7.jpg"
                                                                                      title="album-name"
                                                                                      class="img-responsive" alt=" "/>
                            <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
                        </a>
                        <div class="mid-1 agileits_w3layouts_mid_1_home">
                            <div class="w3l-movie-text">
                                <h6><a href="single.html">Light B/t Oceans</a></h6>
                            </div>
                            <div class="mid-2 agile_mid_2_home">
                                <p>2016</p>
                                <div class="block-stars">
                                    <ul class="w3l-ratings">
                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                    </ul>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <div class="ribben">
                            <p>NEW</p>
                        </div>
                    </div>
                    <div class="col-md-2 w3l-movie-gride-agile">
                        <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m11.jpg"
                                                                                      title="album-name"
                                                                                      class="img-responsive" alt=" "/>
                            <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
                        </a>
                        <div class="mid-1 agileits_w3layouts_mid_1_home">
                            <div class="w3l-movie-text">
                                <h6><a href="single.html">X-Men</a></h6>
                            </div>
                            <div class="mid-2 agile_mid_2_home">
                                <p>2016</p>
                                <div class="block-stars">
                                    <ul class="w3l-ratings">
                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                    </ul>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <div class="ribben">
                            <p>NEW</p>
                        </div>
                    </div>
                    <div class="col-md-2 w3l-movie-gride-agile">
                        <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m8.jpg"
                                                                                      title="album-name"
                                                                                      class="img-responsive" alt=" "/>
                            <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
                        </a>
                        <div class="mid-1 agileits_w3layouts_mid_1_home">
                            <div class="w3l-movie-text">
                                <h6><a href="single.html">The BFG</a></h6>
                            </div>
                            <div class="mid-2 agile_mid_2_home">
                                <p>2016</p>
                                <div class="block-stars">
                                    <ul class="w3l-ratings">
                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
                                    </ul>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <div class="ribben">
                            <p>NEW</p>
                        </div>
                    </div>
                    <div class="col-md-2 w3l-movie-gride-agile">
                        <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m17.jpg"
                                                                                      title="album-name"
                                                                                      class="img-responsive" alt=" "/>
                            <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
                        </a>
                        <div class="mid-1 agileits_w3layouts_mid_1_home">
                            <div class="w3l-movie-text">
                                <h6><a href="single.html">Peter</a></h6>
                            </div>
                            <div class="mid-2 agile_mid_2_home">
                                <p>2016</p>
                                <div class="block-stars">
                                    <ul class="w3l-ratings">
                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                    </ul>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <div class="ribben">
                            <p>NEW</p>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div role="tabpanel" class="tab-pane fade" id="imdb" aria-labelledby="imdb-tab">
                    <div class="col-md-2 w3l-movie-gride-agile">
                        <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m22.jpg"
                                                                                      title="album-name"
                                                                                      class="img-responsive" alt=" "/>
                            <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
                        </a>
                        <div class="mid-1 agileits_w3layouts_mid_1_home">
                            <div class="w3l-movie-text">
                                <h6><a href="single.html">Assassin's Creed 3</a></h6>
                            </div>
                            <div class="mid-2 agile_mid_2_home">
                                <p>2016</p>
                                <div class="block-stars">
                                    <ul class="w3l-ratings">
                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                    </ul>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <div class="ribben">
                            <p>NEW</p>
                        </div>
                    </div>
                    <div class="col-md-2 w3l-movie-gride-agile">
                        <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m2.jpg"
                                                                                      title="album-name"
                                                                                      class="img-responsive" alt=" "/>
                            <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
                        </a>
                        <div class="mid-1 agileits_w3layouts_mid_1_home">
                            <div class="w3l-movie-text">
                                <h6><a href="single.html">Bad Moms</a></h6>
                            </div>
                            <div class="mid-2 agile_mid_2_home">
                                <p>2016</p>
                                <div class="block-stars">
                                    <ul class="w3l-ratings">
                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                    </ul>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <div class="ribben">
                            <p>NEW</p>
                        </div>
                    </div>
                    <div class="col-md-2 w3l-movie-gride-agile">
                        <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m9.jpg"
                                                                                      title="album-name"
                                                                                      class="img-responsive" alt=" "/>
                            <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
                        </a>
                        <div class="mid-1 agileits_w3layouts_mid_1_home">
                            <div class="w3l-movie-text">
                                <h6><a href="single.html">Central Intelligence</a></h6>
                            </div>
                            <div class="mid-2 agile_mid_2_home">
                                <p>2016</p>
                                <div class="block-stars">
                                    <ul class="w3l-ratings">
                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                    </ul>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <div class="ribben">
                            <p>NEW</p>
                        </div>
                    </div>
                    <div class="col-md-2 w3l-movie-gride-agile">
                        <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m10.jpg"
                                                                                      title="album-name"
                                                                                      class="img-responsive" alt=" "/>
                            <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
                        </a>
                        <div class="mid-1 agileits_w3layouts_mid_1_home">
                            <div class="w3l-movie-text">
                                <h6><a href="single.html">Don't Think Twice</a></h6>
                            </div>
                            <div class="mid-2 agile_mid_2_home">
                                <p>2016</p>
                                <div class="block-stars">
                                    <ul class="w3l-ratings">
                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                    </ul>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <div class="ribben">
                            <p>NEW</p>
                        </div>
                    </div>
                    <div class="col-md-2 w3l-movie-gride-agile">
                        <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m23.jpg"
                                                                                      title="album-name"
                                                                                      class="img-responsive" alt=" "/>
                            <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
                        </a>
                        <div class="mid-1 agileits_w3layouts_mid_1_home">
                            <div class="w3l-movie-text">
                                <h6><a href="single.html">Dead Island 2</a></h6>
                            </div>
                            <div class="mid-2 agile_mid_2_home">
                                <p>2016</p>
                                <div class="block-stars">
                                    <ul class="w3l-ratings">
                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                    </ul>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <div class="ribben">
                            <p>NEW</p>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- //general -->
<!-- Latest-tv-series -->
<div class="Latest-tv-series">
    <h4 class="latest-text w3_latest_text w3_home_popular">Ճանաչված</h4>
    <div class="container">
        <section class="slider">
            <div class="flexslider">
                <ul class="slides">
                    <li>
                        <div class="agile_tv_series_grid">
                            <div class="col-md-6 agile_tv_series_grid_left">
                                <div class="w3ls_market_video_grid1">
                                    <img src="../images/h1-1.jpg" alt=" " class="img-responsive"/>
                                    <a class="w3_play_icon" href="../#small-dialog">
                                        <span class="glyphicon glyphicon-play-circle" aria-hidden="true"></span>
                                    </a>
                                </div>
                            </div>
                            <div class="col-md-6 agile_tv_series_grid_right">
                                <p class="fexi_header">the conjuring 2</p>
                                <p class="fexi_header_para"><span class="conjuring_w3">Story Line<label>:</label></span>
                                    720p,Bluray HD Free Movie Downloads, Watch Free Movies Online with high speed Free
                                    Movie Streaming | MyDownloadTube Lorraine and Ed Warren go to north London to help a
                                    single...</p>
                                <p class="fexi_header_para"><span>Date of Release<label>:</label></span> Jun 10, 2016
                                </p>
                                <p class="fexi_header_para">
                                    <span>Genres<label>:</label> </span>
                                    <a href="genresServlet">Drama</a> |
                                    <a href="genresServlet">Adventure</a> |
                                    <a href="genresServlet">Family</a>
                                </p>
                                <p class="fexi_header_para fexi_header_para1"><span>Star Rating<label>:</label></span>
                                    <a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                    <a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                    <a href="../#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a>
                                    <a href="../#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                    <a href="../#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                </p>
                            </div>
                            <div class="clearfix"></div>
                            <div class="agileinfo_flexislider_grids">
                                <div class="col-md-2 w3l-movie-gride-agile">
                                    <a href="../WEB-INF/single.jsp" class="hvr-shutter-out-horizontal"><img
                                            src="../images/m22.jpg" title="album-name" class="img-responsive" alt=" "/>
                                        <div class="w3l-action-icon"><i class="fa fa-play-circle"
                                                                        aria-hidden="true"></i></div>
                                    </a>
                                    <div class="mid-1 agileits_w3layouts_mid_1_home">
                                        <div class="w3l-movie-text">
                                            <h6><a href="../WEB-INF/single.jsp">Assassin's Creed 3</a></h6>
                                        </div>
                                        <div class="mid-2 agile_mid_2_home">
                                            <p>2016</p>
                                            <div class="block-stars">
                                                <ul class="w3l-ratings">
                                                    <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                                    </li>
                                                    <li><a href="../#"><i class="fa fa-star-half-o"
                                                                          aria-hidden="true"></i></a></li>
                                                    <li><a href="../#"><i class="fa fa-star-o"
                                                                          aria-hidden="true"></i></a></li>
                                                    <li><a href="../#"><i class="fa fa-star-o"
                                                                          aria-hidden="true"></i></a></li>
                                                    <li><a href="../#"><i class="fa fa-star-o"
                                                                          aria-hidden="true"></i></a></li>
                                                </ul>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                    <div class="ribben">
                                        <p>NEW</p>
                                    </div>
                                </div>
                                <div class="col-md-2 w3l-movie-gride-agile">
                                    <a href="../WEB-INF/single.jsp" class="hvr-shutter-out-horizontal"><img
                                            src="../images/m2.jpg" title="album-name" class="img-responsive" alt=" "/>
                                        <div class="w3l-action-icon"><i class="fa fa-play-circle"
                                                                        aria-hidden="true"></i></div>
                                    </a>
                                    <div class="mid-1 agileits_w3layouts_mid_1_home">
                                        <div class="w3l-movie-text">
                                            <h6><a href="../WEB-INF/single.jsp">Bad Moms</a></h6>
                                        </div>
                                        <div class="mid-2 agile_mid_2_home">
                                            <p>2016</p>
                                            <div class="block-stars">
                                                <ul class="w3l-ratings">
                                                    <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                                    </li>
                                                    <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                                    </li>
                                                    <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                                    </li>
                                                    <li><a href="../#"><i class="fa fa-star-o"
                                                                          aria-hidden="true"></i></a></li>
                                                    <li><a href="../#"><i class="fa fa-star-o"
                                                                          aria-hidden="true"></i></a></li>
                                                </ul>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                    <div class="ribben">
                                        <p>NEW</p>
                                    </div>
                                </div>
                                <div class="col-md-2 w3l-movie-gride-agile">
                                    <a href="../WEB-INF/single.jsp" class="hvr-shutter-out-horizontal"><img
                                            src="../images/m9.jpg" title="album-name" class="img-responsive" alt=" "/>
                                        <div class="w3l-action-icon"><i class="fa fa-play-circle"
                                                                        aria-hidden="true"></i></div>
                                    </a>
                                    <div class="mid-1 agileits_w3layouts_mid_1_home">
                                        <div class="w3l-movie-text">
                                            <h6><a href="../WEB-INF/single.jsp">Central Intelligence</a></h6>
                                        </div>
                                        <div class="mid-2 agile_mid_2_home">
                                            <p>2016</p>
                                            <div class="block-stars">
                                                <ul class="w3l-ratings">
                                                    <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                                    </li>
                                                    <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                                    </li>
                                                    <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                                    </li>
                                                    <li><a href="../#"><i class="fa fa-star-half-o"
                                                                          aria-hidden="true"></i></a></li>
                                                    <li><a href="../#"><i class="fa fa-star-o"
                                                                          aria-hidden="true"></i></a></li>
                                                </ul>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                    <div class="ribben">
                                        <p>NEW</p>
                                    </div>
                                </div>
                                <div class="col-md-2 w3l-movie-gride-agile">
                                    <a href="../WEB-INF/single.jsp" class="hvr-shutter-out-horizontal"><img
                                            src="../images/m7.jpg" title="album-name" class="img-responsive" alt=" "/>
                                        <div class="w3l-action-icon"><i class="fa fa-play-circle"
                                                                        aria-hidden="true"></i></div>
                                    </a>
                                    <div class="mid-1 agileits_w3layouts_mid_1_home">
                                        <div class="w3l-movie-text">
                                            <h6><a href="../WEB-INF/single.jsp">Light B/t Oceans</a></h6>
                                        </div>
                                        <div class="mid-2 agile_mid_2_home">
                                            <p>2016</p>
                                            <div class="block-stars">
                                                <ul class="w3l-ratings">
                                                    <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                                    </li>
                                                    <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                                    </li>
                                                    <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                                    </li>
                                                    <li><a href="../#"><i class="fa fa-star-half-o"
                                                                          aria-hidden="true"></i></a></li>
                                                    <li><a href="../#"><i class="fa fa-star-o"
                                                                          aria-hidden="true"></i></a></li>
                                                </ul>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                    <div class="ribben">
                                        <p>NEW</p>
                                    </div>
                                </div>
                                <div class="col-md-2 w3l-movie-gride-agile">
                                    <a href="../WEB-INF/single.jsp" class="hvr-shutter-out-horizontal"><img
                                            src="../images/m11.jpg" title="album-name" class="img-responsive" alt=" "/>
                                        <div class="w3l-action-icon"><i class="fa fa-play-circle"
                                                                        aria-hidden="true"></i></div>
                                    </a>
                                    <div class="mid-1 agileits_w3layouts_mid_1_home">
                                        <div class="w3l-movie-text">
                                            <h6><a href="../WEB-INF/single.jsp">X-Men</a></h6>
                                        </div>
                                        <div class="mid-2 agile_mid_2_home">
                                            <p>2016</p>
                                            <div class="block-stars">
                                                <ul class="w3l-ratings">
                                                    <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                                    </li>
                                                    <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                                    </li>
                                                    <li><a href="../#"><i class="fa fa-star-half-o"
                                                                          aria-hidden="true"></i></a></li>
                                                    <li><a href="../#"><i class="fa fa-star-o"
                                                                          aria-hidden="true"></i></a></li>
                                                    <li><a href="../#"><i class="fa fa-star-o"
                                                                          aria-hidden="true"></i></a></li>
                                                </ul>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                    <div class="ribben">
                                        <p>NEW</p>
                                    </div>
                                </div>
                                <div class="col-md-2 w3l-movie-gride-agile">
                                    <a href="../WEB-INF/single.jsp" class="hvr-shutter-out-horizontal"><img
                                            src="../images/m17.jpg" title="album-name" class="img-responsive" alt=" "/>
                                        <div class="w3l-action-icon"><i class="fa fa-play-circle"
                                                                        aria-hidden="true"></i></div>
                                    </a>
                                    <div class="mid-1 agileits_w3layouts_mid_1_home">
                                        <div class="w3l-movie-text">
                                            <h6><a href="../WEB-INF/single.jsp">Peter</a></h6>
                                        </div>
                                        <div class="mid-2 agile_mid_2_home">
                                            <p>2016</p>
                                            <div class="block-stars">
                                                <ul class="w3l-ratings">
                                                    <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                                    </li>
                                                    <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                                    </li>
                                                    <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                                    </li>
                                                    <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                                    </li>
                                                    <li><a href="../#"><i class="fa fa-star-o"
                                                                          aria-hidden="true"></i></a></li>
                                                </ul>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                    <div class="ribben">
                                        <p>NEW</p>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="agile_tv_series_grid">
                            <div class="col-md-6 agile_tv_series_grid_left">
                                <div class="w3ls_market_video_grid1">
                                    <img src="../images/h2-1.jpg" alt=" " class="img-responsive"/>
                                    <a class="w3_play_icon1" href="../#small-dialog1">
                                        <span class="glyphicon glyphicon-play-circle" aria-hidden="true"></span>
                                    </a>
                                </div>
                            </div>
                            <div class="col-md-6 agile_tv_series_grid_right">
                                <p class="fexi_header">a haunting in cawdor</p>
                                <p class="fexi_header_para"><span class="conjuring_w3">Story Line<label>:</label></span>
                                    Vivian Miller, sent to a rehabilitation programme for young offenders, where a
                                    theatre camp is used as an alternative to jail time. After she views tape ...</p>
                                <p class="fexi_header_para"><span>Date of Release<label>:</label></span> Oct 09, 2015
                                </p>
                                <p class="fexi_header_para">
                                    <span>Genres<label>:</label> </span>
                                    <a href="genresServlet">Thriller</a> |
                                    <a href="genresServlet">Horror</a>
                                </p>
                                <p class="fexi_header_para fexi_header_para1"><span>Star Rating<label>:</label></span>
                                    <a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                    <a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                    <a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                    <a href="../#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a>
                                    <a href="../#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                </p>
                            </div>
                            <div class="clearfix"></div>
                            <div class="agileinfo_flexislider_grids">
                                <div class="col-md-2 w3l-movie-gride-agile">
                                    <a href="../WEB-INF/single.jsp" class="hvr-shutter-out-horizontal"><img
                                            src="../images/m2.jpg" title="album-name" class="img-responsive" alt=" "/>
                                        <div class="w3l-action-icon"><i class="fa fa-play-circle"
                                                                        aria-hidden="true"></i></div>
                                    </a>
                                    <div class="mid-1 agileits_w3layouts_mid_1_home">
                                        <div class="w3l-movie-text">
                                            <h6><a href="../WEB-INF/single.jsp">Bad Moms</a></h6>
                                        </div>
                                        <div class="mid-2 agile_mid_2_home">
                                            <p>2016</p>
                                            <div class="block-stars">
                                                <ul class="w3l-ratings">
                                                    <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                                    </li>
                                                    <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                                    </li>
                                                    <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                                    </li>
                                                    <li><a href="../#"><i class="fa fa-star-o"
                                                                          aria-hidden="true"></i></a></li>
                                                    <li><a href="../#"><i class="fa fa-star-o"
                                                                          aria-hidden="true"></i></a></li>
                                                </ul>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                    <div class="ribben">
                                        <p>NEW</p>
                                    </div>
                                </div>
                                <div class="col-md-2 w3l-movie-gride-agile">
                                    <a href="../WEB-INF/single.jsp" class="hvr-shutter-out-horizontal"><img
                                            src="../images/m9.jpg" title="album-name" class="img-responsive" alt=" "/>
                                        <div class="w3l-action-icon"><i class="fa fa-play-circle"
                                                                        aria-hidden="true"></i></div>
                                    </a>
                                    <div class="mid-1 agileits_w3layouts_mid_1_home">
                                        <div class="w3l-movie-text">
                                            <h6><a href="../WEB-INF/single.jsp">Central Intelligence</a></h6>
                                        </div>
                                        <div class="mid-2 agile_mid_2_home">
                                            <p>2016</p>
                                            <div class="block-stars">
                                                <ul class="w3l-ratings">
                                                    <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                                    </li>
                                                    <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                                    </li>
                                                    <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                                    </li>
                                                    <li><a href="../#"><i class="fa fa-star-half-o"
                                                                          aria-hidden="true"></i></a></li>
                                                    <li><a href="../#"><i class="fa fa-star-o"
                                                                          aria-hidden="true"></i></a></li>
                                                </ul>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                    <div class="ribben">
                                        <p>NEW</p>
                                    </div>
                                </div>
                                <div class="col-md-2 w3l-movie-gride-agile">
                                    <a href="../WEB-INF/single.jsp" class="hvr-shutter-out-horizontal"><img
                                            src="../images/m7.jpg" title="album-name" class="img-responsive" alt=" "/>
                                        <div class="w3l-action-icon"><i class="fa fa-play-circle"
                                                                        aria-hidden="true"></i></div>
                                    </a>
                                    <div class="mid-1 agileits_w3layouts_mid_1_home">
                                        <div class="w3l-movie-text">
                                            <h6><a href="../WEB-INF/single.jsp">Light B/t Oceans</a></h6>
                                        </div>
                                        <div class="mid-2 agile_mid_2_home">
                                            <p>2016</p>
                                            <div class="block-stars">
                                                <ul class="w3l-ratings">
                                                    <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                                    </li>
                                                    <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                                    </li>
                                                    <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                                    </li>
                                                    <li><a href="../#"><i class="fa fa-star-half-o"
                                                                          aria-hidden="true"></i></a></li>
                                                    <li><a href="../#"><i class="fa fa-star-o"
                                                                          aria-hidden="true"></i></a></li>
                                                </ul>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                    <div class="ribben">
                                        <p>NEW</p>
                                    </div>
                                </div>
                                <div class="col-md-2 w3l-movie-gride-agile">
                                    <a href="../WEB-INF/single.jsp" class="hvr-shutter-out-horizontal"><img
                                            src="../images/m11.jpg" title="album-name" class="img-responsive" alt=" "/>
                                        <div class="w3l-action-icon"><i class="fa fa-play-circle"
                                                                        aria-hidden="true"></i></div>
                                    </a>
                                    <div class="mid-1 agileits_w3layouts_mid_1_home">
                                        <div class="w3l-movie-text">
                                            <h6><a href="../WEB-INF/single.jsp">X-Men</a></h6>
                                        </div>
                                        <div class="mid-2 agile_mid_2_home">
                                            <p>2016</p>
                                            <div class="block-stars">
                                                <ul class="w3l-ratings">
                                                    <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                                    </li>
                                                    <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                                    </li>
                                                    <li><a href="../#"><i class="fa fa-star-half-o"
                                                                          aria-hidden="true"></i></a></li>
                                                    <li><a href="../#"><i class="fa fa-star-o"
                                                                          aria-hidden="true"></i></a></li>
                                                    <li><a href="../#"><i class="fa fa-star-o"
                                                                          aria-hidden="true"></i></a></li>
                                                </ul>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                    <div class="ribben">
                                        <p>NEW</p>
                                    </div>
                                </div>
                                <div class="col-md-2 w3l-movie-gride-agile">
                                    <a href="../WEB-INF/single.jsp" class="hvr-shutter-out-horizontal"><img
                                            src="../images/m17.jpg" title="album-name" class="img-responsive" alt=" "/>
                                        <div class="w3l-action-icon"><i class="fa fa-play-circle"
                                                                        aria-hidden="true"></i></div>
                                    </a>
                                    <div class="mid-1 agileits_w3layouts_mid_1_home">
                                        <div class="w3l-movie-text">
                                            <h6><a href="../WEB-INF/single.jsp">Peter</a></h6>
                                        </div>
                                        <div class="mid-2 agile_mid_2_home">
                                            <p>2016</p>
                                            <div class="block-stars">
                                                <ul class="w3l-ratings">
                                                    <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                                    </li>
                                                    <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                                    </li>
                                                    <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                                    </li>
                                                    <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                                    </li>
                                                    <li><a href="../#"><i class="fa fa-star-o"
                                                                          aria-hidden="true"></i></a></li>
                                                </ul>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                    <div class="ribben">
                                        <p>NEW</p>
                                    </div>
                                </div>
                                <div class="col-md-2 w3l-movie-gride-agile">
                                    <a href="../WEB-INF/single.jsp" class="hvr-shutter-out-horizontal"><img
                                            src="../images/m21.jpg" title="album-name" class="img-responsive" alt=" "/>
                                        <div class="w3l-action-icon"><i class="fa fa-play-circle"
                                                                        aria-hidden="true"></i></div>
                                    </a>
                                    <div class="mid-1 agileits_w3layouts_mid_1_home">
                                        <div class="w3l-movie-text">
                                            <h6><a href="../WEB-INF/single.jsp">The Jungle Book</a></h6>
                                        </div>
                                        <div class="mid-2 agile_mid_2_home">
                                            <p>2016</p>
                                            <div class="block-stars">
                                                <ul class="w3l-ratings">
                                                    <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                                    </li>
                                                    <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                                    </li>
                                                    <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                                    </li>
                                                    <li><a href="../#"><i class="fa fa-star-half-o"
                                                                          aria-hidden="true"></i></a></li>
                                                    <li><a href="../#"><i class="fa fa-star-o"
                                                                          aria-hidden="true"></i></a></li>
                                                </ul>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                    <div class="ribben">
                                        <p>NEW</p>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="agile_tv_series_grid">
                            <div class="col-md-6 agile_tv_series_grid_left">
                                <div class="w3ls_market_video_grid1">
                                    <img src="../images/h3-1.jpg" alt=" " class="img-responsive"/>
                                    <a class="w3_play_icon2" href="../#small-dialog2">
                                        <span class="glyphicon glyphicon-play-circle" aria-hidden="true"></span>
                                    </a>
                                </div>
                            </div>
                            <div class="col-md-6 agile_tv_series_grid_right">
                                <p class="fexi_header">civil war captain America</p>
                                <p class="fexi_header_para"><span class="conjuring_w3">Story Line<label>:</label></span>
                                    After the Avengers leaves some&nbsp;collateral damage, political pressure mounts to
                                    install a system of accountability.&nbsp;The new status quo deeply divides ...</p>
                                <p class="fexi_header_para"><span>Date of Release<label>:</label></span> May 06, 2016
                                </p>
                                <p class="fexi_header_para">
                                    <span>Genres<label>:</label> </span>
                                    <a href="genresServlet">Action</a> |
                                    <a href="genresServlet">Adventure</a>
                                </p>
                                <p class="fexi_header_para fexi_header_para1"><span>Star Rating<label>:</label></span>
                                    <a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                    <a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                    <a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                    <a href="../#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                    <a href="../#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                </p>
                            </div>
                            <div class="clearfix"></div>
                            <div class="agileinfo_flexislider_grids">
                                <div class="col-md-2 w3l-movie-gride-agile">
                                    <a href="../WEB-INF/single.jsp" class="hvr-shutter-out-horizontal"><img
                                            src="../images/m2.jpg" title="album-name" class="img-responsive" alt=" "/>
                                        <div class="w3l-action-icon"><i class="fa fa-play-circle"
                                                                        aria-hidden="true"></i></div>
                                    </a>
                                    <div class="mid-1 agileits_w3layouts_mid_1_home">
                                        <div class="w3l-movie-text">
                                            <h6><a href="../WEB-INF/single.jsp">Bad Moms</a></h6>
                                        </div>
                                        <div class="mid-2 agile_mid_2_home">
                                            <p>2016</p>
                                            <div class="block-stars">
                                                <ul class="w3l-ratings">
                                                    <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                                    </li>
                                                    <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                                    </li>
                                                    <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                                    </li>
                                                    <li><a href="../#"><i class="fa fa-star-o"
                                                                          aria-hidden="true"></i></a></li>
                                                    <li><a href="../#"><i class="fa fa-star-o"
                                                                          aria-hidden="true"></i></a></li>
                                                </ul>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                    <div class="ribben">
                                        <p>NEW</p>
                                    </div>
                                </div>
                                <div class="col-md-2 w3l-movie-gride-agile">
                                    <a href="../WEB-INF/single.jsp" class="hvr-shutter-out-horizontal"><img
                                            src="../images/m9.jpg" title="album-name" class="img-responsive" alt=" "/>
                                        <div class="w3l-action-icon"><i class="fa fa-play-circle"
                                                                        aria-hidden="true"></i></div>
                                    </a>
                                    <div class="mid-1 agileits_w3layouts_mid_1_home">
                                        <div class="w3l-movie-text">
                                            <h6><a href="../WEB-INF/single.jsp">Central Intelligence</a></h6>
                                        </div>
                                        <div class="mid-2 agile_mid_2_home">
                                            <p>2016</p>
                                            <div class="block-stars">
                                                <ul class="w3l-ratings">
                                                    <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                                    </li>
                                                    <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                                    </li>
                                                    <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                                    </li>
                                                    <li><a href="../#"><i class="fa fa-star-half-o"
                                                                          aria-hidden="true"></i></a></li>
                                                    <li><a href="../#"><i class="fa fa-star-o"
                                                                          aria-hidden="true"></i></a></li>
                                                </ul>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                    <div class="ribben">
                                        <p>NEW</p>
                                    </div>
                                </div>
                                <div class="col-md-2 w3l-movie-gride-agile">
                                    <a href="../WEB-INF/single.jsp" class="hvr-shutter-out-horizontal"><img
                                            src="../images/m7.jpg" title="album-name" class="img-responsive" alt=" "/>
                                        <div class="w3l-action-icon"><i class="fa fa-play-circle"
                                                                        aria-hidden="true"></i></div>
                                    </a>
                                    <div class="mid-1 agileits_w3layouts_mid_1_home">
                                        <div class="w3l-movie-text">
                                            <h6><a href="../WEB-INF/single.jsp">Light B/t Oceans</a></h6>
                                        </div>
                                        <div class="mid-2 agile_mid_2_home">
                                            <p>2016</p>
                                            <div class="block-stars">
                                                <ul class="w3l-ratings">
                                                    <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                                    </li>
                                                    <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                                    </li>
                                                    <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                                    </li>
                                                    <li><a href="../#"><i class="fa fa-star-half-o"
                                                                          aria-hidden="true"></i></a></li>
                                                    <li><a href="../#"><i class="fa fa-star-o"
                                                                          aria-hidden="true"></i></a></li>
                                                </ul>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                    <div class="ribben">
                                        <p>NEW</p>
                                    </div>
                                </div>
                                <div class="col-md-2 w3l-movie-gride-agile">
                                    <a href="../WEB-INF/single.jsp" class="hvr-shutter-out-horizontal"><img
                                            src="../images/m11.jpg" title="album-name" class="img-responsive" alt=" "/>
                                        <div class="w3l-action-icon"><i class="fa fa-play-circle"
                                                                        aria-hidden="true"></i></div>
                                    </a>
                                    <div class="mid-1 agileits_w3layouts_mid_1_home">
                                        <div class="w3l-movie-text">
                                            <h6><a href="../WEB-INF/single.jsp">X-Men</a></h6>
                                        </div>
                                        <div class="mid-2 agile_mid_2_home">
                                            <p>2016</p>
                                            <div class="block-stars">
                                                <ul class="w3l-ratings">
                                                    <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                                    </li>
                                                    <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                                    </li>
                                                    <li><a href="../#"><i class="fa fa-star-half-o"
                                                                          aria-hidden="true"></i></a></li>
                                                    <li><a href="../#"><i class="fa fa-star-o"
                                                                          aria-hidden="true"></i></a></li>
                                                    <li><a href="../#"><i class="fa fa-star-o"
                                                                          aria-hidden="true"></i></a></li>
                                                </ul>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                    <div class="ribben">
                                        <p>NEW</p>
                                    </div>
                                </div>
                                <div class="col-md-2 w3l-movie-gride-agile">
                                    <a href="../WEB-INF/single.jsp" class="hvr-shutter-out-horizontal"><img
                                            src="../images/m17.jpg" title="album-name" class="img-responsive" alt=" "/>
                                        <div class="w3l-action-icon"><i class="fa fa-play-circle"
                                                                        aria-hidden="true"></i></div>
                                    </a>
                                    <div class="mid-1 agileits_w3layouts_mid_1_home">
                                        <div class="w3l-movie-text">
                                            <h6><a href="../WEB-INF/single.jsp">Peter</a></h6>
                                        </div>
                                        <div class="mid-2 agile_mid_2_home">
                                            <p>2016</p>
                                            <div class="block-stars">
                                                <ul class="w3l-ratings">
                                                    <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                                    </li>
                                                    <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                                    </li>
                                                    <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                                    </li>
                                                    <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                                    </li>
                                                    <li><a href="../#"><i class="fa fa-star-o"
                                                                          aria-hidden="true"></i></a></li>
                                                </ul>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                    <div class="ribben">
                                        <p>NEW</p>
                                    </div>
                                </div>
                                <div class="col-md-2 w3l-movie-gride-agile">
                                    <a href="../WEB-INF/single.jsp" class="hvr-shutter-out-horizontal"><img
                                            src="../images/m20.jpg" title="album-name" class="img-responsive" alt=" "/>
                                        <div class="w3l-action-icon"><i class="fa fa-play-circle"
                                                                        aria-hidden="true"></i></div>
                                    </a>
                                    <div class="mid-1 agileits_w3layouts_mid_1_home">
                                        <div class="w3l-movie-text">
                                            <h6><a href="../WEB-INF/single.jsp">The Secret Life of Pets</a></h6>
                                        </div>
                                        <div class="mid-2 agile_mid_2_home">
                                            <p>2016</p>
                                            <div class="block-stars">
                                                <ul class="w3l-ratings">
                                                    <li><a href="../#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                                    </li>
                                                    <li><a href="../#"><i class="fa fa-star-half-o"
                                                                          aria-hidden="true"></i></a></li>
                                                    <li><a href="../#"><i class="fa fa-star-o"
                                                                          aria-hidden="true"></i></a></li>
                                                    <li><a href="../#"><i class="fa fa-star-o"
                                                                          aria-hidden="true"></i></a></li>
                                                    <li><a href="../#"><i class="fa fa-star-o"
                                                                          aria-hidden="true"></i></a></li>
                                                </ul>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                    <div class="ribben">
                                        <p>NEW</p>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </section>
        <!-- flexSlider -->
        <link rel="stylesheet" href="../css/flexslider.css" type="text/css" media="screen" property=""/>
        <script defer src="../js/jquery.flexslider.js"></script>
        <script type="text/javascript">
            $(window).load(function () {
                $('.flexslider').flexslider({
                    animation: "slide",
                    start: function (slider) {
                        $('body').removeClass('loading');
                    }
                });
            });
        </script>
        <!-- //flexSlider -->
    </div>
</div>
<!-- pop-up-box -->
<script src="../js/jquery.magnific-popup.js" type="text/javascript"></script>
<!--//pop-up-box -->
<div id="small-dialog" class="mfp-hide">
    <iframe src="../https://player.vimeo.com/video/164819130?title=0&byline=0"></iframe>
</div>
<div id="small-dialog1" class="mfp-hide">
    <iframe src="../https://player.vimeo.com/video/148284736"></iframe>
</div>
<div id="small-dialog2" class="mfp-hide">
    <iframe src="../https://player.vimeo.com/video/165197924?color=ffffff&title=0&byline=0&portrait=0"></iframe>
</div>
<script>
    $(document).ready(function () {
        $('.w3_play_icon,.w3_play_icon1,.w3_play_icon2').magnificPopup({
            type: 'inline',
            fixedContentPos: false,
            fixedBgPos: true,
            overflowY: 'auto',
            closeBtnInside: true,
            preloader: false,
            midClick: true,
            removalDelay: 300,
            mainClass: 'my-mfp-zoom-in'
        });

    });
</script>
<!-- //Latest-tv-series -->
<!-- footer -->
<div class="footer">
    <div class="container">
        <div class="w3ls_footer_grid">
            <div class="col-md-6 w3ls_footer_grid_left">
                <div class="w3ls_footer_grid_left1">
                    <h2>բաժանորդագրվել</h2>
                    <div class="w3ls_footer_grid_left1_pos">
                        <form action="#" method="post">
                            <input type="email" name="email" placeholder="Ձրել էլ․հացեն..." required="">
                            <input type="submit" value="Ուղարկել">
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-md-6 w3ls_footer_grid_right">
                <a href="index"><h2>12<span>կինոթատրոն</span></h2></a>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="col-md-5 w3ls_footer_grid1_left">
            <p>&copy; 2021 12 կինոթատրոն. Բոլոր իրավունքները պաշտպանված են | Դիզայնը ՝ <a
                    href="../http://w3layouts.com/">W3layouts</a>-ի</p>
        </div>
        <div class="col-md-7 w3ls_footer_grid1_right">
            <ul>
                <li>
                    <a href="genresServlet?genres=genres">Բոլոր տեսանյութերը</a>
                </li>
                <li>
                    <a href="../WEB-INF/faq.jsp">ՀՏՀ</a>
                </li>
                <li>
                    <a href="../WEB-INF/contact.jsp">Կոնտակներ</a>
                </li>
                <li>
                    <a href="../WEB-INF/contact.jsp">Մեր Մասին</a>
                </li>
            </ul>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!-- //footer -->
<!-- Bootstrap Core JavaScript -->
<script src="../js/bootstrap.min.js"></script>
<script>
    $(document).ready(function () {
        $(".dropdown").hover(
            function () {
                $('.dropdown-menu', this).stop(true, true).slideDown("fast");
                $(this).toggleClass('open');
            },
            function () {
                $('.dropdown-menu', this).stop(true, true).slideUp("fast");
                $(this).toggleClass('open');
            }
            );
    });
</script>
<!-- //Bootstrap Core JavaScript -->
<!-- here stars scrolling icon -->
<script type="text/javascript">
    $(document).ready(function () {
        /*
            var defaults = {
            containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 1200,
            easingType: 'linear'
            };
        */

        $().UItoTop({easingType: 'easeOutQuart'});

    });
</script>
<!-- //here ends scrolling icon -->
</body>
</html>