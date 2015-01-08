<?php

    // configuration
    require("../includes/config.php");
    
    // get information from the database
    $portfolio = query("SELECT * FROM portfolio WHERE id = ?", $_SESSION["id"]);
    
    // if form was submitted
    if ($_SERVER["REQUEST_METHOD"] == "POST")
    {
        if ( empty($_POST["symbol"]) )
        {
            apologize("You must select a stock to sell.");
        }
        else
        {       
            $stock = lookup($_POST["symbol"]);
            // determine number of shares owned
            $shares = query("SELECT shares FROM portfolio WHERE id = ? AND symbol = ?", $_SESSION["id"], $_POST["symbol"]);
            
            // determine profit after selling
            $profit = $stock["price"] * $shares[0]["shares"];
            
            //provide operation
            query("DELETE FROM portfolio WHERE id = ? AND symbol = ?", $_SESSION["id"], $_POST["symbol"]);
            query("UPDATE users SET cash = cash + ? WHERE id = ?", $profit, $_SESSION["id"]);
            
            //update history
            query("INSERT INTO history (id, transaction, time, symbol, shares, price) VALUES(?, ?, NOW(), ?, ?, ?)",
                   $_SESSION["id"], "SELL", $_POST["symbol"], $shares[0]["shares"], $stock["price"]);  
                   
            // send email
            $user = query("SELECT * FROM users WHERE id = ?", $_SESSION["id"]);
            $shares = $shares[0]["shares"];
            sender($user[0]["email"], "SELL", $_POST["symbol"], $shares, $stock["price"]);  
                  
            // redirect to portfolio  
            redirect("index.php");
        }
    }
    else
    {
        // else render form
        render("sell_form.php", ["title" => "Sell", "portfolio" => $portfolio]);
    }
?>
