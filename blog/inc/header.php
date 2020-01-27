<?php include "config/config.php";?>
<?php include "lib/Database.php";?>
<?php include "helpers/Formate.php";?>

<?php  	
$db = new Database();
$fm = new Formate();
?>

<!DOCTYPE html>
<html>
<head>
	<?php 
	if (isset($_GET['id'])) {
		$pagetitleid = $_GET['id'];
		$query = "SELECT * FROM tbl_page where id = '$pagetitleid'";
        $pages = $db->select($query);
        if ($pages) {
       while ($result = $pages->fetch_assoc()) { 
       	?>
       	<title><?php echo $result['name'];?> | <?php echo TITLE;?></title>
 <?php
		 }
		}
	}else{
		?>
		<title><?php echo $fm->title();?> | <?php echo TITLE;?></title>
<?php
	}
	?>
	
	<meta name="language" content="English">
	<meta name="description" content="It is a website about education">
<?php
if (isset($_GET['id'])) {
	$id = $_GET['id'];
	$query = "SELECT * FROM tbl_post where id = '$id'";
	$keywords = $db->select($query);
	if ($keywords) {
		while ($result = $keywords->fetch_assoc()) {
?>
			<meta name="keywords" content="<?php echo $result['tags'];?>">
<?php
	} } }else{ 
?>

	<meta name="keywords" content="<?php echo KEYWORDS;?>">

<?php	
 }
?>


	<meta name="author" content="ibrahim">
	<link rel="stylesheet" href="font-awesome-4.5.0/css/font-awesome.css">	
	<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="style.css">
	<script src="js/jquery.js" type="text/javascript"></script>
	<script src="js/jquery.nivo.slider.js" type="text/javascript"></script>
<style >
.headersection {
  background: #ca932f none repeat scroll 0 0;
  color: #2a2424;
}
.icon a {
  background: #a56e0a none repeat scroll 0 0;
  border-radius: 2px;
  color: #fff;
  display: block;
  float: right;
  font-size: 20px;
  margin-right: 13px;
  padding: 5px 10px;
}
.social {
  float: right;
  margin-right: 20px;
  margin-top: -68px;
  text-align: right;
  width: 360px;
}


.pagination{
display: block;
font-size: 20px;
margin-top: 10px;
text-align: center;
padding:10px;
}
.pagination a{
	background: #e6af4b none repeat scroll 0 0;
	border: 1px solid #a7700c;
	border-radius: 3px;
	color:#333;
	margin-left: 2px;
	padding: 2px 10px;
	text-decoration: none;
}
.pagination a:hover{
	background: #be8723 none repeat scroll 0 0;
	color:#fff;
	}

</style>
<script type="text/javascript">
$(window).load(function() {
	$('#slider').nivoSlider({
		effect:'random',
		slices:10,
		animSpeed:500,
		pauseTime:5000,
		startSlide:0, //Set starting Slide (0 index)
		directionNav:false,
		directionNavHide:false, //Only show on hover
		controlNav:false, //1,2,3...
		controlNavThumbs:false, //Use thumbnails for Control Nav
		pauseOnHover:true, //Stop animation while hovering
		manualAdvance:false, //Force manual transitions
		captionOpacity:0.8, //Universal caption opacity
		beforeChange: function(){},
		afterChange: function(){},
		slideshowEnd: function(){} //Triggers after all slides have been shown
	});
});
</script>
</head>

<body>
	<div class="headersection templete clear">
		<a href="index.php">
			 
			<div class="logo">
				 <?php
                $query = "SELECT * FROM title_slogan where id = '1'";
                $blog_title = $db->select($query);
                if ($blog_title) {
                    while ($result = $blog_title->fetch_assoc()) {
                        
                ?> 
              
				<img src="admin/<?php echo $result['logo'];?>" alt="Logo"/>
				<h2><?php echo $result['title'];?></h2>
				<p><?php echo $result['slogan'];?></p>
				<?php } } ?>
			</div>
			
		</a>
		<div class="social clear">
			<div class="icon clear">
				 
                <div class="block">  
                <?php
                $query = "SELECT * FROM  tbl_social where id = '1'";
                $socilamedia = $db->select($query);
                if ($socilamedia) {
                    while ($result = $socilamedia->fetch_assoc()) {       
                ?> 
				<a href="<?php echo $result['fb'];?>" target="_blank"><i class="fa fa-facebook"></i></a>
				<a href="<?php echo $result['tw'];?>" target="_blank"><i class="fa fa-twitter"></i></a>
				<a href="<?php echo $result['ln'];?>" target="_blank"><i class="fa fa-linkedin"></i></a>
				<a href="<?php echo $result['gp'];?>" target="_blank"><i class="fa fa-google-plus"></i></a>
				<?php
				} }
				?>
			</div>
			<div class="searchbtn clear">
			<form action="search.php" method="get">
				<input type="text" name="search" placeholder="Search keyword..."/>
				<input type="submit" name="submit" value="Search"/>
			</form>
			</div>
		</div>
	</div>
<div class="navsection templete">
	<?php
	$path = $_SERVER['SCRIPT_FILENAME'];
	$currentpage = basename($path, '.php');
	?>
	<ul>
		<li><a <?php if ($currentpage == 'index') {
				echo 'id="active"';}?> href="index.php">Home</a></li>
		     <?php
                $query = "SELECT * FROM tbl_page";
                $pages = $db->select($query);
                if ($pages) {
                 while ($result = $pages->fetch_assoc()) {   
               ?> 
            	<li><a 
            		<?php 
            		if (isset($_GET['pageid']) && $_GET['pageid'] == $result['id']) {
            			echo 'id="active"';
            		}
            		?>
            		href="page.php?pageid=<?php   echo $result['id'];?>"><?php   echo $result['name'];?></a></li>
            <?php  } } ?>
		<li><a  <?php if ($currentpage == 'contact') {
				echo 'id="active"';}?> href="contact.php">Contact</a></li>
	</ul>
</div>