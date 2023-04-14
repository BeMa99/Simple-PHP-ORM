

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>ArlingtonSprouts</title>
</head>
<body style="background-color:green;color:white;">
    <div>
        <h1>Item Details</h1>
        <table>
            <tr>
                <td>iId</td>
                <td>ItemName</td>
            </tr>
            <?php
            include_once 'database.php';
            $resultPost = mysqli_query($conn,"SELECT Item.i_id as iId , Item.i_name as ItemName, Item.s_price as ItemPrice FROM  item as Item");
            while($row = mysqli_fetch_array($resultPost)) {
            ?>
            <tr>
                <td>
                <?php echo $row["iId"]; ?>
                </td> 
                <td>
                <?php echo $row["ItemName"]; ?>
                </td>
                <td>
                <a  href="UpdateItemForm.php?id=<?php echo $row["iId"]; ?>" method="POST">
                    <button id = "update" type="button" name="update" class="btn">Update</button>
                </a>
                </td>   
                <td>
                <form id="form"  action="DeleteItem.php?id=<?php echo $row["iId"]; ?>" method="POST">
                    <input id = "itemsubmit" type="submit" value="Delete" name="delete" class="btn">
                </form>
                </td>                        
            </tr>    
            <?php }?>     
        </table>
        <form id="form"  action="AddItem.php" method="POST">
            <input type="text" id="name" name="name"  size="30" placeholder="Enter Name">
            <input type="number" id="s_price" name="s_price"  size="10"  placeholder="Enter Price">
            <br/>
            <input id = "itemsubmit" type="submit" value="Submit" name="save" class="btn">
        </form>
    </div>
<div>
    <h1>Main ItemView</h1>
    <div style="display:inline-block">
    
        <table>
            <tr>
                <td>No</td>
                <td>iId</td>
                <td>ItemName</td>
                <td>ItemPrice</td>
                <td>NumberOfBoxes</td>
                <td>ItemRevenue</td>
                <td>ItemCustomers</td>
            </tr>
            <?php
            include_once 'database.php';
            $resultPost = mysqli_query($conn,"SELECT Item.i_id as iId , Item.i_name as ItemName, Item.s_price as ItemPrice, OrderItem.i_count as NumberOfBoxes, COUNT(o.c_id) ItemCustomers, VendorItem.v_price as VendorPrice, concat(Item.s_price-VendorItem.v_price) as ItemRevenue  FROM  item as Item INNER JOIN order_item oi USING (i_id) INNER JOIN orders o USING (o_id) LEFT JOIN order_item as OrderItem ON Item.i_id=OrderItem.i_id LEFT JOIN vendor_item as VendorItem ON Item.i_id=VendorItem.i_id GROUP BY o.c_id");
            $i = 0;
            while($row = mysqli_fetch_array($resultPost)) {
                $i++;
            ?>
            <tr>
                <td>
                <?php echo $i; ?>
                </td>
                <td>
                <?php echo $row["iId"]; ?>
                </td> 
                <td>
                <?php echo $row["ItemName"]; ?>
                </td> 
                <td>
                <?php echo $row["ItemPrice"]; ?>
                </td> 
                <td>
                <?php echo $row["NumberOfBoxes"]; ?>
                </td> 
                <td>
                <?php echo $row["ItemRevenue"]; ?>
                </td>         
                <td>
                <?php echo $row["ItemCustomers"]; ?>
                </td>     
            </tr>    
            <?php }?>     
        </table>

    </div>
</div>
<div>
    <div>
        <h2>QV1</h2>
    <table>
            <tr>
                <td>No</td>
                <td>iId</td>
                <td>ItemName</td>
                <td>NumberOfBoxes</td>
                <td>ItemPrice</td>
            </tr>
            <?php
            include_once 'database.php';
            $resultPost = mysqli_query($conn,"SELECT i.i_id iId , i.i_name ItemName, i.s_price ItemPrice, oi.i_count NumberOfBoxes, VendorItem.v_price as VendorPrice, concat(i.s_price-VendorItem.v_price) as ItemRevenue  FROM  item i LEFT JOIN order_item oi USING (i_id) LEFT JOIN vendor_item VendorItem USING (i_id) WHERE i.s_price > 3");
            $i = 0;
            while($row = mysqli_fetch_array($resultPost)) {
                $i++;
            ?>
            <tr>
                <td>
                <?php echo $i; ?>
                </td>
                <td>
                <?php echo $row["iId"]; ?>
                </td> 
                <td>
                <?php echo $row["ItemName"]; ?>
                </td> 
                
                <td>
                <?php echo $row["NumberOfBoxes"]; ?>
                </td> 
                <td>
                <?php echo $row["ItemPrice"]; ?>
                </td>
                         
            </tr>    
            <?php }?>     
        </table>

    </div>
</div>
<div>
    <div>
        <h2>QV2</h2>
    <table>
            <tr>
                <td>No</td>
                
                <td>ItemName</td>
                
                <td>MinItemRevenue</td>
            </tr>
            <?php
            include_once 'database.php';
            $resultPost = mysqli_query($conn,"SELECT Item.i_id as iId , Item.i_name as ItemName, Item.s_price as ItemPrice, OrderItem.i_count as NumberOfBoxes, VendorItem.v_price as VendorPrice, concat(Item.s_price-VendorItem.v_price) as ItemRevenue  FROM  item as Item LEFT JOIN order_item as OrderItem ON Item.i_id=OrderItem.i_id LEFT JOIN vendor_item as VendorItem ON Item.i_id=VendorItem.i_id");
            $i = 0;
            while($row = mysqli_fetch_array($resultPost)) {
                if ($row["ItemRevenue"]==0){
                $i++;
            ?>
            <tr>
                <td>
                <?php echo $i; ?>
                </td>
                <td>
                <?php echo $row["ItemName"]; ?>
                </td> 
                <td>
                <?php echo $row["ItemRevenue"]; ?>
                </td>           
            </tr>    
            <?php }}?>     
        </table>

    </div>
</div>
<div>
    <div>
        <h2>QV3</h2>
        <table>
            <tr>
                <td>No</td>
                
                <td>MinRevenue</td>
                <td>MaxRevenue</td>
                <td>AvgItemRevenue</td>
            </tr>
            <?php
            include_once 'database.php';
            $resultPost = mysqli_query($conn,"SELECT Item.i_id as iId , Item.i_name as ItemName, Item.s_price as ItemPrice, OrderItem.i_count as NumberOfBoxes, VendorItem.v_price as VendorPrice, MIN(concat(Item.s_price-VendorItem.v_price)) as MinRevenue, MAX(concat(Item.s_price-VendorItem.v_price)) as MaxRevenue, AVG(concat(Item.s_price-VendorItem.v_price)) as AvgItemRevenue  FROM  item as Item LEFT JOIN order_item as OrderItem ON Item.i_id=OrderItem.i_id LEFT JOIN vendor_item as VendorItem ON Item.i_id=VendorItem.i_id");
            $i = 0;
            while($row = mysqli_fetch_array($resultPost)) {
                
                $i++;
            ?>
            <tr>
                <td>
                <?php echo $i; ?>
                </td>
                <td>
                <?php echo $row["MinRevenue"]; ?>
                </td> 
                <td>
                <?php echo $row["MaxRevenue"]; ?>
                </td>
                <td>
                <?php echo $row["AvgItemRevenue"]; ?>
                </td>           
            </tr>    
            <?php }?>     
        </table>

    </div>
</div>
<div>
    <div>
        <h2>QV4</h2>
        <h3>Part 1</h3>
        <table>
            <tr>
                <td>No</td>
                
                <td>ItemName</td>
                <td>ItemCustomers</td>
                
            </tr>
            <?php
            include_once 'database.php';
            $resultPost = mysqli_query($conn,"SELECT i.i_id iId , i.i_name ItemName, i.s_price ItemPrice, COUNT(o.c_id) ItemCustomers, oi.o_id NumberOfBoxes FROM item i INNER JOIN order_item oi USING (i_id) INNER JOIN orders o USING (o_id) GROUP BY o.c_id ORDER BY i.i_name ASC;");
            $i = 0;
            while($row = mysqli_fetch_array($resultPost)) {
                
                $i++;
            ?>
            <tr>
                <td>
                <?php echo $i; ?>
                </td>
                <td>
                <?php echo $row["ItemName"]; ?>
                </td> 
                <td>
                <?php echo $row["ItemCustomers"]; ?>
                </td>
                           
            </tr>    
            <?php }?>     
        </table>
        <h3>Part 2</h3>
        <table>
            <tr>
                <td>No</td>
                
                <td>ItemName</td>
                <td>ItemCustomers</td>
                
            </tr>
            <?php
            include_once 'database.php';
            $resultPost = mysqli_query($conn,"SELECT i.i_id iId , i.i_name ItemName, i.s_price ItemPrice, COUNT(o.c_id) ItemCustomers, oi.o_id NumberOfBoxes FROM item i INNER JOIN order_item oi USING (i_id) INNER JOIN orders o USING (o_id) GROUP BY o.c_id ORDER BY COUNT(o.c_id) DESC;");
            $i = 0;
            while($row = mysqli_fetch_array($resultPost)) {
                
                $i++;
            ?>
            <tr>
                <td>
                <?php echo $i; ?>
                </td>
                <td>
                <?php echo $row["ItemName"]; ?>
                </td> 
                <td>
                <?php echo $row["ItemCustomers"]; ?>
                </td>
                           
            </tr>    
            <?php }?>     
        </table>
    </div>
</div>
<div>
    <div>
        <h2>QV5</h2>
    <table>
            <tr>
                <td>No</td>
                <td>TotalRevenue</td>
                <td>TotalNumberOfBoxes</td>
                <td>AvgRevenue/Box</td>
            </tr>
            <?php
            include_once 'database.php';
            $resultPost = mysqli_query($conn,"SELECT Item.i_id as iId , Item.i_name as ItemName, Item.s_price as ItemPrice, SUM(OrderItem.i_count) as TotalNumberOfBoxes, VendorItem.v_price as VendorPrice, SUM(concat(Item.s_price-VendorItem.v_price)) as TotalRevenue, AVG(concat(Item.s_price-VendorItem.v_price)) as AvgRevenuePerBox  FROM  item as Item LEFT JOIN order_item as OrderItem ON Item.i_id=OrderItem.i_id LEFT JOIN vendor_item as VendorItem ON Item.i_id=VendorItem.i_id");
            $i = 0;
            while($row = mysqli_fetch_array($resultPost)) {
                $i++;
            ?>
            <tr>
                <td>
                <?php echo $i; ?>
                </td>
                 
                <td>
                <?php echo $row["TotalRevenue"]; ?>
                </td> 
                
                <td>
                <?php echo $row["TotalNumberOfBoxes"]; ?>
                </td> 
                <td>
                <?php echo $row["AvgRevenuePerBox"]; ?>
                </td>           
            </tr>    
            <?php }?>     
        </table>

    </div>
</div>
</body>
</html>