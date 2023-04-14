<form id="form"  action="UpdateItem.php?id=<?php echo $_GET['id'] ?>" method="POST">
    <input type="text" id="name" name="name"  size="30" placeholder="Enter Name">
    <input type="number" id="s_price" name="s_price"  size="10"  placeholder="Enter Price">
    <br/>
    <input id = "itemsubmit" type="submit" value="Submit" name="save" class="btn">
</form>