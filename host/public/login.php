<?php
    // configuration
    require("../includes/config.php"); 

    // render main page
    $page['title'] = "Home";
    render("home.php", $page);
?>
