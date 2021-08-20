<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard1.aspx.cs" Inherits="DBMS.Dashboard1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->
    <title>DASHBOARD</title>
    <!-- BOOTSTRAP CORE STYLE  -->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONT AWESOME STYLE  -->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- CUSTOM STYLE  -->
    <link href="assets/css/style.css" rel="stylesheet" />
    <!-- GOOGLE FONT -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body style="background-color:lightgrey">
    <form id="form1" runat="server">
       <div class="navbar navbar-inverse set-radius-zero" >
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">

                    <!--<img src="assets/img/logo.png" />-->
                    <b><i><h1>SILVER COIN BANK </h1></i></b>
                </a>

            </div>

           
        </div>
    </div>
    <!-- LOGO HEADER END-->
    <section class="menu-section">
        <div class="container">
            <div class="row ">
                <div class="col-md-12">
                    <div class="navbar-collapse collapse ">
                        <ul id="menu-top" class="nav navbar-nav navbar-right">
                            <li><a href="Dashboard1.aspx" class="menu-top-active">DASHBOARD</a></li>
                           
                            <li><a href="customer_view.aspx">VIEW CUSTOMERS</a></li>
                            
                            </li>
                            <li><a href="transact.aspx">TRANSFER MONEY</a></li>
                             <li><a href="recents.aspx">RECENT TRANSACTIONS</a></li>
                            <!--<li><a href="blank.html">BLANK PAGE</a></li>-->

                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </section>
     <!-- MENU SECTION END-->
    <div class="content-wrapper">
         <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                <h4 class="header-line"> DASHBOARD</h4>
                
                            </div>

        </div>
             
             <div class="row" style="text-align: center;">
            
                 
                    <p>              </p>
              <div class="col-md-3 col-sm-3 col-xs-6" >
                      <div class="alert alert-success back-widget-set text-center" >
                            <!--<i class="assets\img\home.gif"></i>-->
                           <p style="text-align:center"> <h3>HOME</h3></p>
                            
                        </div>
                    </div>
               <div class="col-md-3 col-sm-3 col-xs-6" >
                      <div class="alert alert-warning back-widget-set text-center" >
                           <!-- <i class="fa fa-recycle fa-5x"></i>-->
                           <p style="text-align:center"> <h3>ABOUT US</h3></p>
                           
                        </div>
                    </div>
               <div class="col-md-3 col-sm-3 col-xs-6" >
                      <div class="alert alert-danger back-widget-set text-center" >
                            <!--<i class="fa fa-briefcase fa-5x"></i>-->
                            <p style="text-align:center"><h3>CONTACT US </h3></p>
                            
                        </div>
                    </div>

        </div>              
             <div class="row">

              <div class="col-md-8 col-sm-8 col-xs-12">
                    <div id="carousel-example" class="carousel slide slide-bdr" data-ride="carousel" >
                   
                    <div class="carousel-inner">
                        <div class="item active">

                            <img src="assets/img/bg11.jpg" alt="" height="100%" width="100%" />
                           
                        </div>
                        <div class="item">
                            <img src="assets/img/bg10.jpg" alt="" height="100%" width="100%" />
                          
                        </div>
                        <div class="item">
                            <img src="assets/img/bg9.jpg" alt="" height="100%" width="100%" />
                           
                        </div>
                        
                    </div>
                    <!--INDICATORS-->
                     <ol class="carousel-indicators">
                        <li data-target="#carousel-example" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example" data-slide-to="1"></li>
                        <li data-target="#carousel-example" data-slide-to="2"></li>
                    </ol>
                    <!--PREVIUS-NEXT BUTTONS-->
                     <a class="left carousel-control" href="#carousel-example" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
  </a>
  <a class="right carousel-control" href="#carousel-example" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
  </a>
                </div>
              </div>
                 
                
                            

                                    
                                           
         
                       
                              
                                            
                                          
    
      
    
    <!-- CORE JQUERY  -->
    <script src="assets/js/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP SCRIPTS  -->
    <script src="assets/js/bootstrap.js"></script>
      <!-- CUSTOM SCRIPTS  -->
    <script src="assets/js/custom.js"></script>
    </form>
     <div id="footer-sec">
        &copy; 2021 Sakshi Pathak | Designed For : The Sparks Foundation
       
    </div>
    
</body>
    
</html>


           
       
           