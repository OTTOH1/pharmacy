<?php

    // configuration
    require("../includes/config.php");

    // if form was submitted
    if ($_SERVER["REQUEST_METHOD"] == "POST")
    {
        if ( empty($_POST["name"]) || empty($_POST["familyName"]) )
        {
            apologize("You should enter your name and family.");  
        }
        if ( empty($_POST["email"]) || empty($_POST["phone"]) )
        {
            apologize("You should enter your email and phone.");
        }
        if ( empty($_POST["drug"]) )
        {    
            apologize("You should specify the medicine that you want to order.");
        } 
        else 
        {
            // send email
            senderToUser($_POST["email"], $_POST["drug"]);  
            senderToManager($_POST["email"], $_POST["drug"], $_POST["name"], $_POST["familyName"], $_POST["phone"]); 
                   
            render("thanks.php", ["message" => "Thank you for your order. Our manager will contact you shortly."]);
        }
    }
    else
    {
        // else render form
        render("order_form.php", ["title" => "Order"]);
    }
?>
