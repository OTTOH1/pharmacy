<table class="table table-striped">
    <thead>
        <tr>
            <th>Transaction</th>
            <th>Date/Time</th>
            <th>Symbol</th>
            <th>Shares</th>
            <th>Price</th>
        </tr>
    </thead>   
    <tbody>
    <?php
    
        foreach ($history as $position)
        {
            print("<tr>");
            print("<td>{$position["transaction"]}</td>");
            print("<td>{$position["time"]}</td>");
            print("<td>{$position["symbol"]}</td>");
            print("<td>{$position["shares"]}</td>");
            print("<td>".number_format($position["price"], 2)."$</td>");
            print("</tr>");
        }

    ?>
    </tbody>
</table>

