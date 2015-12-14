<?php
session_start();
include_once 'dbconnect.php';

if(!isset($_SESSION['user']))
{
  header("Location: index.php");
}
$res=mysql_query("SELECT * FROM users WHERE user_id=".$_SESSION['user']);
$userRow=mysql_fetch_array($res);
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">

    <title>Gujek Web App | Admin Panel</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">

    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="assets/css/zabuto_calendar.css">
    <link rel="stylesheet" type="text/css" href="assets/js/gritter/css/jquery.gritter.css" />
    <link rel="stylesheet" type="text/css" href="assets/lineicons/style.css">    
 
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">
    <script src="assets/js/chart-master/Chart.js"></script>

    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/s/dt/jqc-1.11.3,dt-1.10.10,b-1.1.0,se-1.1.0/datatables.min.css">
    <link rel="stylesheet" type="text/css" href="css/generator-base.css">
    <link rel="stylesheet" type="text/css" href="css/editor.dataTables.min.css">

    <script type="text/javascript" charset="utf-8" src="https://cdn.datatables.net/s/dt/jqc-1.11.3,dt-1.10.10,b-1.1.0,se-1.1.0/datatables.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="js/dataTables.editor.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="js/table.GUFOOD.js"></script>
  </head>

  <body>

  <section id="container" >
      <!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->
      <!--header start-->
      <header class="header black-bg">
              <div class="sidebar-toggle-box">
                  <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
              </div>
            <!--logo start-->
            <a href="index.html" class="logo"><b>Gujek Web App</b></a>
            <!--logo end-->
            <div class="nav notify-row" id="top_menu">
                <!--  notification start -->
                <ul class="nav top-menu">
                    <!-- settings end -->
                    <!-- inbox dropdown start-->
                    <li id="header_inbox_bar" class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
                            <i class="fa fa-envelope-o"></i>
                            <span class="badge bg-theme">4</span>
                        </a>
                        <ul class="dropdown-menu extended inbox">
                            <div class="notify-arrow notify-arrow-green"></div>
                            <li>
                                <p class="green">You have 4 new messages</p>
                            </li>
                            <li>
                                <a href="index.html#">
                                    <span class="photo"><img alt="avatar" src="assets/img/yayan.jpg"></span>
                                    <span class="subject">
                                    <span class="from">[Customer] Yanuar</span>
                                    <span class="time">Just now</span>
                                    </span>
                                    <span class="message">
                                        Halo Admin, lagi apa?
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="index.html#">
                                    <span class="photo"><img alt="avatar" src="assets/img/sby.jpg"></span>
                                    <span class="subject">
                                    <span class="from">[Customer] Satrio</span>
                                    <span class="time">5 mins.</span>
                                    </span>
                                    <span class="message">
                                     Mas, orderan saya apa kabar?
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="index.html#">
                                    <span class="photo"><img alt="avatar" src="assets/img/gojek_driver.jpg"></span>
                                    <span class="subject">
                                    <span class="from">[Driver] Favian Cyril</span>
                                    <span class="time">2 hrs.</span>
                                    </span>
                                    <span class="message">
                                        Oi! Jadi admin yang bener dong!
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="index.html#">
                                    <span class="photo"><img alt="avatar" src="assets/img/ui-sherman.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Mr Nadiem Makarim</span>
                                    <span class="time">4 hrs.</span>
                                    </span>
                                    <span class="message">
                                        Good! Nanti saya naikin gajinya.
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="#">See all messages</a>
                            </li>
                        </ul>
                    </li>
                    <!-- inbox dropdown end -->
                </ul>
                <!--  notification end -->
            </div>
            <div class="top-menu">
                <ul class="nav pull-right top-menu">
                    <li>
                    <a class="logout" href="logout.php?logout">
                    <i class="fa fa-cogs"></i><span style="font-size: 15px">  Logout</span></a>
                    </li>
                </ul>
            </div>
        </header>
      <!--header end-->
      
      <!-- **********************************************************************************************************************************************************
      MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
      <!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
              
                  <p class="centered"><a href="profile.html"><img src="assets/img/ui-sam.jpg" class="img-circle" width="60"></a></p>
                  <h5 class="centered">Logged in as:
                <?php echo $userRow[ 'username']; ?> </h5>
                  
                    
                  <li class="mt">
                      <a href="home.php">
                          <i class="fa fa-dashboard"></i>
                          <span>Dashboard</span>
                      </a>
                  </li>

                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-users"></i>
                          <span>Employees Record</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="employee.php">All Division</a></li>
                          <li><a  href="analyst.php">Analyst</a></li>
                          <li><a  href="designer.php">Application Designer</a></li>
                          <li><a  href="driver.php">Driver</a></li>
                          <li><a  href="softeng.php">Software Engineer</a></li>
                          <li><a  href="supervisor.php">Supervisor</a></li>
                      </ul>
                      </a>
                  </li>

                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-mobile"></i>
                          <span>Application</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="applaunch.php">Version</a></li>
                          <li><a  href="appver.php">Release</a></li>
                          <li><a  href="feedbacks.php">Feedbacks</a></li>
                      </ul>
                  </li>

                  <li class="sub-menu">
                      <a href="customer.php" >
                          <i class="fa fa-user"></i>
                          <span>Customer Profiles</span>
                      </a>

                  </li>

                  <li class="sub-menu">
                      <a class="active" href="javascript:;" >
                          <i class="fa fa-usd"></i>
                          <span>Transaction Record</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="transactions.php">All Transactions</a></li>
                          <li><a  href="gujek.php">Gujek</a></li>
                          <li><a  href="gubox.php">Gubox</a></li>
                          <li><a  href="gufood.php">Gufood</a></li>
                      </ul>
                  </li>

                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-usd"></i>
                          <span>Vendors</span>
                      </a>
                      <ul class="sub">

                          <li><a  href="resto.php">Restaurant</a></li>
                          <li><a  href="vehicles.php">Vehicles</a></li>
                      </ul>
                  </li>
                  

              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
      <!--sidebar end-->
      
      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">

              <div class="row">
                  <div class="col-md-12 main-chart">
                  <div class="dataTables">

                        <h1 style="text-align:center">
                          Employee <span>Lists</span>
                        </h1>
                        <center>
                        <table cellpadding="0" cellspacing="0" border="0" class="display" id="GUFOOD" width="100%">
                          <thead>
                            <tr>
                              <th>Transaction No.</th>
                              <th>Restaurant Name</th>
                            </tr>
                          </thead>
                        </table>
                    </div>
                    </div><!-- /row -->

                  </div><!-- /col-lg-9 END SECTION MIDDLE -->
       

     
  </section>




    <!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/jquery-1.8.3.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="assets/js/jquery.scrollTo.min.js"></script>
    <script src="assets/js/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="assets/js/jquery.sparkline.js"></script>


    <!--common script for all pages-->
    <script src="assets/js/common-scripts.js"></script>
    
    <script type="text/javascript" src="assets/js/gritter/js/jquery.gritter.js"></script>
    <script type="text/javascript" src="assets/js/gritter-conf.js"></script>

    <!--script for this page-->
    <script src="assets/js/sparkline-chart.js"></script>    
    <script src="assets/js/zabuto_calendar.js"></script>    
    

    
    <script type="application/javascript">
        $(document).ready(function () {
            $("#date-popover").popover({html: true, trigger: "manual"});
            $("#date-popover").hide();
            $("#date-popover").click(function (e) {
                $(this).hide();
            });
        
            $("#my-calendar").zabuto_calendar({
                action: function () {
                    return myDateFunction(this.id, false);
                },
                action_nav: function () {
                    return myNavFunction(this.id);
                },
                ajax: {
                    url: "show_data.php?action=1",
                    modal: true
                },
                legend: [
                    {type: "text", label: "Special event", badge: "00"},
                    {type: "block", label: "Regular event", }
                ]
            });
        });
        
        
        function myNavFunction(id) {
            $("#date-popover").hide();
            var nav = $("#" + id).data("navigation");
            var to = $("#" + id).data("to");
            console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
        }
    </script>
  

  </body>
</html>
