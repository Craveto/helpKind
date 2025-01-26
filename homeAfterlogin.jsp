<%@ page import="java.io.*" %>
    <%
        // Retrieve the username from the session
        String username = (String) session.getAttribute("username");
    
        // Redirect to login page if not logged in
        if (username == null) {
            response.sendRedirect("login.html");
            return;
        }
    %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
        rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>HelpKind</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/homeAfterlogin.css">
</head>

<body>
    
    <!-- first page -->
    <section class="homePage1"">
        <div class="navbar-container">
            <nav class="navbar">

                <a href="#" class="a-links">HelpKind</a>
                <div class="nav-items">
                    <div class="navbar-items">
                        <a href="#" class="a-links"><img src="img/search.svg" alt="loading">Locations</a>
                        <a href="#" class="a-links"><img src="img/search.svg" alt="loading">Search events</a>
                    </div>
                    <div class="navbar-btn">
                        <a href="#" class="a-btn"><button class="btn"><%= username %></button></a>
                        <a href="logout.jsp" class="a-btn"> <button class="btn">Logout</button></a>
                    </div>
                    
                    <%-- <div class="navbar-profile">
                        <div class="navbar-btn">
                            
                             <button class="btn navbar-btn"> <a href="#" class="a-links"> <%= username %></a></button>
                             <button class="btn navbar-btn"><a href="logout.jsp" class="a-links">Logout</a></button>
                        </div>
                    </div> --%>

                </div>

            </nav>

            <div class="homePage-container">
                <div class="homepage-content">
                    <h1>Alone we can do so little together we can do so much....!!!</h1>
                    <button class="btn btns">Find Work</button>
                </div>
                <div class="homepage-content">
                    <img src="img/saas1.jpg" alt="loading">
                </div>
            </div>

            <div class="social">
                <a href="#">
                    <h2>Social Organization</h2>
                </a>
                <div class="social-content">
                    <a href="#" class="a-links"><img src="img/saas2.jpg" class="social-img"="loading"></a>
                    <a href="#" class="a-links"><img src="img/saas8.jpg" class="social-img" alt="loading"></a>
                    <a href="#" class="a-links"><img src="img/saas6.jpg" class="social-img" alt="loading"></a>
                    <a href="#" class="a-links"><img src="img/saas7.png" class="social-img" alt="loading"></a>
                    <a href="#" class="a-links"><img src="img/saas5.jpg" class="social-img" alt="loading"></a>
                </div>
                <h4>Join over 1000 customers worldwide</h4>
            </div>
        </div>
    </section>

    <!-- second page -->
    <section class="homePage2">
        <div class="homePage2-content">
            <img src="img/volunteers.jpeg" alt="loading">
            <h1>Be part of impactful projects that bring real change to people’s lives. Meet like-minded people who
                share a passion for making the world a better place.</h1>
            <button class="btn2  btn btns">BE A VOLUNTEER</button>
        </div>
    </section>

    <!-- third page -->
    <section class="homePage3">
        <div class="homepage3-content">
            <div class="homepage3-items">
                <img src="img/foundation1.jpg" class="homepage3-img" alt="loading">
                <div class="homepage3-heading">
                    <h1>VK foundation</h1>
                    <h3>Show how your product's features matter, how they set you apart from the competition, and how
                        you can transform your customer's experience at work or at home. Lorem, ipsum dolor sit amet
                        consectetur adipisicing elit. Obcaecati asperiores architecto dolor ducimus molestiae neque.

                    </h3>
                </div>
            </div>
            <div class="homepage3-items hompage3-reverse">
                <img src="img/foundation2.jpg" class="homepage3-img" alt="loading">
                <div class="homepage3-heading heading1 ">
                    <h1>Acron foundation</h1>
                    <h3>Show how your product's features matter, how they set you apart from the competition, and how
                        you can transform your customer's experience at work or at home. Lorem ipsum dolor sit amet
                        consectetur adipisicing elit. Non repellat totam nesciunt fugit hic adipisci!</h3>
                </div>
            </div>

        </div>
    </section>


    <!-- Fourth page -->
    <section class="homePage4">
        <div class="homepage4-items">
            <h1>What our user say..</h1>

            <div class="homepage4-cart">

                <div class="homepage4-carts">
                    <div class="cart-items">
                        <img src="img/profileImg1.png" alt="loading">
                        <div class="cart-heading">
                            <h1>Omkar Garud</h1>
                            <h4>@omkar_garud11</h4>
                        </div>
                    </div>
                    <h3>From this platform i got my day worth it...</h3>
                </div>

                <div class="homepage4-carts cart2">
                    <div class="cart-items">
                        <img src="img/profileImg1.png" alt="loading">
                        <div class="cart-heading">
                            <h1>Omkar Garud</h1>
                            <h4>@omkar_garud11</h4>
                        </div>
                    </div>
                    <h3>From this platform i got my day worth it...</h3>
                </div>

                <div class="homepage4-carts">
                    <div class="cart-items">
                        <img src="img/profileImg1.png" alt="loading">
                        <div class="cart-heading">
                            <h1>Omkar Garud</h1>
                            <h4>@omkar_garud11</h4>
                        </div>
                    </div>
                    <h3>From this platform i got my day worth it...</h3>
                </div>

            </div>

        </div>

    </section>

</body>

</html>