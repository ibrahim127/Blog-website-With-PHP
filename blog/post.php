<?php include "inc/header.php"; ?>
<?php
if (!isset($_GET['id']) || $_GET['id'] == NULL) {
	header("Location: 404.php");
}else{
	$id = $_GET['id'];
}

?>

	<div class="contentsection contemplete clear">
			<?php include "inc/sidebar.php"; ?>

		<div class="maincontent clear">



			<?php

			$query = "select * from tbl_post where id = $id";
			$post = $db->select($query);
			if($post){
			while($result = $post->fetch_assoc()){

		?>

			<div class="about">
				<h2><?php echo $result["title"];?></h2>
				<h4><?php echo $fm->formateDate( $result["date"]);?>, By Delowar</h4>
				<img src="admin/upload/<?php echo $result["image"];?>" alt="post image"/>
				<?php echo $result["body"];?>
				<!--End of while loop-->

		
				<div class="relatedpost clear">


					<h2>Related articles</h2>


					<?php 

						$catid = $result['cat'];
						$queryRealated = "select * from tbl_post where cat = '$catid' order by rand() limit 6";
				$relatedPost = $db->select($queryRealated);
				if($relatedPost){
				while($rresult = $relatedPost->fetch_assoc()){

					?>
					<a href="post.php?id=<?php echo $rresult["id"];?>"><img src="admin/upload/<?php echo $rresult["image"];?>" alt="post image"/></a>
					<?php } } else{ echo "No Related Post";}?>
				</div>


				<?php } } else { header("Location: 404.php"); }?>
	</div>

		</div>
		<?php include "inc/footer.php"; ?>