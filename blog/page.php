<?php include "inc/header.php"; ?>
 <?php

    if (!isset($_GET['pageid']) || $_GET['pageid'] == NULL) {
        echo "<script>window.location='404.php'</script>";
       // header("Location:catlist.php");
    }else{
        $id = $_GET['pageid'];
    }

    ?>

	<div class="contentsection contemplete clear">

		<?php include "inc/sidebar.php" ?>

		<div class="maincontent clear" >
			<div class="about">
           <?php
               $query = "SELECT * FROM tbl_page where id = '$id'";
               $pages = $db->select($query);
              if ($pages) {
                     while ($result = $pages->fetch_assoc()) {   
           ?>
				<h2><?php echo $result['name']; ?></h2>
	
				<?php echo $result['body']; ?>

	</div>

		</div>
			<?php
 } }else{
 	header('Location:404.php');
 }
	?>
		<?php include "inc/footer.php"?>