<?php

    // configuration
    require("../includes/config.php"); 
    
    $history = query("SELECT * FROM history WHERE id = ?", $_SESSION["id"]);
    
    // render history
    render("history.php", ["title" => "History", "history" => $history]);
  
?>
