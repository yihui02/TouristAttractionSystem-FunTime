<html>
    <head>
        <style type="text/css">     
            html, body, header, #intro       /*     CSS      */
 {
    height: 100%;
}

#intro
{
    background: url("https://cdn.dribbble.com/users/795597/screenshots/3569676/travel-planning__1_.gif")no-repeat center center fixed;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
}
     </style>   
   </head>
                                  
    <body>
    <!DOCTYPE html>                     
<html>                                             
    <head>
        <title>FunTime</title>                       
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Font Awesome -->                      
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<!-- Google Fonts -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
<!-- Bootstrap core CSS -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
<!-- Material Design Bootstrap -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <meta name='viewport' content='width=device-width, initial-scale=1'>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<link rel="shortcut icon" type="image/jpg" href="https://image.flaticon.com/icons/png/512/44/44386.png"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    


<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
  font-family: Arial;
  font-size:17px;
}

* {
  box-sizing: border-box;
}

form.example input[type=text] {
  padding: 10px;
  font-size: 15.34px;
  border: 1px solid grey;
  float: left;
  width: 80%;
  background: white;
}

form.example button {
  float: left;
  width: 20%;
  padding: 10px;
  background: white;
  color: black;
  font-size: 23px;
  border: 1px solid grey;
  border-left: none;
  cursor: pointer;
}

form.example button:hover {
  background: grey;
}

form.example::after {
  content: "";
  clear: both;
  display: table;
}
</style>
  </head>

    <!--<body>-->
         <!-- Main Navigation -->
        <header>
            <!-- Navbar -->
            <nav class="navbar navbar-expand-lg navbar-dark success-color fixed-top ">
            &nbsp;&nbsp; &nbsp;
     <a class="rounded" class="nav-link" alt="" href="{{url('')}}"> <img src="{{asset('images/Funtime.png')}}" width="150">
                <div class="container">

                    <!-- Navbar brand -->

                    <button class="navbar-toggler" type="button" data-toggle="collapse"
                    data-target="#basicExampleNav" aria-controls="basicExampleNav" aria-expanded="false"
                    aria-label="Toggle navigaton">
                <span class="navbar-toggler-icon"></span>
            </button>

            <!-- Collapsible content -->
            <div class="collapse navbar-collapse" id="basicExampleNav">

                <!-- Links -->
                <ul class="navbar-nav mr-auto ">
                    <li class="nav-item active">
                        <a class="nav-link" style= font-family:Arial; href="{{url('')}}">Home
                            <span class="sr-only">(current)</span>
                        </a>
                    </li>
                    &nbsp;
                    &nbsp;
                    &nbsp;
                    &nbsp;
                     
                    <li class="nav-item">
                        <a class="nav-link"  style= font-family:Arial; href="/blog">Blog </a>
                    </li>
                    &nbsp;
                    &nbsp;
                    &nbsp;
                    &nbsp;

                    <li class="nav-item">
                        <a class="nav-link" style= font-family:Arial; href="{{route('attraction.places')}}">Attraction </a>
                    </li>  
                    &nbsp;
                    &nbsp;
                    &nbsp;
                    &nbsp;

                    <li class="nav-item">
                        <a class="nav-link" style= font-family:Arial; href="{{route('homeStay.places')}}">Homestay </a>
                    </li>
                    &nbsp;
                    &nbsp;
                    &nbsp;
                    &nbsp;

                    <!-- Dropdown -->
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" style= font-family:Arial;
                        id="navbarDropdownMenuLink" data-toggle="dropdown"
                        aria-haspopup="true" 
                        aria-expanded="false">Other activities</a>

                        <div class="dropdown-menu dropdown-primary"
                        aria-labelledby="navbarDropdownMenuLink">
                    <a class="dropdown-item" style= font-family:Arial; href="{{route('indoor.places')}}">Indoor</a>
                    <a class="dropdown-item" style= font-family:Arial; href="{{route('outdoor.places')}}">Outdoor</a> 
                    </div>
                    </li>
                    &nbsp; &nbsp;
                    &nbsp; &nbsp;
                    &nbsp; &nbsp;
                    &nbsp; &nbsp;
                    &nbsp; &nbsp;
                    &nbsp; &nbsp;
                    &nbsp; &nbsp;
                    &nbsp; &nbsp;
                    &nbsp; &nbsp;
                    &nbsp; &nbsp;
                    &nbsp; &nbsp;
                    &nbsp; &nbsp;
                    &nbsp; &nbsp;
                    &nbsp; &nbsp;
                    &nbsp; &nbsp;
                    &nbsp; &nbsp;
                    &nbsp; &nbsp;
                    &nbsp; &nbsp;
                </ul>
                
                <form class="example" action="{{route('search.place')}}" method="POST" style="margin:auto;width:290px">
                 @csrf
     <input type="text" placeholder="Search..." name="keyword">
  <button type="submit"><i class="fa fa-search"></i></button>
                </form>
                &nbsp; &nbsp;
                &nbsp; &nbsp;
                <nav class="navbar-expand-lg">
  <div class="container-fluid">
    <ul class="navbar-nav">
      <!-- Avatar -->
      <li class="nav-item dropdown">
        <a
          class="nav-link dropdown-toggle d-flex align-items-center"
          id="navbarDropdownMenuLink"
          role="button"
          data-toggle="dropdown"
          aria-haspopup="true"
          aria-expanded="false"
        >
        
          <img
            src="https://expertphotography.b-cdn.net/wp-content/uploads/2020/08/social-media-profile-photos-3.jpg"
            class="rounded-circle"
            height="45"
            loading="lazy"
          />
        </a> 
        
        <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <li>
            <a class="dropdown-item" href="">My profile</a>
          </li>
          <li>
            <a class="dropdown-item" href="">Settings</a>
          </li>
          <li>
            <a class="dropdown-item" href="logout">Logout</a>
          </li>
        </ul>
      </li>
    </ul>
  </div>
</nav>

            </div>
                </div>
            </nav>
            <!-- /.Navbar -->

            <br>
            @yield('content')
 
                <!-- Main layout -->
                <main class="mt-5 bg-dark">
                <div class="container">
                <section id="best-features" class="text-center">
                       <br>
                       <br>
                       
                       <h2 class="mb-8 font-weight-bold text-center white-text">About us</h2>

                       <footer class="page-footer">
    <div class="container">
   
        <div class="col-lg-12 col-md-12 col-sm-12">
        
            <div class="col-lg-12 col-md-12 col-sm-12">
            <p>FunTime is the leading e-commerce travel platform that connects travelers with Authentic Local Tours, Indoor&Outdoor Activities and Homestay. It is not only suitable for foreigners but locals. Our goals are saving user's time from browsing the fake website and collecting the wrong or incomplete information. We provides the latest and complete information to increase tourism visitor experience.</p>
                <br>
                <br>
            <h2 class="mb-6 font-weight-bold text-center white-text">Contact us</h2>
           <h6 class="text-center"> 
           funtime220614@gmail.com
           <br>
            +6016-7266379 &nbsp; &nbsp;Fong Eugene
            <br> +6011-10546988 &nbsp; &nbsp;Lim Yi Cheng
            <br> +6011-10958133 &nbsp; &nbsp;Lim Yi Hui
            </h6>
             </div>

        </div>   
        <br>  
    <div class="footer-copyright text-center"> Copyright &copy; 2022 FunTime All Rights Reserved.</div>
    </div>
</footer>
              </section>
            </div> 
        </main>
     
        <!-- JQuery -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/js/mdb.min.js"></script>

    </body>
  </html>
    </body>
</html>