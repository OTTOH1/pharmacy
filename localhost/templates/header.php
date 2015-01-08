<!DOCTYPE html>

<html>

    <head>
    
        <!-- Google api -->
        <script src="https://www.google.com/jsapi"></script>
        <!-- Coordinates of drugstores -->
        <script src="js/houses.js"></script>

        <link href="css/bootstrap.min.css" rel="stylesheet"/>
        <link href="css/bootstrap-theme.min.css" rel="stylesheet"/>
        <link href="css/styles.css" rel="stylesheet"/>

        <?php if (isset($title)): ?>
            <title>ECHO pharmacy: <?= htmlspecialchars($title) ?></title>
        <?php else: ?>
            <title>ECHO pharmacy</title>
        <?php endif ?>

        <script src="js/jquery-1.10.2.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/scripts.js"></script>     
         
    </head>

    <body>

        <div class="container">
                 
              <div class="navbar navbar-inverse">
                <div class="container">
                  <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
                      <span class="sr-only">Toggle navigation</span>
                      <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="login.php">ECHO pharmacy</a>
                  </div>
                  <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                      <li class="active"><a href="login.php">Home</a></li>
                      <li class="active"><a href="about.php">About</a></li>
                      <li class="active"><a href="contact.php">Contact</a></li>
                      <!--
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                          <li><a href="#">Action</a></li>
                          <li><a href="#">Another action</a></li>
                          <li><a href="#">Something else here</a></li>
                          <li class="divider"></li>
                          <li class="dropdown-header">Nav header</li>
                          <li><a href="#">Separated link</a></li>
                          <li><a href="#">One more separated link</a></li>
                        </ul>
                       -->
                      </li>
                    </ul>
                  </div><!--/.nav-collapse -->
                </div>
              </div>
      
      
      
      

            <div id="middle">
